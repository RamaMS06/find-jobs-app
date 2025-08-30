import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/features/task/data/datasources/task.datasource.dart';
import 'package:find_job_app/features/task/data/models/task.model.dart';
import 'package:find_job_app/features/task/domain/entities/add.task.entity.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:intl/intl.dart';

class TaskDataSourceImpl implements TaskDataSource {
  final _firestore = sl<FirebaseFirestore>();

  // Returns a stream of tasks for a given date and user
  @override
  Stream<List<TaskModel?>> getTasks(DateTime date, String userId) {
    final dateKey = DateFormat('yyyy-MM-dd').format(date);
    try {
      return _firestore
          .collection('users')
          .doc(userId)
          .collection('tasks')
          .where('dateKey', isEqualTo: dateKey)
          .snapshots()
          .map((snapshot) {
        try {
          final tasks = snapshot.docs
              .map<TaskModel?>((doc) => TaskModel.fromJson(doc.data()))
              .toList();

          // Sort ascending by the startTime (or another datetime field)
          tasks.sort((a, b) {
            final aTime = a?.startTime;
            final bTime = b?.startTime;
            if (aTime == null && bTime == null) return 0;
            if (aTime == null) return 1;
            if (bTime == null) return -1;
            return aTime.compareTo(bTime);
          });

          return tasks;
        } catch (e, stack) {
          log('Error in getTasks: $e\n$stack');
          return <TaskModel?>[];
        }
      });
    } catch (e, stack) {
      log('Error in getTasks stream: $e\n$stack');
      // Return an empty stream in case of error
      return Stream.value(<TaskModel?>[]);
    }
  }

  // Returns a stream of all unique dates that have tasks for a user
  @override
  Stream<List<DateTime>> getDates(String userId) {
    try {
      return _firestore
          .collection('users')
          .doc(userId)
          .collection('tasks')
          .snapshots()
          .map((snapshot) {
        try {
          final dateKeys = snapshot.docs
              .map((doc) => doc.data()['dateKey'] as String?)
              .where((dateKey) => dateKey != null)
              .toSet()
              .toList();
          return dateKeys.map<DateTime>((key) => DateTime.parse(key!)).toList();
        } catch (e, stack) {
          log('Error in getDates: $e\n$stack');
          return <DateTime>[];
        }
      });
    } catch (e, stack) {
      log('Error in getDates stream: $e\n$stack');
      // Return an empty stream in case of error
      return Stream.value(<DateTime>[]);
    }
  }

  // Adds a task and returns a stream with the task id (or error)
  @override
  Stream<String> addTask(
      DateTime currentDate, AddTaskEntity task, String userId) async* {
    final dateKey = DateFormat('yyyy-MM-dd').format(currentDate);
    try {
      final taskId = task.id ?? _generateTaskId();
      final taskWithId = AddTaskEntity(
        id: taskId,
        title: task.title,
        desc: task.desc,
        startTime: task.startTime,
        estimatedInMinutes: task.estimatedInMinutes,
        finishTime: task.finishTime,
        isDone: task.isDone ?? false,
      );

      await _firestore
          .collection('users')
          .doc(userId)
          .collection('tasks')
          .doc(taskId)
          .set({
        ...taskWithId.toJson(),
        'dateKey': dateKey,
      });

      yield 'Task added successfully';
    } catch (e) {
      yield 'Error: ${e.toString()}';
    }
  }

  String _generateTaskId() {
    return 'task_${DateTime.now().millisecondsSinceEpoch}_${(DateTime.now().microsecond % 1000)}';
  }

  // Updates the task status in Firestore
  @override
  Future<void> updateTask(String userId, String taskId, TaskEntity task) async {
    final docRef = _firestore
        .collection('users')
        .doc(userId)
        .collection('tasks')
        .doc(taskId);
    try {
      await docRef.update(task.toJson());
    } catch (e) {
      throw Exception('Failed to update task: $e');
    }
  }

  @override
  Future<void> deleteTask(String userId, String taskId) async {
    final docRef = _firestore
        .collection('users')
        .doc(userId)
        .collection('tasks')
        .doc(taskId);

    try {
      await docRef.delete();
    } catch (e) {
      throw Exception('Failed to delete task: $e');
    }
  }
}

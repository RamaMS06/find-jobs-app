import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:find_job_app/core/services/injection.container.dart';
import 'package:find_job_app/core/services/result.dart';
import 'package:find_job_app/features/task/data/datasources/task.datasource.dart';
import 'package:find_job_app/features/task/data/models/task.model.dart';
import 'package:find_job_app/features/task/domain/entities/task.entity.dart';
import 'package:intl/intl.dart';

class TaskDataSourceImpl implements TaskDataSource {
  final _firebaseFirestore = sl<FirebaseFirestore>();

  @override
  Future<Result<List<TaskModel?>>> getTasks(DateTime date) async {
    final ref = _firebaseFirestore
        .collection('tasks')
        .doc(DateFormat('yyyy-MM-dd').format(date));

    try {
      final querySnapshot = await ref.get();
      final dataList = (querySnapshot.data()?['data'] as List<dynamic>? ?? []);
      final tasks = dataList
          .map<TaskModel?>(
              (item) => TaskModel.fromJson(item as Map<String, dynamic>))
          .toList();
      return Result.success(tasks);
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
  
  @override
  Future<Result<String>> addTask(TaskEntity task) async {
    final ref = _firebaseFirestore
        .collection('tasks')
        .doc(DateFormat('yyyy-MM-dd').format(task.date!));

    try {
      await ref.set({
        'data': FieldValue.arrayUnion([task.toJson()])
      });
      return const Result.success('Task added successfully');
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}

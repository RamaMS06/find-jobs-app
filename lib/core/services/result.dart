import 'package:equatable/equatable.dart';

sealed class Result<T> extends Equatable {
  const Result({this.statusCode});

  final int? statusCode;

  const factory Result.success(T value, {int? statusCode}) = Success<T>;
  const factory Result.loading({int? statusCode}) = Loading<T>;
  const factory Result.failure(String message, {int? statusCode}) = Failed<T>;
  const factory Result.initial({int? statusCode}) = Initial<T>;

  bool get isSuccess => this is Success;
  bool get isLoading => this is Loading;
  bool get isFailure => this is Failed;
  bool get isIdle => this is Initial;

  T? get valueOrNull => this is Success ? (this as Success).value : null;

  String? get messageOrNull => this is Failed ? (this as Failed).message : null;

  R when<R>({
    required R Function(T value) success,
    required R Function()? loading,
    required R Function(String message)? failed,
    R Function()? initial,
  }) {
    switch (this) {
      case Success<T>():
        return success.call((this as Success).value);
      case Loading<T>():
        return loading != null
            ? loading()
            : throw StateError('No loading handler provided');
      case Failed<T>():
        return failed != null
            ? failed((this as Failed).message)
            : throw StateError('No failed handler provided');
      case Initial<T>():
        return initial != null
            ? initial()
            : throw StateError('No idle handler provided');
    }
  }

  @override
  List<Object?> get props => [statusCode];
}

class Success<T> extends Result<T> {
  final T value;
  const Success(this.value, {super.statusCode});
}

class Loading<T> extends Result<T> {
  const Loading({super.statusCode});
}

class Failed<T> extends Result<T> {
  final String message;

  const Failed(this.message, {super.statusCode});

  @override
  List<Object?> get props => [message, statusCode];
}

class Initial<T> extends Result<T> {
  const Initial({super.statusCode});
}

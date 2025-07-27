sealed class Result<T> {
  const Result({this.statusCode});

  final int? statusCode;

  const factory Result.success(T value, {int? statusCode}) = Success<T>;
  const factory Result.loading({int? statusCode}) = Loading<T>;
  const factory Result.failure(String message, {int? statusCode}) = Failed<T>;
  const factory Result.idle({int? statusCode}) = Idle<T>;

  bool get isSuccess => this is Success;
  bool get isLoading => this is Loading;
  bool get isFailure => this is Failed;
  bool get isIdle => this is Idle;

  T? get valueOrNull => this is Success ? (this as Success).value : null;

  String? get messageOrNull => this is Failed ? (this as Failed).message : null;

  R? when<R>({
    required R Function(T value) success,
    R Function()? loading,
    R Function(String message)? failed,
    R Function()? idle,
  }) {
    if (this is Success) {
      return success((this as Success).value);
    } else if (this is Loading) {
      return loading?.call();
    } else if (this is Failed) {
      return failed?.call((this as Failed).message);
    } else if (this is Idle) {
      return idle?.call();
    }
    return null;
  }
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
}

class Idle<T> extends Result<T> {
  const Idle({super.statusCode});
}

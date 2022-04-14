import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.f.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const Result._();
  const factory Result.success(T data) = Success;
  const factory Result.fail(Exception exception) = Fail;

  T? takeIfSuccess() {
    final self = (this is Success ? this : null) as Success?;
    return self?.data;
  }

  T takeSuccess() {
    return (this as Success).data;
  }

  Exception? takeIfError() {
    final self = (this is Fail ? this : null) as Fail?;
    return self?.exception;
  }

  Exception takeError() {
    return (this as Fail).exception;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recognition_result.freezed.dart';
part 'recognition_result.g.dart';

@freezed
class RecognitionResult with _$RecognitionResult {
  const RecognitionResult._();
  factory RecognitionResult(
    bool success,
    List<String>? results,
  ) = _RecognitionResult;

  factory RecognitionResult.fromJson(Map<String, dynamic> json) =>
      _$RecognitionResultFromJson(json);
}

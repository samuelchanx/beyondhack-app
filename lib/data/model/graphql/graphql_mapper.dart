import 'package:intl/intl.dart';

import 'jsonb.dart';
export 'jsonb.dart';

final dateFormatter = DateFormat('yyyy-MM-dd');
final timeFormatter = DateFormat('HH:mm:ss');

// DateTime
DateTime? fromGraphQLDateNullableToDartDateTimeNullable(String? date) {
  return date != null ? fromGraphQLDateToDartDateTime(date) : null;
}

String? fromDartDateTimeNullableToGraphQLDateNullable(DateTime? date) {
  return date != null ? fromDartDateTimeToGraphQLDate(date) : null;
}

DateTime fromGraphQLDateToDartDateTime(String date) {
  return DateTime.parse(date);
}

String fromDartDateTimeToGraphQLDate(DateTime date) {
  return dateFormatter.format(DateTime(date.year, date.month, date.day));
}

// Timestamp
DateTime? fromGraphQLTimestamptzNullableToDartDateTimeNullable(String? time) {
  return time == null ? null : fromGraphQLTimestamptzToDartDateTime(time);
}

DateTime? fromGraphQLTimestampNullableToDartDateTimeNullable(String? time) {
  return time == null ? null : fromGraphQLTimestamptzToDartDateTime(time);
}

String? fromDartDateTimeNullableToGraphQLTimestampNullable(DateTime? date) {
  return date == null ? null : fromDartDateTimeToGraphQLTimestamptz(date);
}

String? fromDartDateTimeNullableToGraphQLTimestamptzNullable(DateTime? date) {
  return date == null ? null : fromDartDateTimeToGraphQLTimestamptz(date);
}

DateTime fromGraphQLTimestamptzToDartDateTime(String time) {
  return DateTime.tryParse(time)?.toLocal() ?? DateTime.now();
}

String fromDartDateTimeToGraphQLTimestamptz(DateTime date) {
  return date.toUtc().toIso8601String();
}

DateTime fromGraphQLTimestampToDartDateTime(String time) {
  return DateTime.parse(time).toLocal();
}

String fromDartDateTimeToGraphQLTimestamp(DateTime date) {
  return date.toUtc().toIso8601String();
}

// Time
DateTime? fromGraphQLTimeNullableToDartDateTimeNullable(String? time) {
  return time == null ? null : fromGraphQLTimeToDartDateTime(time);
}

String? fromDartDateTimeNullableToGraphQLTimeNullable(DateTime? date) {
  return date == null ? null : fromDartDateTimeToGraphQLTime(date);
}

DateTime fromGraphQLTimeToDartDateTime(String time) {
  final dateTime = DateFormat('yyyy-MM-dd').format(DateTime.now()) + 'T' + time;
  return DateTime.tryParse(dateTime) ?? DateTime.now();
}

String fromDartDateTimeToGraphQLTime(DateTime date) {
  final time = date;
  return "${time.hour}:${time.minute}:${time.second}.${time.millisecond}";
}

List<DateTime>? fromGraphQLListNullableTimestamptzToDartListNullableDateTime(List<String?> lists) {
  if (lists.any((element) => element == null)) {
    return null;
  }
  return lists.map((e) => fromGraphQLTimestamptzNullableToDartDateTimeNullable(e)!).toList();
}

List<String>? fromDartListNullableDateTimeToGraphQLListNullableTimestamptz(List<DateTime>? times) {
  if (times == null) {
    return null;
  }
  return times.map((e) => fromDartDateTimeNullableToGraphQLTimestamptzNullable(e)!).toList();
}

List<DateTime>? fromGraphQLListNullableDateToDartListNullableDateTime(List<String?> lists) =>
    fromGraphQLListNullableTimestamptzToDartListNullableDateTime(lists);

List<String>? fromDartListNullableDateTimeToGraphQLListNullableDate(List<DateTime>? times) =>
    fromDartListNullableDateTimeToGraphQLListNullableTimestamptz(times);

Json fromGraphQLJsonbToDartJson(dynamic data) {
  return Json.fromDynamic(data);
}

dynamic fromDartJsonToGraphQLJsonb(Json data) =>
    data.map ?? data.stringList ?? data.listOfMap ?? [];

Json? fromGraphQLJsonbNullableToDartJsonNullable(dynamic data) {
  return Json.fromDynamic(data);
}

dynamic fromDartJsonNullableToGraphQLJsonbNullable(Json? data) =>
    data?.map ?? data?.stringList ?? data?.listOfMap;

List<Json>? fromGraphQLListNullableJsonbToDartListNullableJson(dynamic data) {
  return (data as List?)?.map((e) => fromGraphQLJsonbToDartJson(e)).toList() ?? [];
}

List<dynamic> fromDartListNullableJsonToGraphQLListNullableJsonb(List<Json>? data) => data ?? [];

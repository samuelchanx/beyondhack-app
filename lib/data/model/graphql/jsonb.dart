import 'dart:collection';
import 'package:dartx/dartx.dart';

class Json {
  const Json({
    this.map,
    this.stringList,
    this.listOfMap,
  });

  factory Json.fromDynamic(dynamic data) {
    if (data is Map || data is LinkedHashMap) {
      return Json(
        map: Map<String, dynamic>.from(data),
      );
    } else if (data is List) {
      if (data.firstOrNull is Map) {
        return Json(
          listOfMap: data.map((e) => Map<String, dynamic>.from(e)).toList(),
        );
      }
      return Json(
        stringList: data.map((e) => e.toString()).toList(),
      );
    }
    return const Json();
  }

  final List<String>? stringList;
  final Map<String, dynamic>? map;
  final List<Map<String, dynamic>>? listOfMap;

  bool get hasData => (stringList ?? map ?? listOfMap) != null;

  String? get firstOrNull => stringList?.firstOrNull;
}

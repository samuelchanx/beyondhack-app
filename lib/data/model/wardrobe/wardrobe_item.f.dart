import 'package:freezed_annotation/freezed_annotation.dart';

part 'wardrobe_item.f.freezed.dart';
part 'wardrobe_item.f.g.dart';

@freezed
class WardrobeItem with _$WardrobeItem {
  const WardrobeItem._();
  factory WardrobeItem(
    int id,
    String imageId,
  ) = _WardrobeItem;

  factory WardrobeItem.fromJson(Map<String, dynamic> json) => _$WardrobeItemFromJson(json);
}

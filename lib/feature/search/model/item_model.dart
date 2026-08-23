import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
abstract class ItemModel with _$ItemModel {
  factory ItemModel({
    required int itemID,
    required String itemName,
    required double itemPrice,
    required String restaurantName,
    required int restaurantID,
    required String imageUrl,
  }) = _ItemModel;
  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mentorship_4/feature/search/model/item_model.dart';
part 'cart_item_model.freezed.dart';

@freezed
abstract class CartItemModel with _$CartItemModel {
  factory CartItemModel({required ItemModel orderItem, required int quantity}) = _CartItemModel;
}

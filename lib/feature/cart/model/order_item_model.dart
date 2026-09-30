
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_item_model.freezed.dart';
part 'order_item_model.g.dart';
@freezed
abstract class OrderItemModel with _$OrderItemModel {
  factory OrderItemModel({
    required int orderID,
    required String itemName,
    required int quantity,
    required double itemPrice,
    required double totalPrice,
    required int masterID,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) => _$OrderItemModelFromJson(json);
}
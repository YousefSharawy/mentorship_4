import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mentorship_4/feature/cart/model/order_item_model.dart';
part 'order_response_model.freezed.dart';
part 'order_response_model.g.dart';

@freezed
abstract class OrderResponseModel with _$OrderResponseModel {
  factory OrderResponseModel({required List<OrderItemModel> fullorder, required double grandTotal}) =
      _OrderResponseModel;

  factory OrderResponseModel.fromJson(Map<String, dynamic> json) => _$OrderResponseModelFromJson(json);
}

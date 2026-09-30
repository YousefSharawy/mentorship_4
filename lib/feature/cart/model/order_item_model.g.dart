// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      orderID: (json['orderID'] as num).toInt(),
      itemName: json['itemName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      itemPrice: (json['itemPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      masterID: (json['masterID'] as num).toInt(),
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'orderID': instance.orderID,
      'itemName': instance.itemName,
      'quantity': instance.quantity,
      'itemPrice': instance.itemPrice,
      'totalPrice': instance.totalPrice,
      'masterID': instance.masterID,
    };

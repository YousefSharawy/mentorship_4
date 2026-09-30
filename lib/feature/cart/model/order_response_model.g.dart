// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderResponseModel _$OrderResponseModelFromJson(Map<String, dynamic> json) =>
    _OrderResponseModel(
      fullorder: (json['fullorder'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      grandTotal: (json['grandTotal'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderResponseModelToJson(_OrderResponseModel instance) =>
    <String, dynamic>{
      'fullorder': instance.fullorder,
      'grandTotal': instance.grandTotal,
    };

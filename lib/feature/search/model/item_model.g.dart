// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemModel _$ItemModelFromJson(Map<String, dynamic> json) => _ItemModel(
  itemID: (json['itemID'] as num).toInt(),
  itemName: json['itemName'] as String,
  itemPrice: (json['itemPrice'] as num).toDouble(),
  restaurantName: json['restaurantName'] as String,
  restaurantID: (json['restaurantID'] as num).toInt(),
  imageUrl: json['imageUrl'] as String,
);

Map<String, dynamic> _$ItemModelToJson(_ItemModel instance) =>
    <String, dynamic>{
      'itemID': instance.itemID,
      'itemName': instance.itemName,
      'itemPrice': instance.itemPrice,
      'restaurantName': instance.restaurantName,
      'restaurantID': instance.restaurantID,
      'imageUrl': instance.imageUrl,
    };

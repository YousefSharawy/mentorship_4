// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resturant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResturantModel _$ResturantModelFromJson(Map<String, dynamic> json) =>
    _ResturantModel(
      restaurantID: (json['restaurantID'] as num).toInt(),
      restaurantName: json['restaurantName'] as String,
      address: json['address'] as String,
      type: json['type'] as String,
      parkingLot: json['parkingLot'] as bool,
    );

Map<String, dynamic> _$ResturantModelToJson(_ResturantModel instance) =>
    <String, dynamic>{
      'restaurantID': instance.restaurantID,
      'restaurantName': instance.restaurantName,
      'address': instance.address,
      'type': instance.type,
      'parkingLot': instance.parkingLot,
    };

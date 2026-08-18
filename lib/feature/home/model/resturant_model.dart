import 'package:freezed_annotation/freezed_annotation.dart';
part 'resturant_model.freezed.dart';
part 'resturant_model.g.dart';

@freezed
abstract class ResturantModel with _$ResturantModel {
  factory ResturantModel({
    required int restaurantID,
    required String restaurantName,
    required String address,
    required String type,
    required bool parkingLot,
  }) = _ResturantModel;
  factory ResturantModel.fromJson(Map<String, dynamic> json) => _$ResturantModelFromJson(json);
}

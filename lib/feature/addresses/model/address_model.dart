import 'package:freezed_annotation/freezed_annotation.dart';
part 'address_model.freezed.dart';

@freezed
abstract class AddressModel with _$AddressModel {
  factory AddressModel({
    required String address,
    required String street,
    required int postCode,
    required int appartment,
    required String requiredLabel,
  }) = _AddressModel;
}
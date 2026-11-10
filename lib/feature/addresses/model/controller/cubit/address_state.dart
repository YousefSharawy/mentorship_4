part of 'address_cubit.dart';

@freezed
abstract class AddressState with _$AddressState {
  const factory AddressState({@Default([]) List<AddressModel>addresses}) =_AddressState;
}

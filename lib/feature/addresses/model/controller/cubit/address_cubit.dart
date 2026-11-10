import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/feature/addresses/model/address_model.dart';

part 'address_state.dart';
part 'address_cubit.freezed.dart';
@injectable
class AddressCubit extends Cubit<AddressState> {
  AddressCubit() :  super(const AddressState());
  void addAdress({
    required String address,
    required String street,
    required int postCode,
    required int appartment,
    required String requiredLabel,
  }) {
    emit(
      state.copyWith(
        addresses: [
          ...state.addresses,
          AddressModel(
            address: address,
            street: street,
            postCode: postCode,
            appartment: appartment,
            requiredLabel: requiredLabel,
          ),
        ],
      ),
    );
  }
}

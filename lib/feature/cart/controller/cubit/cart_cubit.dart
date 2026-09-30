import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/netwrok/api_services.dart';
import 'package:mentorship_4/core/storage/app_storage.dart';
import 'package:mentorship_4/feature/cart/model/cart_item_model.dart';

import 'package:mentorship_4/feature/cart/model/order_item_model.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  CartCubit(this._apiServices,this._appStorage) : super(const CartState());
  final ApiServices _apiServices;
  final AppStorage _appStorage;
  List<CartItemModel> cartItems = [];
  void itemCountIncrease() {
    emit(state.copyWith(count: state.count + 1));
  }

  void itemCountDecrease() {
    if (state.count == 1) return;
    emit(state.copyWith(count: state.count - 1));
  }

  Future<void> addToCart(int resaurantId, Map<String, dynamic> json) async {
    try {
      emit(state.copyWith(status: AddToCartStatus.loading));
      final userCode =  _appStorage.getUserCode();
      final result = await _apiServices.makeOrder(resaurantId, userCode!, json);
      emit(state.copyWith(status: AddToCartStatus.success, orderItems: result.fullorder, count: 1));
    } catch (e) {
      emit(state.copyWith(status: AddToCartStatus.error, errorMessage: e.toString()));
    }
  }
}

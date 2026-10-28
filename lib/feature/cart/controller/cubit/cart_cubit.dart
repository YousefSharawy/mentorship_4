import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/netwrok/api_services.dart';
import 'package:mentorship_4/core/storage/app_storage.dart';
import 'package:mentorship_4/feature/cart/model/cart_item_model.dart';

import 'package:mentorship_4/feature/cart/model/order_item_model.dart';
import 'package:mentorship_4/feature/search/model/item_model.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  CartCubit(this._apiServices, this._appStorage) : super(const CartState());
  final ApiServices _apiServices;
  final AppStorage _appStorage;
  // List<CartItemModel> cartItems = [];
  void itemCountIncrease() {
    emit(state.copyWith(count: state.count + 1));
  }

  void itemCountDecrease() {
    if (state.count == 1) return;
    emit(state.copyWith(count: state.count - 1));
  }

  void addItemToCart(CartItemModel item) {
    emit(state.copyWith(cartItems: [...state.cartItems, item]));
  }

  void updateQuantity(int index, int quantity) {
    if (quantity < 1) return;
    final items = [...state.cartItems];
    items[index] = items[index].copyWith(quantity: quantity);
    emit(state.copyWith(cartItems: items));
  }

  Future<void> addToCart() async {
    try {
      emit(state.copyWith(status: AddToCartStatus.loading));
      final userCode = _appStorage.getUserCode();
      if (userCode == null) throw Exception('User not logged in');
      for (final item in state.cartItems) {
        await _apiServices.makeOrder(item.orderItem.restaurantID, userCode, {
          "menuDTO": [
            {"itemName": item.orderItem.itemName, "quantity": item.quantity},
          ],
        });
      }
      emit(state.copyWith(status: AddToCartStatus.success));
    } catch (e) {
      emit(state.copyWith(status: AddToCartStatus.error, errorMessage: e.toString()));
    }
  }

  void toggleEditCartMode() {
    emit(state.copyWith(isEditCartMode: !state.isEditCartMode));
  }

  void deleteOrderItemFromCart(int itemIdToDelete) {
    emit(state.copyWith(cartItems: state.cartItems.where((item) => item.orderItem.itemID != itemIdToDelete).toList()));
  }
}

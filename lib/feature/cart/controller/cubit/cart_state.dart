part of 'cart_cubit.dart';
enum AddToCartStatus { initial, loading, success, error }
@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    @Default(1) int count,
    @Default(AddToCartStatus.initial) AddToCartStatus status,
    @Default([]) List<OrderItemModel> orderItems,
    String? errorMessage,
  })=_CartState;
  // const factory CartState.initial() = _Initial;
  // const factory CartState.countChanged(int count) = _CountChanged;
  // const factory CartState.addToCartLoaing() = _AddToCartLoaing;
  // const factory CartState.addToCartSuccess(List<OrderItemModel> orderItems) = _AddToCartSuccess;
  // const factory CartState.addToCartError(String? message) = _AddToCartError;
}

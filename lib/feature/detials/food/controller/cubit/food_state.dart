part of 'food_cubit.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState.initial() = _Initial;
  const factory FoodState.menuInitial() = _MenuInitial;
  const factory FoodState.menuLoading() = _MenuLoading;
  const factory FoodState.menuSuccess(List<ItemModel> menuItems) = _MenuSuccess;
  const factory FoodState.menuError(String?message) = _MenuError;
}

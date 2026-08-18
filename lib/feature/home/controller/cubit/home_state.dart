part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.allResturantsInitial() = _resturantsInitial;
  const factory HomeState.allResturantsLoading() = _resturantsLoading;
  const factory HomeState.allResturantsSuccess(List<ResturantModel> resturants) = _resturantsSuccess;
  const factory HomeState.allResturantsError(String?message) = _resturantsError;
}

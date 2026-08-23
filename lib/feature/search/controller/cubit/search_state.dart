part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.searchInitial() = _SearchInitial;
  const factory SearchState.searchLoading() = _SearchLoading;
  const factory SearchState.searchSuccess(List<ItemModel>items) = _SearchSuccess;
  const factory SearchState.searchError(String?mesage) = _SearchError;
}

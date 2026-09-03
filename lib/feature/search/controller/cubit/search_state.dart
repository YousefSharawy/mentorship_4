part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.searchInitial() = _SearchInitial;
  const factory SearchState.searchLoading() = _SearchLoading;
  const factory SearchState.searchSuccess(List<ItemModel>items) = _SearchSuccess;
  const factory SearchState.searchError(String?mesage) = _SearchError;
  const factory SearchState.getAllItemsInitial() = _GetAllItemsInitial;
  const factory SearchState.getAllItemsLoading() = _GetAllItemsLoading;
  const factory SearchState.getAllItemsSucess(List<ItemModel>items) = _GetAllItemsSucess;
  const factory SearchState.getAllItemsError(String?mesage) = _GetAllItemsError;
}

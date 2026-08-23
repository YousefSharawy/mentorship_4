import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mentorship_4/core/netwrok/api_services.dart';

import '../../model/item_model.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._apiServices) : super(SearchState.initial());
  final ApiServices _apiServices;

  Future<List<ItemModel>> getItemsBySearch(String query) async {
    emit(SearchState.searchInitial());
    try {
      emit(SearchState.searchLoading());
      final result = await _apiServices.searchOnItem(query);
      emit(SearchState.searchSuccess(result));
      return result;
    } catch (e) {
      emit(SearchState.searchError(e.toString()));
      rethrow;
    }
  }
}

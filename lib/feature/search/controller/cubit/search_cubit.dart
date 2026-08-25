import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/netwrok/api_services.dart';
import 'package:mentorship_4/core/storage/app_storage.dart';

import '../../model/item_model.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@lazySingleton
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._apiServices, this._appStorage) : super(SearchState.initial());
  final ApiServices _apiServices;
  final AppStorage _appStorage;
  Timer? _debounce;
  List<String> keyWords = [];

  void onQuerryChanged(String query) {
    _debounce?.cancel();
    if (query.isEmpty) {
      keyWords = _appStorage.getRecentKeywords();
      emit(SearchState.searchInitial());
      return;
    }
    _debounce = Timer(Duration(milliseconds: 350), () {
      getItemsBySearch(query);
    });
  }

  Future<List<ItemModel>> getItemsBySearch(String query) async {
    try {
      emit(SearchState.searchLoading());
      await _appStorage.addRecentKeywords(query);
      final result = await _apiServices.searchOnItem(query);
      emit(SearchState.searchSuccess(result));
      return result;
    } catch (e) {
      emit(SearchState.searchError(e.toString()));
      rethrow;
    }
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }

  Future<void> getSavedKeywords() async {
    keyWords = _appStorage.getRecentKeywords();
  }
}

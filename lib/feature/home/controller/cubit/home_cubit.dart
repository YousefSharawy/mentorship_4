import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/netwrok/api_services.dart';
import 'package:mentorship_4/feature/home/model/resturant_model.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._apiServices) : super(HomeState.initial());
  final ApiServices _apiServices;

  Future<List<ResturantModel>> getALlResturants() async {
    emit(HomeState.allResturantsLoading());
    try {
      final result = await _apiServices.getAllResturants();
      emit(HomeState.allResturantsSuccess(result));
      return result;
    } catch (e) {
      emit(HomeState.allResturantsError(e.toString()));
      rethrow;
    }
  }
}

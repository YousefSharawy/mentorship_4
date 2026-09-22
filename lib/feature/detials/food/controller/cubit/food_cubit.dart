import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/netwrok/api_services.dart';
import 'package:mentorship_4/feature/search/model/item_model.dart';

part 'food_state.dart';
part 'food_cubit.freezed.dart';

@injectable
class FoodCubit extends Cubit<FoodState> {
  FoodCubit(this._apiServices) : super(FoodState.initial());
  final ApiServices _apiServices;
  List<ItemModel> menuItems = [];

  Future<void> getReturantMenuItemsByID(int id) async {
    emit(FoodState.menuInitial());
    try {
      emit(FoodState.menuLoading());
       final menuItems = await _apiServices.getMenu(id);
    this.menuItems = menuItems;
    emit(FoodState.menuSuccess(menuItems));
    } catch (e) {
      emit(FoodState.menuError(e.toString()));
    }
  }
}

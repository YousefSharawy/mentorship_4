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
   List<ResturantModel> restuarants = [];
  final List<String> images = [
    "https://imgs.search.brave.com/TEf_6U6vdDXsikCPCLkzKSZg0lolZFOsXizMCRaqS1M/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzIxLzU0LzM3/LzM2MF9GXzMyMTU0/MzcwOF93UkQ5TjNk/cmIxOEJ6a2l1cDBr/T0M2ZG5XWXpldWZ0/aC5qcGc",
    "https://imgs.search.brave.com/Jaba7wZOD7ZfekUlFnpgfEQ9ESGNchWzdKot_ZbmnPg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzA4LzU1Lzk1LzAw/LzM2MF9GXzg1NTk1/MDAwN19VTEJxQXI3/dm10TGxBQVFNZmph/TDg5UVV4WFJDeUFF/Ty5qcGc",
    "https://imgs.search.brave.com/7Txz-SR7uIhs_B6KCBHFa4EN712g3O_bP4b28THoWvE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzEzLzc4LzczLzE5/LzM2MF9GXzEzNzg3/MzE5NjFfSmRURDNm/RjBnbWRrdGFOTnhy/WXV4SnVjTTVGT3JI/WkkuanBn",
  ];
  Future<List<ResturantModel>> getALlResturants() async {
    emit(HomeState.allResturantsLoading());
    try {
      final result = await _apiServices.getAllResturants();
      restuarants = result;
      emit(HomeState.allResturantsSuccess(result));
      return result;
    } catch (e) {
      emit(HomeState.allResturantsError(e.toString()));
      rethrow;
    }
  }
}

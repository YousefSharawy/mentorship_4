import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/netwrok/api_services.dart';

import '../../model/user_model.dart';
part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.apiServices) : super(AuthState.initial());
  final ApiServices apiServices;
  UserModel? userModel;

  Future<UserModel> signUp(String userEmail, String password) async {
    emit(AuthState.signupInitial());
    try {
      emit(AuthState.signupLoading());
       final result = await apiServices.register({
        'userEmail' : userEmail,
        'password' : password,
       });
       userModel =result;
       emit(AuthState.signupSuccess(result));
       return result;
    } catch (e) {
      emit(AuthState.signupError(e.toString()));
      rethrow;
    }
  }
}

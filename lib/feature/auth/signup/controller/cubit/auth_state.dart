part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.signupInitial() = _SignUpInitial;
  const factory AuthState.signupLoading() = _SignUpLoading;
  const factory AuthState.signupSuccess(UserModel user) = _SignUpSuccess;
  const factory AuthState.signupError(String ?message) = _SignUpError;
}

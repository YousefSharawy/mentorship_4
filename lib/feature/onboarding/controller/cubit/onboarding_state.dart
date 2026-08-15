part of 'onboarding_cubit.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial(
   {@Default(0)  int  currentPage,}
  ) = _Initial;
}

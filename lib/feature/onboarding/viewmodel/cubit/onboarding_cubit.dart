import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentorship_4/core/resources/assets_manager.dart';
import 'package:mentorship_4/feature/onboarding/model/page_model.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial());

  final PageController pageController = PageController();
  List<PageModel> onboardingPages = [
    PageModel(image: ImageAssets.onbd1, title: 'All your favorites'),
    PageModel(image: ImageAssets.onbd2, title: 'Order from choosen chef'),
    PageModel(image: ImageAssets.onbd3, title: 'Free delivery offers'),
  ];
  bool get isLastPage => state.currentPage == onboardingPages.length-1;
  void nextPage() {
    if(isLastPage)return;
    pageController.nextPage(duration: Duration(microseconds: 300), curve: Curves.easeInOut);
  }
  void onPageChanged (int index) {
    emit(state.copyWith(currentPage: index));
  }
  @override
  Future<void> close() async {
    pageController.dispose();
    return super.close();
  }


}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/routes.dart';
import 'package:mentorship_4/feature/onboarding/view/onboarding_page.dart';
import 'package:mentorship_4/feature/onboarding/viewmodel/cubit/onboarding_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/widgets/custom_elevated_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingCubit>();
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
        child: Column(
          children: [
            SizedBox(height: AppHeight.s114),
            SizedBox(
              height: AppHeight.s292 + AppHeight.s69 + AppHeight.s30,
              child: PageView.builder(
                onPageChanged: cubit.onPageChanged,
                controller: cubit.pageController,
                itemCount: cubit.onboardingPages.length,
                itemBuilder: (_, index) => OnboardingPage(
                  image: cubit.onboardingPages[index].image,
                  title: cubit.onboardingPages[index].title,
                ),
              ),
            ),
            SizedBox(height: AppHeight.s18),
            Text(
              "Get all your loved foods in one once place,\n\t\t\t\tyou just place the orer we do the rest",
              style: getRegularStyle(
                fontFamily: FontConstants.sen,
                fontSize: FontSize.s16,
                color: ColorManager.secondaryText,
              ),
            ),
            SizedBox(height: AppHeight.s32),
            BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return SmoothPageIndicator(
                  effect: JumpingDotEffect(
                    dotHeight: AppHeight.s10,
                    dotWidth: AppWidth.s10,
                    spacing: AppWidth.s12,
                    radius: 16,
                    dotColor: ColorManager.warmPrimary,
                    activeDotColor: ColorManager.primary,
                    strokeWidth: 1.5,
                    paintStyle: PaintingStyle.fill,
                  ),
                  controller: cubit.pageController,
                  count: cubit.onboardingPages.length,
                );
              },
            ),
            SizedBox(height: AppHeight.s69),
            BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return CustomElevatedButton(
                  title: cubit.isLastPage ? "GET STARTED" : "Next",
                  onPress: () {
                    if (!cubit.isLastPage) {
                      cubit.nextPage();
                    } else {
                      context.go(Routes.signup);
                    }
                  },
                );
              },
            ),
            SizedBox(height: AppHeight.s14),
            TextButton(
              onPressed: () {
                  context.go(Routes.signup);
              },
              child: Text(
                "Skip",
                style: getRegularStyle(
                  fontFamily: FontConstants.sen,
                  fontSize: FontSize.s16,
                  color: ColorManager.primaryText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

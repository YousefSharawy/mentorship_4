import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/assets_manager.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/routes.dart';
import 'package:mentorship_4/feature/auth/signup/controller/cubit/auth_cubit.dart';

import '../../core/injection.dart';
import '../../core/storage/app_storage.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late final bool _hasSkippedOnboarding;
  late final bool _stayLoggedIn;

  @override
  void initState() {
    super.initState();
    _hasSkippedOnboarding = getIt<AppStorage>().getSkipOnboarding() ?? false;
    _stayLoggedIn = getIt<AppStorage>().getStayLoggedIn() ?? false;
    _navigateAfterDelay();
  }
   Future<void> _navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
     if (_hasSkippedOnboarding && _stayLoggedIn) {
      getIt<AuthCubit>().getUserName();
      context.go(Routes.home);
    }
    else if (_hasSkippedOnboarding) {
      context.go(Routes.signup);
    } else {
      context.go(Routes.onboarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        crossAxisAlignment: .start,
        mainAxisAlignment: .center,
        children: [
          Image.asset(ImageAssets.splashshape2, width: AppWidth.s177, height: AppHeight.s177, fit: .cover),
          Spacer(),
          Center(
            child: Image.asset(ImageAssets.logo, width: AppWidth.s121, height: AppHeight.s60, fit: .cover),
          ),
          Spacer(),
          Row(
            children: [
              Spacer(),
              Image.asset(ImageAssets.splashshape, width: AppWidth.s292, height: AppHeight.s295, fit: .cover),
            ],
          ),
        ],
      ),
    );
  }
}

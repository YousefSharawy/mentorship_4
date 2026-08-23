import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/injection.dart';
import 'package:mentorship_4/feature/auth/signup/controller/cubit/auth_cubit.dart';
import 'package:mentorship_4/feature/auth/signup/view/signup_view.dart';
import 'package:mentorship_4/feature/home/controller/cubit/home_cubit.dart';
import 'package:mentorship_4/feature/home/view/home_view.dart';
import 'package:mentorship_4/feature/onboarding/view/onboarding_view.dart';
import 'package:mentorship_4/feature/onboarding/controller/cubit/onboarding_cubit.dart';
import 'package:mentorship_4/feature/search/controller/cubit/search_cubit.dart';
import 'package:mentorship_4/feature/splash/splash_view.dart';

class Routes {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String signup = '/signup';
}

class AppNavigator {
  AppNavigator._();
  static final rootNK = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    routes: <RouteBase>[
      GoRoute(path: Routes.splash, builder: (context, state) => SplashView()),
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) =>
            BlocProvider(create: (context) => getIt<OnboardingCubit>(), child: OnboardingView()),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => MultiBlocProvider(
          providers: [BlocProvider(create: (_) => getIt<AuthCubit>()),BlocProvider(create: (_) => getIt<HomeCubit>()..getALlResturants()),BlocProvider(create: (_) => getIt<SearchCubit>())],
          child: HomeView(),
        ),
      ),
      GoRoute(
        path: Routes.signup,
        builder: (context, state) => BlocProvider(create: (context) => getIt<AuthCubit>(), child: SignupView()),
      ),
    ],
    navigatorKey: rootNK,
    // debugLogDiagnostics: true,
  );
}

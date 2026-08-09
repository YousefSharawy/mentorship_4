import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/feature/splash/splash_view.dart';

class Routes {
  static const String splash = '/splash';
}

class AppNavigator {
  AppNavigator._();
  static final rootNK = GlobalKey<NavigatorState>();
  static GoRouter router() => GoRouter(
    initialLocation: Routes.splash,
    routes: <RouteBase>[GoRoute(path: Routes.splash, builder: (context, state) => SplashView())],
    navigatorKey: rootNK,
    // debugLogDiagnostics: true,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/injection.dart';
import 'package:mentorship_4/feature/auth/signup/controller/cubit/auth_cubit.dart';
import 'package:mentorship_4/feature/auth/signup/view/signup_view.dart';
import 'package:mentorship_4/feature/cart/view/cart_view.dart';
import 'package:mentorship_4/feature/detials/food/controller/cubit/counter_cubit.dart';
import 'package:mentorship_4/feature/detials/food/controller/cubit/food_cubit.dart';
import 'package:mentorship_4/feature/detials/food/view/food_details_view.dart';
import 'package:mentorship_4/feature/detials/resturant/restaurants_details_view.dart';
import 'package:mentorship_4/feature/home/controller/cubit/home_cubit.dart';
import 'package:mentorship_4/feature/home/view/home_view.dart';
import 'package:mentorship_4/feature/onboarding/view/onboarding_view.dart';
import 'package:mentorship_4/feature/onboarding/controller/cubit/onboarding_cubit.dart';
import 'package:mentorship_4/feature/orders-history/order_history_view.dart';
import 'package:mentorship_4/feature/profile/profile_view.dart';
import 'package:mentorship_4/feature/search/controller/cubit/search_cubit.dart';
import 'package:mentorship_4/feature/search/model/item_model.dart';
import 'package:mentorship_4/feature/splash/splash_view.dart';

import '../feature/addresses/presentation/view/address_view.dart';

class Routes {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String signup = '/signup';
  static const String foodDetails = '/foodDetails';
  static const String restaurantDetails = '/restaurantDetails';
  static const String cartView = '/cartView';
  static const String profile = '/profile';
  static const String orderHistory = '/ordersHistory';
  static const String address = '/address';
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
          providers: [
            BlocProvider(create: (_) => getIt<AuthCubit>()),
            BlocProvider(create: (_) => getIt<HomeCubit>()..getALlResturants()),
            BlocProvider(
              create: (_) => getIt<SearchCubit>()
                ..getSavedKeywords()
                ..getAllItems(),
            ),
          ],
          child: HomeView(),
        ),
      ),
      GoRoute(
        path: Routes.signup,
        builder: (context, state) => BlocProvider(create: (context) => getIt<AuthCubit>(), child: SignupView()),
      ),
      GoRoute(path: Routes.profile, builder: (context, state) => ProfileView()),
      GoRoute(path: Routes.orderHistory, builder: (context, state) => OrderHistoryView()),
      GoRoute(path: Routes.address, builder: (context, state) => AddressView()),
      GoRoute(
        path: Routes.restaurantDetails,
        builder: (context, state) {
          final args = state.extra as ({int id, String name, String? address, String image});
          return BlocProvider(
            create: (context) => getIt<FoodCubit>()..getReturantMenuItemsByID(args.id),
            child: RestaurantsDetailsView(address: args.address ?? "", id: args.id, image: args.image, name: args.name),
          );
        },
      ),
      GoRoute(
        path: Routes.foodDetails,
        builder: (context, state) {
          final itemModel = state.extra as ItemModel;
          return BlocProvider(
            create: (context) => CounterCubit(),
            child: FoodDetailsView(itemModel: itemModel),
          );
        },
      ),
      GoRoute(
        path: Routes.cartView,
        builder: (context, state) {
          return CartView();
        },
      ),
    ],
    navigatorKey: rootNK,
    // debugLogDiagnostics: true,
  );
}

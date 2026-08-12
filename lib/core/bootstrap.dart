import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_4/core/cubit/locale_cubit.dart';
import 'package:mentorship_4/core/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_4/core/injection.dart';
class Bootstrap extends StatelessWidget {
  const Bootstrap({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LocaleCubit>()..init(),
      child: BlocBuilder<LocaleCubit, String>(
        builder: (context, langCode) {
        final cubit = context.read<LocaleCubit>();
          return ScreenUtilInit(
            ensureScreenSize: true,
            designSize: const Size(375, 812),
            builder: (context, child) {
              return MaterialApp.router(
                locale: Locale(langCode),
                supportedLocales: cubit.localization.supportedLocales,
                localizationsDelegates: cubit.localization.localizationsDelegates,
                debugShowCheckedModeBanner: false,
                routerConfig: AppNavigator.router,
              );
            },
          );
        },
      ),
    );
  }
}

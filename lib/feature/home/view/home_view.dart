import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_4/core/injection.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/feature/auth/signup/controller/cubit/auth_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (BuildContext context, AuthState state) {
                final cubit = getIt<AuthCubit>();
                return Text(cubit.userName ?? "Medo7as",style: getBoldStyle(color: ColorManager.black,fontSize: FontSize.s40),);
              },
            ),
          ),
        ],
      ),
    );
  }
}

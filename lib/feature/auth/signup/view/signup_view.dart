import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/assets_manager.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/routes.dart';
import 'package:mentorship_4/core/widgets/custom_icon_button.dart';
import 'package:mentorship_4/feature/auth/signup/controller/cubit/auth_cubit.dart';
import 'package:mentorship_4/feature/auth/signup/view/widgets/signup_form.dart';

import '../../../../core/resources/spacing_values_manager.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: .topLeft,
        children: [
          Container(
            width: 1.sw,
            decoration: BoxDecoration(color: ColorManager.navyBlue),
            child: Image.asset(ImageAssets.signupBG),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
                child: Column(
                  children: [
                    SizedBox(height: AppHeight.s49),
                    Row(
                      children: [CustomIconButton(ontap: () {}, backgroundColor: ColorManager.white)],
                    ),
                    SizedBox(height: AppHeight.s24),
                    Text(
                      "Sign Up",
                      textAlign: .center,
                      style: getBoldStyle(
                        color: ColorManager.white,
                        fontFamily: FontConstants.sen,
                        fontSize: FontSize.s30,
                      ),
                    ),
                    SizedBox(height: AppHeight.s3),
                    Text(
                      "Please sign up to get started",
                      textAlign: .center,
                      style: getRegularStyle(
                        color: ColorManager.white,
                        fontFamily: FontConstants.sen,
                        fontSize: FontSize.s16,
                      ),
                    ),
                    SizedBox(height: AppHeight.s50),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: 1.sw,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppRadius.s12),
                      topRight: Radius.circular(AppRadius.s12),
                    ),
                  ),
                  child: BlocConsumer<AuthCubit, AuthState>(
                    builder: (BuildContext context, AuthState state) {
                      return SignupForm(
                        isLoading: state.maybeWhen(
                          signupLoading: () => true,
                          orElse: ()=>false),
                      );
                    },
                    listener: (BuildContext context, AuthState state) {
                      state.whenOrNull(
                        signupSuccess: (user) => context.go(Routes.home),
                        signupError: (message) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text(message ?? 'Sign-up failed')));
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

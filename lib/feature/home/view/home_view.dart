import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_4/core/injection.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/widgets/custom_text_form_field.dart';
import 'package:mentorship_4/feature/auth/signup/controller/cubit/auth_cubit.dart';
import 'package:mentorship_4/feature/home/view/widgets/home_main_row_header.dart';
import 'package:mentorship_4/feature/home/view/widgets/home_search_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: AppHeight.s50),
              HomeMainRowHeader(),
              SizedBox(height: AppHeight.s24),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (BuildContext context, AuthState state) {
                  final cubit = getIt<AuthCubit>();
                  return RichText(
                    text: TextSpan(
                      text: "Hey ${cubit.userName},\t",
                      style: getRegularStyle(
                        color: ColorManager.primaryText,
                        fontSize: FontSize.s16,
                        fontFamily: FontConstants.sen,
                      ),
                      children: [
                        TextSpan(
                          text: "Good Afternoon!",
                          style: getBoldStyle(
                            color: ColorManager.primaryText,
                            fontSize: FontSize.s16,
                            fontFamily: FontConstants.sen,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: AppHeight.s16),
              HomeSearchSection(),
            ],
          ),
        ),
      ),
    );
  }
}

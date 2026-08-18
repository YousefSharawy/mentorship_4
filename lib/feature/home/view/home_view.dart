import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_4/core/injection.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/widgets/custom_text_form_field.dart';
import 'package:mentorship_4/feature/auth/signup/controller/cubit/auth_cubit.dart';
import 'package:mentorship_4/feature/home/controller/cubit/home_cubit.dart';
import 'package:mentorship_4/feature/home/view/widgets/custom_header_row.dart';
import 'package:mentorship_4/feature/home/view/widgets/home_main_row_header.dart';
import 'package:mentorship_4/feature/home/view/widgets/home_resturant_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              CustomTextFormField(
                filledColor: ColorManager.lightGray,
                hint: "Search dishes, restaurants",
                prefixIcon: Icons.search,
              ),
              SizedBox(height: AppHeight.s32),
              CustomHeaderRow(header: 'Open Restaurants', onTap: () {}),
              SizedBox(height: AppHeight.s20),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (BuildContext context, HomeState state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    allResturantsInitial: () => const SizedBox.shrink(),
                    allResturantsLoading: () => const Center(child: CircularProgressIndicator()),
                    allResturantsSuccess: (resturants) => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return HomeResturantContainer(
                          returantName: resturants[index].restaurantName,
                          address: resturants[index].address,
                        );
                      },
                    ),
                    allResturantsError: (message) => Text(message ?? 'Something went wrong'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

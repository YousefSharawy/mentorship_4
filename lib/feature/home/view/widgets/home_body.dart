import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/feature/home/view/widgets/home_resturant_container.dart';

import '../../../../core/injection.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/typography_manager.dart';
import '../../controller/cubit/home_cubit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
       Text(
          "Open restaurants",
          style: getRegularStyle(
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s20,
            color: ColorManager.primaryText,
          ),
        ),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (BuildContext context, HomeState state) {
                  final cubit = getIt<HomeCubit>();
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    allResturantsInitial: () => const SizedBox.shrink(),
                    allResturantsLoading: () => const Center(child: CircularProgressIndicator()),
                    allResturantsSuccess: (resturants) => ListView.builder(
                      padding: EdgeInsets.only(top: AppHeight.s20),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (_, index) {
                        return HomeResturantContainer(
                          returantName: resturants[index].restaurantName,
                          address: resturants[index].address,
                          image: cubit.images[index],
                        );
                      },
                    ),
                    allResturantsError: (message) => Text(message ?? 'Something went wrong'),
                  );
                },
              ),
    ],);
  }
}

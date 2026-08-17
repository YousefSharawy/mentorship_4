import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/assets_manager.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';

class HomeResturantContainer extends StatelessWidget {
  const HomeResturantContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppRadius.s16),
          child: Image.asset(ImageAssets.onbd3, width: AppWidth.s327, height: AppHeight.s137, fit: .fill),
        ),
        SizedBox(height: AppHeight.s8),
        Text("rose garden restaurant",style:getRegularStyle(
          color: ColorManager.primaryText,
          fontFamily: FontConstants.sen,
          fontSize: FontSize.s20,
        ) ,),
        SizedBox(height: AppHeight.s5),
        Text("Burger - Chiken - Riche - Wings "),
        SizedBox(height: AppHeight.s28,),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        
        Image.asset(image, width: AppWidth.s240, height: AppHeight.s292),
        SizedBox(height: AppHeight.s63),
        Text(
          title,
          style: getExtraBoldStyle(
            color: ColorManager.primaryText,
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s24,
          ),
        ),
      ],
    );
  }
}

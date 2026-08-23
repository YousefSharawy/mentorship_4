import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';

class HomeResturantContainer extends StatelessWidget {
  const HomeResturantContainer({super.key, required this.returantName, required this.address, required this.image});
  final String returantName;
  final String address;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppRadius.s16),
          child: Image.network(
            image,
            width: AppWidth.s327,
            height: AppHeight.s137,
            fit: .fill,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: AppWidth.s327,
                height: AppHeight.s137,
                color: ColorManager.gray,
                child: Center(child: Icon(Icons.visibility_off)),
              );
            },
          ),
        ),
        SizedBox(height: AppHeight.s8),
        Text(
          returantName,
          style: getRegularStyle(
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s20,
            color: ColorManager.primaryText,
          ),
        ),
        SizedBox(height: AppHeight.s5),
        Text(address),
        SizedBox(height: AppHeight.s28),
      ],
    );
  }
}

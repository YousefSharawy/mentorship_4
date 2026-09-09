import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';

class SuggestedRestrauntsRow extends StatelessWidget {
  const SuggestedRestrauntsRow({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
          ClipRRect(
            borderRadius:BorderRadiusGeometry.circular(AppRadius.s13),
            child: Image.network(image,width: AppWidth.s60,height: AppHeight.s50,)),
          SizedBox(width: AppWidth.s10,),
          Text(name,style: getRegularStyle(
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s16,
            color: ColorManager.secondaryText,
            letterSpacing: -0.33,
          ),)
          ],
        ),
        Divider(color: ColorManager.gray,),
      ],
    );
  }
}
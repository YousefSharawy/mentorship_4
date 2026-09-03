import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';

class PopularFastFoodContainer extends StatelessWidget {
  const PopularFastFoodContainer({super.key, required this.image, required this.name, required this.label});
  final String image;
  final String name;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppWidth.s153,
      height: AppHeight.s144,
      decoration: BoxDecoration(color: ColorManager.white),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppWidth.s12),
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect
              (
                borderRadius: BorderRadiusGeometry.all(Radius.circular(AppRadius.s19)),
                child: Image.network(image, height: AppHeight.s144,fit: .cover,))),
            SizedBox(height: AppHeight.s6,),
            SizedBox(
              height: AppHeight.s18,
              child: Text(
                maxLines: 1,
                name,
                style: getBoldStyle(
                  fontFamily: FontConstants.sen,
                  fontSize: FontSize.s15,
                  color: ColorManager.secondaryText,
                ),
              ),
            ),
             SizedBox(height: AppHeight.s4,),
               SizedBox(
                height: AppHeight.s17,
                 child: Text(
                  label,
                  overflow: .ellipsis,
                  maxLines: 2,
                  style: getRegularStyle(
                    fontFamily: FontConstants.sen,
                    fontSize: FontSize.s13,
                    color: ColorManager.secondaryText,
                  ),
                             ),
               ),
          ],
        ),
      ),
    );
  }
}

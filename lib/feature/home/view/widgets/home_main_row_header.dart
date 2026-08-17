import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/assets_manager.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/widgets/custom_icon_button.dart';

import '../../../../core/resources/spacing_values_manager.dart';

class HomeMainRowHeader extends StatelessWidget {
  const HomeMainRowHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [CustomIconButton(ontap: () {}, backgroundColor: ColorManager.gray ),
      SizedBox(width: AppWidth.s18,),
      Column(
        crossAxisAlignment: .start,
        children: [
        Text("DELIVER TO",style: getBoldStyle(
          fontSize: FontSize.s12,
          color: ColorManager.primary,
          fontFamily: FontConstants.sen,
        ),),
        Text("Hala lab office"),
      ],),
      Spacer(),
      CustomIconButton(
        icon: Image.asset(IconAssets.shoppingbag,width: AppWidth.s18,height: AppHeight.s20,),
        ontap: (){}, backgroundColor: ColorManager.black),
      ],
    );
  }
}

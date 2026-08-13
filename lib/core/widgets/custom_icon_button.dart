import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';

import '../resources/spacing_values_manager.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.ontap, required this.backgroundColor});
 final VoidCallback ontap;
 final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppWidth.s45,
      height: AppHeight.s45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorManager.white,
      ),
      child: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left ),iconSize: AppSize.s20,),
    );
  }
}
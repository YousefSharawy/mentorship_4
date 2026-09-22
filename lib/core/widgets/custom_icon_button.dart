import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';

import '../resources/spacing_values_manager.dart';

class CustomIconButton extends StatelessWidget {
    const CustomIconButton({
    this.icon = const Icon(Icons.chevron_left),
    this.width,
    this.height,
    this.iconColor,
    this.iconSize,
    super.key,
    required this.ontap,
    required this.backgroundColor,
  });
  final VoidCallback ontap;
  final Color backgroundColor;
  final Color? iconColor;
  final Widget icon;
   final double? width;
   final double? height;
   final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? AppWidth.s45,
      height: height ?? AppHeight.s45, 
      decoration: BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
      child: IconButton(onPressed: ontap, icon: icon, iconSize: iconSize ?? AppSize.s20,padding: EdgeInsets.zero,color:iconColor ?? ColorManager.black ,),
    );
  }
}

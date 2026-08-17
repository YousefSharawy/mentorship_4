import 'package:flutter/material.dart';

import '../resources/spacing_values_manager.dart';

class CustomIconButton extends StatelessWidget {
   const CustomIconButton({this.icon = const Icon(Icons.chevron_left),super.key, required this.ontap, required this.backgroundColor});
 final VoidCallback ontap;
 final Color backgroundColor;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppWidth.s45,
      height: AppHeight.s45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: IconButton(onPressed: (){}, icon: icon,iconSize: AppSize.s20,),
    );
  }
}
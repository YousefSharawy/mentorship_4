import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';

class LabelContainer extends StatelessWidget {
  const LabelContainer({super.key,required this.label, required this.isSelected, required this.onTap});
  final bool isSelected;
  final String label;
  final VoidCallback onTap ; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onTap,
      child: Container(
        margin: EdgeInsetsDirectional.only(end: AppWidth.s10),
        height: AppHeight.s45,
        padding: EdgeInsets.symmetric(horizontal: AppWidth.s30, vertical: AppHeight.s15),
        decoration: BoxDecoration(color: isSelected ? ColorManager.primary : ColorManager.aliceBlue,
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.s23))
        ),
        child: Text(label),
      ),
    );
  }
}

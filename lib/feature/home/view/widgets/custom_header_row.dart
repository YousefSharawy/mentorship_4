import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';

class CustomHeaderRow extends StatelessWidget {
  const CustomHeaderRow({super.key, required this.header, required this.onTap});
  final String header;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          header,
          style: getRegularStyle(
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s20,
            color: ColorManager.primaryText,
          ),
        ),
        Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(AppRadius.s12),
          onTap: onTap,
          child: Center(
            child: Row(
              children: [
                Text(
                  "See All",
                  style: getRegularStyle(
                    fontFamily: FontConstants.sen,
                    fontSize: FontSize.s16,
                    color: ColorManager.primaryText,
                  ),
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

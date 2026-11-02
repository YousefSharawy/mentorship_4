import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppWidth.s180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppRadius.s25),
          bottomRight: Radius.circular(AppRadius.s25),
        ),
        color: ColorManager.gray,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.s10),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: AppHeight.s80),
            TextButton(
              onPressed: () {
                context.push(Routes.profile);
              },
              child: Text(
                "Profile",
                style: getMediumStyle(color: ColorManager.primaryText, fontSize: FontSize.s15),
              ),
            ),
            TextButton(
              onPressed: () {
                    context.push(Routes.orderHistory);
              },
              child: Text(
                "Orders history",
                style: getMediumStyle(color: ColorManager.primaryText, fontSize: FontSize.s15),
              ),
            ),
            TextButton(
              onPressed: () {
                 context.push(Routes.address);
              },
              child: Text(
                "Addresses",
                style: getMediumStyle(color: ColorManager.primaryText, fontSize: FontSize.s15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

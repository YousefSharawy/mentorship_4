import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_4/core/widgets/custom_elevated_button.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/spacing_values_manager.dart';
import '../../../../core/resources/typography_manager.dart';

class PlaceOrderContainerContent extends StatelessWidget {
  const PlaceOrderContainerContent({super.key, required this.totalSum, required this.placeOrder});
  final double totalSum;
  final VoidCallback placeOrder; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSize.s24),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              Text(
                "DELIVERY ADDRESS",
                style: getRegularStyle(
                  fontSize: FontSize.s14,
                  color: ColorManager.white,
                  fontFamily: FontConstants.sen,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "EDIT ",
                  style: getRegularStyle(
                    fontSize: FontSize.s14,
                    fontFamily: FontConstants.sen,
                    color: ColorManager.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppHeight.s10),
          Container(
            height: AppHeight.s62,
            width: 1.sw,
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(AppRadius.s12)),
              color: ColorManager.aliceBlue,
            ),
            child: Text("2118 Thornridge Cir. Syracuse"),
          ),
          SizedBox(height: AppHeight.s30),
          Row(
            children: [
              Text(
                "TOTAL : ",
                style: getRegularStyle(
                  fontSize: FontSize.s14,
                  fontFamily: FontConstants.sen,
                  color: ColorManager.white,
                ),
              ),
              Text(
                "\$$totalSum",
                style: getRegularStyle(
                  fontSize: FontSize.s30,
                  fontFamily: FontConstants.sen,
                  color: ColorManager.white,
                ),
              ),
            ],
          ),
          SizedBox(height: AppHeight.s5,),
          CustomElevatedButton(title: "PLACE ORDER", onPress: placeOrder ,height: AppHeight.s60,),
        ],
      ),
    );
  }
}

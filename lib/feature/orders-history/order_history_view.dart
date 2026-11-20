import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/widgets/custom_icon_button.dart';

import '../../core/resources/color_manager.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.s25),
          child: Column(
            children: [
              SizedBox(height: AppHeight.s50),
              Row(
                children: [
                  CustomIconButton(
                    ontap: () => context.pop(),
                    backgroundColor: ColorManager.primaryText,
                    iconColor: ColorManager.white,
                  ),
                  SizedBox(width: AppWidth.s16,),
                  Text("My Orders",style: getRegularStyle(
                    fontSize: FontSize.s17,
                    fontFamily: FontConstants.sen,
                  )),
                ],
              ),
              SizedBox(height: AppHeight.s24,),
              TabBar(tabs: [
                Tab(text: "Ongoing",),
                Tab(text: "History",),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text("1"),),
                    Center(child: Text("2"),)
                  ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

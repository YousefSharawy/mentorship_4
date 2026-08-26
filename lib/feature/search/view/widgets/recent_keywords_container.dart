import 'package:flutter/material.dart';
import 'package:mentorship_4/core/injection.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/feature/search/controller/cubit/search_cubit.dart';

class RecentKeywordsContainer extends StatelessWidget {
  const RecentKeywordsContainer({super.key, required this.keyword});
  final String keyword;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         getIt<SearchCubit>().searchEditingController.text = keyword;
        getIt<SearchCubit>().onQuerryChanged(keyword);
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(end: AppWidth.s10),
        width: AppWidth.s89,
        height: AppHeight.s46,
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.lightGray),
          borderRadius: BorderRadius.circular(AppRadius.s33),
        ),
        child: Center(
          child: Text(
            keyword,
            style: getRegularStyle(
              letterSpacing: -0.33,
              fontFamily: FontConstants.sen,
              fontSize: FontSize.s16,
              color: ColorManager.primaryText,
            ),
          ),
        ),
      ),
    );
  }
}

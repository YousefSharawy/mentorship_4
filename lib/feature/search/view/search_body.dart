import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/feature/search/view/widgets/recent_keywords_container.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key, required this.keywords});
  final List<String> keywords;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          "Recent Keywords",
          style: getRegularStyle(
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s20,
            color: ColorManager.primaryText,
          ),
        ),
        SizedBox(height: AppHeight.s12),
        SizedBox(
          height: AppHeight.s47,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: .horizontal,
            itemCount: keywords.length,
            itemBuilder: (BuildContext context, int index) {
              return RecentKeywordsContainer(keyword: keywords[index]);
            },
          ),
        ),
        SizedBox(height: AppHeight.s32),
        Text(
          "Suggested Restaurants",
          style: getRegularStyle(
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s20,
            color: ColorManager.primaryText,
          ),
        ),
      ],
    );
  }
}

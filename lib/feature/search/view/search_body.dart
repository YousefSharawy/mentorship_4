import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/feature/home/controller/cubit/home_cubit.dart';
import 'package:mentorship_4/feature/search/model/item_model.dart';
import 'package:mentorship_4/feature/search/view/widgets/popular_fast_food_container.dart';
import 'package:mentorship_4/feature/search/view/widgets/recent_keywords_container.dart';
import 'package:mentorship_4/feature/search/view/widgets/suggested_restraunts_row.dart';

import '../../../core/injection.dart';

class SearchBody extends StatelessWidget {
  SearchBody({super.key, required this.keywords, required this.items});
  final List<String> keywords;
  final List<ItemModel> items;
  final resturants = getIt<HomeCubit>().restuarants;
  final images = getIt<HomeCubit>().images;
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
        ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) {
            return SuggestedRestrauntsRow(image: images[index], name: resturants[index].restaurantName);
          },
        ),
        Text(
          "Popular Fast food ",
          style: getRegularStyle(
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s20,
            color: ColorManager.primaryText,
          ),
        ),
                SizedBox(height: AppHeight.s27),
                

        SizedBox(
          height: AppHeight.s145,
          child: ListView.builder(
            scrollDirection: .horizontal,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (_, index) {
              return PopularFastFoodContainer(
                image: items[index].imageUrl,
                name: items[index].itemName,
                label: items[index].restaurantName,
              );
            },
          ),
        ),
        SizedBox(height: AppHeight.s20,)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/routes.dart';
import 'package:mentorship_4/feature/search/model/item_model.dart';

class PopularFastFoodContainer extends StatelessWidget {
  const PopularFastFoodContainer({super.key,required this.itemModel});
  final ItemModel itemModel;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.foodDetails,extra: itemModel);
      },
      child: Container(
        width: AppWidth.s153,
        height: AppHeight.s144,
        decoration: BoxDecoration(color: ColorManager.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.s12),
          child: Column(
             crossAxisAlignment: .stretch,
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(AppRadius.s19)),
                  child: Image.network(
                    itemModel.imageUrl,
                    height: AppHeight.s144,
                    fit: .cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: const Icon(Icons.broken_image, color: Colors.grey),
                      ); 
                    },
                  ),
                ),
              ),
              SizedBox(height: AppHeight.s6),
              SizedBox(
                height: AppHeight.s18,
                child: Text(
                  maxLines: 1,
                  itemModel.itemName,
                  style: getBoldStyle(
                    fontFamily: FontConstants.sen,
                    fontSize: FontSize.s15,
                    color: ColorManager.secondaryText,
                  ),
                ),
              ),
              SizedBox(height: AppHeight.s4),
              SizedBox(
                height: AppHeight.s17,
                child: Text(
                  itemModel.restaurantName,
                  overflow: .ellipsis,
                  maxLines: 2,
                  style: getRegularStyle(
                    fontFamily: FontConstants.sen,
                    fontSize: FontSize.s13,
                    color: ColorManager.secondaryText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

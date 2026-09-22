import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/routes.dart';
import 'package:mentorship_4/feature/search/model/item_model.dart';

class CustomMenuItemContainer extends StatelessWidget {
  const CustomMenuItemContainer({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.foodDetails, extra: itemModel);
      },
      child: Container(
        width: AppWidth.s153,
        height: AppHeight.s180,
        decoration: BoxDecoration(color: ColorManager.lightGray,
        borderRadius: BorderRadius.all(Radius.circular(AppRadius.s20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.s12, vertical: AppHeight.s15),
          child: Column(
            crossAxisAlignment: .stretch,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(AppRadius.s19)),
                  child: Image.network(
                    width: 122,
                    height: 100,
                    fit: .cover,
                    itemModel.imageUrl,
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
              SizedBox(height: AppHeight.s6),
              SizedBox(
                height: AppHeight.s18,
                child: Text(
                  maxLines: 1,
                  "\$${itemModel.itemPrice}",
                  style: getBoldStyle(
                    fontFamily: FontConstants.sen,
                    fontSize: FontSize.s16,
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

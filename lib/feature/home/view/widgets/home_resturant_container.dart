import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/routes.dart';

class HomeResturantContainer extends StatelessWidget {
  const HomeResturantContainer({super.key, required this.returantName, required this.address, required this.image, required this.id});
  final String returantName;
  final String? address;
  final String image;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        GestureDetector(
          onTap: () {
            context.push(Routes.restaurantDetails, extra: (id: id,name: returantName, address: address, image: image));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.s16),
            child: Image.network(
              image,
              width: AppWidth.s327,
              height: AppHeight.s137,
              fit: .fill,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: AppWidth.s327,
                  height: AppHeight.s137,
                  color: ColorManager.gray,
                  child: Center(child: Icon(Icons.visibility_off)),
                );
              },
            ),
          ),
        ),
        SizedBox(height: AppHeight.s8),
        Text(
          returantName,
          style: getRegularStyle(
            fontFamily: FontConstants.sen,
            fontSize: FontSize.s20,
            color: ColorManager.primaryText,
          ),
        ),
        SizedBox(height: AppHeight.s5),
        address == null ? SizedBox.shrink() : Text(address!),
        SizedBox(height: AppHeight.s28),
      ],
    );
  }
}

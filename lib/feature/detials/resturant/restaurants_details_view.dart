import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/feature/detials/food/controller/cubit/food_cubit.dart';
import 'package:mentorship_4/feature/detials/resturant/custom_menu_item_container.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/typography_manager.dart';
import '../../../core/widgets/custom_icon_button.dart';

class RestaurantsDetailsView extends StatelessWidget {
  const RestaurantsDetailsView({super.key, required this.image, required this.name, required this.address, required this.id});
  final String image;
  final String name;
  final String address;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: AppHeight.s50),
            Row(
              children: [
                CustomIconButton(
                  ontap: () {
                    context.pop();
                  },
                  backgroundColor: ColorManager.gray,
                ),
                SizedBox(width: AppWidth.s16),
                Text(
                  "Restaurant View",
                  style: getRegularStyle(
                    fontSize: FontSize.s17,
                    color: ColorManager.primaryText,
                    fontFamily: FontConstants.sen,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: AppHeight.s24),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(AppRadius.s25)),
              child: Image.network(
                fit: .fill,
                image,
                width: AppWidth.s327,
                height: AppHeight.s150,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Container(
                      width: AppWidth.s327,
                      height: AppHeight.s150,
                      decoration: BoxDecoration(
                        color: ColorManager.gray,
                        borderRadius: BorderRadius.circular(AppRadius.s13),
                      ),
                      child: Icon(Icons.image),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: AppHeight.s24),
            Text(
              name,
              style: getBoldStyle(fontFamily: FontConstants.sen, fontSize: FontSize.s20),
            ),
            SizedBox(height: AppHeight.s4),
            Text(
              address,
              style: getRegularStyle(fontFamily: FontConstants.sen, fontSize: FontSize.s14),
            ),
            SizedBox(height: AppHeight.s16,),
            Expanded(
              child: BlocBuilder<FoodCubit,FoodState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    menuInitial: () => const SizedBox.shrink(),
                    menuLoading: () => Center(child: CircularProgressIndicator()),
                    menuError: (message) => Text(message ?? "Can't get menu" ),
                    menuSuccess: (menuItems) => GridView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: menuItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: AppWidth.s21,mainAxisSpacing: AppHeight.s17),
                      itemBuilder: (_, index) {
                        return CustomMenuItemContainer(itemModel: menuItems[index]);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/core/widgets/custom_elevated_button.dart';
import 'package:mentorship_4/feature/cart/controller/cubit/cart_cubit.dart';
import 'package:mentorship_4/feature/cart/model/cart_item_model.dart';
import 'package:mentorship_4/feature/search/model/item_model.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/typography_manager.dart';
import '../../../../core/widgets/custom_icon_button.dart';

class FoodDetailsView extends StatelessWidget {
  const FoodDetailsView({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
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
                      "Details",
                      style: getRegularStyle(
                        fontSize: FontSize.s17,
                        color: ColorManager.primaryText,
                        fontFamily: FontConstants.sen,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppHeight.s24),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(AppRadius.s25)),
                  child: Image.network(
                    fit: .fill,
                    itemModel.imageUrl,
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: AppWidth.s20, vertical: AppHeight.s15),
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.gray),
                    borderRadius: BorderRadius.all(Radius.circular(AppRadius.s50)),
                  ),
                  child: Text(
                    itemModel.restaurantName,
                    style: getRegularStyle(
                      fontFamily: FontConstants.sen,
                      fontSize: FontSize.s14,
                      color: ColorManager.secondaryText,
                    ),
                  ),
                ),
                SizedBox(height: AppHeight.s4),

                Text(
                  itemModel.itemName,
                  style: getBoldStyle(fontFamily: FontConstants.sen, fontSize: FontSize.s20),
                ),
                SizedBox(height: AppHeight.s7),
                Text(
                  itemModel.itemDescription,
                  style: getRegularStyle(
                    fontFamily: FontConstants.sen,
                    fontSize: FontSize.s14,
                    color: ColorManager.secondaryText,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: AppHeight.s25, horizontal: AppWidth.s24),
                width: 1.sw,
                height: AppHeight.s184,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppRadius.s20),
                    topRight: Radius.circular(AppRadius.s20),
                  ),
                  color: ColorManager.aliceBlue,
                ),
                child: BlocBuilder<CartCubit, CartState>(
                  builder: (context, state) {
                    final count = state.count;
                    final cubit = context.read<CartCubit>();
                    return Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "\$${itemModel.itemPrice}",
                                  style: getRegularStyle(
                                    fontFamily: FontConstants.sen,
                                    fontSize: AppHeight.s28,
                                    color: ColorManager.primaryText,
                                  ),
                                ),
                                Text(
                                  "total: \$${itemModel.itemPrice * count}",
                                  style: getRegularStyle(
                                    fontFamily: FontConstants.sen,
                                    fontSize: AppHeight.s16,
                                    color: ColorManager.primaryText,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: AppHeight.s12, horizontal: AppWidth.s14),
                              width: AppWidth.s125,
                              height: AppHeight.s48,
                              decoration: BoxDecoration(
                                color: ColorManager.black,
                                borderRadius: BorderRadius.circular(AppRadius.s50),
                              ),
                              child: Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  CustomIconButton(
                                    width: AppWidth.s24,
                                    height: AppHeight.s24,
                                    ontap: cubit.itemCountDecrease,
                                    backgroundColor: ColorManager.primaryText,
                                    icon: Icon(Icons.remove),
                                    iconColor: ColorManager.white,
                                    iconSize: AppSize.s17,
                                  ),
                                  Text(
                                    "${state.count}",
                                    style: getBoldStyle(
                                      fontFamily: FontConstants.sen,
                                      fontSize: FontSize.s16,
                                      color: ColorManager.white,
                                    ),
                                  ),
                                  CustomIconButton(
                                    width: AppWidth.s24,
                                    height: AppHeight.s24,
                                    ontap: cubit.itemCountIncrease,
                                    backgroundColor: ColorManager.primaryText,
                                    icon: Icon(Icons.add),
                                    iconColor: ColorManager.white,
                                    iconSize: AppSize.s17,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          title: "ADD TO CART",
                          onPress: () {
                            cubit.addItemToCart(CartItemModel(orderItem: itemModel, quantity: count));
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

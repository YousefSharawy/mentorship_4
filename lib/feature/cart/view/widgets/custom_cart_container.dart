import 'package:flutter/material.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';

import '../../../../core/resources/spacing_values_manager.dart';
import '../../../../core/widgets/custom_icon_button.dart';
import '../../model/cart_item_model.dart';

class CustomCartContainer extends StatelessWidget {
  const CustomCartContainer({
    required this.onIncrement,
    required this.onDecrement,
    required this.cartItemModel,
    required this.isEditMode,
    required this.onCartItemDelete,
    super.key,
  });
  final CartItemModel cartItemModel;
  final void Function(int quantity) onIncrement;
  final void Function(int quantity) onDecrement;
  final VoidCallback onCartItemDelete;
  final bool isEditMode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppHeight.s32),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(AppRadius.s20)),
            child: Image.network(
              cartItemModel.orderItem.imageUrl,
              width: AppWidth.s136,
              height: AppHeight.s117,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: AppWidth.s20),
          Expanded(
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .start,
                  children: [
                    Expanded(
                      child: Text(
                        cartItemModel.orderItem.itemName,
                        overflow: .ellipsis,
                        maxLines: 2,
                        style: getRegularStyle(
                          fontFamily: FontConstants.sen,
                          color: ColorManager.primaryText,
                          fontSize: FontSize.s18,
                        ),
                      ),
                    ),
                    if (isEditMode)
                      IconButton(
                        onPressed: onCartItemDelete,
                        icon: Icon(Icons.delete, color: ColorManager.error, size: AppSize.s24),
                      ),
                  ],
                ),
                SizedBox(height: AppHeight.s10),
                Text(
                  "\$${cartItemModel.orderItem.itemPrice}",
                  style: getBoldStyle(
                    fontFamily: FontConstants.sen,
                    color: ColorManager.primaryText,
                    fontSize: FontSize.s20,
                  ),
                ),
                SizedBox(height: AppHeight.s17),
                Row(
                  spacing: AppWidth.s19,
                  children: [
                    CustomIconButton(
                      width: AppWidth.s24,
                      height: AppHeight.s24,
                      ontap: () => onDecrement(cartItemModel.quantity - 1),
                      backgroundColor: ColorManager.primaryText,
                      icon: Icon(Icons.remove),
                      iconColor: ColorManager.white,
                      iconSize: AppSize.s17,
                    ),
                    Text(
                      "${cartItemModel.quantity}",
                      style: getBoldStyle(
                        fontFamily: FontConstants.sen,
                        fontSize: FontSize.s16,
                        color: ColorManager.primaryText,
                      ),
                    ),
                    CustomIconButton(
                      width: AppWidth.s24,
                      height: AppHeight.s24,
                      ontap: () => onIncrement(cartItemModel.quantity + 1),
                      backgroundColor: ColorManager.primaryText,
                      icon: Icon(Icons.add),
                      iconColor: ColorManager.white,
                      iconSize: AppSize.s17,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

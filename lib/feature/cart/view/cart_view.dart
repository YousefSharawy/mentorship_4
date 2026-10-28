import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/spacing_values_manager.dart';
import 'package:mentorship_4/feature/cart/controller/cubit/cart_cubit.dart';
import 'package:mentorship_4/feature/cart/view/widgets/custom_cart_container.dart';
import 'package:mentorship_4/feature/cart/view/widgets/place_order_container_content.dart';

import '../../../core/resources/font_manager.dart';
import '../../../core/resources/typography_manager.dart';
import '../../../core/widgets/custom_icon_button.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: BlocConsumer<CartCubit, CartState>(
        listenWhen: (prv, curr) => prv.status != curr.status,
        listener: (context, state) {
          if (state.status == AddToCartStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Order placed successfully")));
          } else if (state.status == AddToCartStatus.error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage ?? "Something went wrong")));
          }
        },
        builder: (context, state) {
          bool isEditMode = state.isEditCartMode;
          final cart = context.read<CartCubit>();
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
                child: Column(
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
                          "Cart",
                          style: getRegularStyle(
                            fontSize: FontSize.s17,
                            color: ColorManager.primaryText,
                            fontFamily: FontConstants.sen,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            cart.toggleEditCartMode();
                          },
                          child: Text(
                            isEditMode ? "Done" : "EDIT ITEMS",
                            style: getRegularStyle(
                              fontSize: FontSize.s14,
                              fontFamily: FontConstants.sen,
                              color: isEditMode ? ColorManager.success : ColorManager.primary,
                            ).copyWith(decoration: isEditMode ? TextDecoration.none : TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppHeight.s35),
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return CustomCartContainer(
                          isEditMode: isEditMode,
                          onDecrement: (quantity) => cart.updateQuantity(index, quantity),
                          onIncrement: (quantity) => cart.updateQuantity(index, quantity),
                          onCartItemDelete: () => cart.deleteOrderItemFromCart(state.cartItems[index].orderItem.itemID),
                          cartItemModel: state.cartItems[index],
                        );
                      },
                      itemCount: state.cartItems.length,
                    ),
                    SizedBox(height: AppHeight.s10),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: 1.sw,
                height: AppHeight.s310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppRadius.s20),
                    topRight: Radius.circular(AppRadius.s20),
                  ),
                  color: ColorManager.primaryText,
                ),
                child: PlaceOrderContainerContent(totalSum: state.totalSum, placeOrder: cart.addToCart),
              ),
            ],
          );
        },
      ),
    );
  }
}

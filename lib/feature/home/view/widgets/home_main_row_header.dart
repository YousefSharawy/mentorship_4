import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/assets_manager.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/routes.dart';
import 'package:mentorship_4/core/widgets/custom_icon_button.dart';
import 'package:mentorship_4/feature/addresses/model/controller/cubit/address_cubit.dart';
import 'package:mentorship_4/feature/cart/controller/cubit/cart_cubit.dart';

import '../../../../core/resources/spacing_values_manager.dart';

class HomeMainRowHeader extends StatelessWidget {
  const HomeMainRowHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          icon: Icon(Icons.menu),
          ontap: () {
            Scaffold.of(context).openDrawer();
          },
          backgroundColor: ColorManager.gray,
        ),
        SizedBox(width: AppWidth.s18),
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "DELIVER TO",
              style: getBoldStyle(fontSize: FontSize.s12, color: ColorManager.primary, fontFamily: FontConstants.sen),
            ),
            PopupMenuButton<String>(
              child: Row(children: [Text("Address"), SizedBox(width: 8), Icon(Icons.arrow_drop_down)]),
              itemBuilder: (context) => context
                  .read<AddressCubit>()
                  .state
                  .addresses
                  .map((e) => PopupMenuItem(value: e.address, child: Text(e.address)))
                  .toList(),
            ),
          ],
        ),
        Spacer(),
        BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            final count = context.read<CartCubit>().state.cartItems.length;
            return Stack(
              alignment: .topRight,
              children: [
                CustomIconButton(
                  icon: Image.asset(IconAssets.shoppingbag, width: AppWidth.s18, height: AppHeight.s20),
                  ontap: () {
                    context.push(Routes.cartView);
                  },
                  backgroundColor: ColorManager.black,
                ),
                Container(
                width: AppWidth.s25,
                height: AppHeight.s25,
                  decoration: BoxDecoration(color: ColorManager.primary,shape: .circle),
                  child: Center(child: Text('$count')),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_4/core/widgets/custom_elevated_button.dart';
import 'package:mentorship_4/core/widgets/custom_text_form_field.dart';
import 'package:mentorship_4/feature/addresses/model/controller/cubit/address_cubit.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/spacing_values_manager.dart';
import '../../../../core/resources/typography_manager.dart';

class PlaceOrderContainerContent extends StatefulWidget {
  const PlaceOrderContainerContent({super.key, required this.totalSum, required this.placeOrder});
  final double totalSum;
  final VoidCallback placeOrder;

  @override
  State<PlaceOrderContainerContent> createState() => _PlaceOrderContainerContentState();
}

class _PlaceOrderContainerContentState extends State<PlaceOrderContainerContent> {
  late final TextEditingController textEditingController;
  bool isEditing = false;
  @override
  void initState() {
    super.initState();
    final address = context.read<AddressCubit>().state.addresses;
    textEditingController = TextEditingController(text: address.isEmpty? '' : address.first.address);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSize.s24),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              Text(
                "DELIVERY ADDRESS",
                style: getRegularStyle(
                  fontSize: FontSize.s14,
                  color: ColorManager.white,
                  fontFamily: FontConstants.sen,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  setState(() {
                    isEditing = !isEditing;
                  });
                },
                child: Text(
                  isEditing?'Done':"EDIT",
                  style: getRegularStyle(
                    fontSize: FontSize.s14,
                    fontFamily: FontConstants.sen,
                    color: ColorManager.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppHeight.s10),
          CustomTextFormField(controller: textEditingController,
          readOnly: !isEditing,
          ),
          // Container(
          //   height: AppHeight.s62,
          //   width: 1.sw,
          //   padding: EdgeInsets.all(22),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(Radius.circular(AppRadius.s12)),
          //     color: ColorManager.aliceBlue,
          //   ),
          //   child: Text("2118 Thornridge Cir. Syracuse"),
          // ),
          SizedBox(height: AppHeight.s30),
          Row(
            children: [
              Text(
                "TOTAL : ",
                style: getRegularStyle(
                  fontSize: FontSize.s14,
                  fontFamily: FontConstants.sen,
                  color: ColorManager.white,
                ),
              ),
              Text(
                "\$${widget.totalSum}",
                style: getRegularStyle(
                  fontSize: FontSize.s30,
                  fontFamily: FontConstants.sen,
                  color: ColorManager.white,
                ),
              ),
            ],
          ),
          SizedBox(height: AppHeight.s5),
          CustomElevatedButton(title: "PLACE ORDER", onPress: widget.placeOrder, height: AppHeight.s60),
        ],
      ),
    );
  }
}

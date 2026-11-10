import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentorship_4/core/resources/color_manager.dart';
import 'package:mentorship_4/core/resources/font_manager.dart';
import 'package:mentorship_4/core/resources/typography_manager.dart';
import 'package:mentorship_4/core/widgets/custom_elevated_button.dart';
import 'package:mentorship_4/core/widgets/custom_icon_button.dart';
import 'package:mentorship_4/core/widgets/custom_text_form_field.dart';
import 'package:mentorship_4/feature/addresses/model/controller/cubit/address_cubit.dart';
import 'package:mentorship_4/feature/addresses/presentation/widgets/address_label_selector_row.dart';

import '../../../../core/resources/spacing_values_manager.dart';

class AddressView extends StatefulWidget {
  const AddressView({super.key});

  @override
  State<AddressView> createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  final TextEditingController addressTextEditingEditior = TextEditingController();

  final TextEditingController streetTextEditingEditior = TextEditingController();

  final TextEditingController postCodeTextEditingEditior = TextEditingController();

  final TextEditingController appartmentTextEditingEditior = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final ValueNotifier<String> selectedLabel = ValueNotifier("Home");

  @override
  void dispose() {
    //  TODO: implement dispose
    addressTextEditingEditior.dispose();
    streetTextEditingEditior.dispose();
    postCodeTextEditingEditior.dispose();
    appartmentTextEditingEditior.dispose();
    selectedLabel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: AppHeight.s50),
              CustomIconButton(
                ontap: () => context.pop(),
                backgroundColor: ColorManager.primaryText,
                iconColor: ColorManager.white,
              ),
              SizedBox(height: AppHeight.s50),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This is a required field";
                  }
                  return null;
                },
                controller: addressTextEditingEditior,
                filledColor: ColorManager.gray,
                label: 'ADRESS',
                keyboardType: .streetAddress,
                hint: '3235 Royal Ln. mesa, new jersy 34567',
              ),
              SizedBox(height: AppHeight.s24),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This is a required field";
                        }
                        return null;
                      },
                      controller: streetTextEditingEditior,
                      filledColor: ColorManager.gray,
                      label: 'STREET',
                      keyboardType: .streetAddress,
                      hint: 'hason nagar',
                    ),
                  ),
                  SizedBox(width: AppHeight.s15),
                  Expanded(
                    child: CustomTextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This is a required field";
                        }
                        return null;
                      },
                      controller: postCodeTextEditingEditior,
                      filledColor: ColorManager.gray,
                      label: 'POST CODE',
                      keyboardType: .streetAddress,
                      hint: '34567',
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppHeight.s24),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This is a required field";
                  }
                  return null;
                },
                controller: appartmentTextEditingEditior,
                filledColor: ColorManager.gray,
                label: 'APPARTMENT',
                keyboardType: .streetAddress,
                hint: '345',
              ),
              SizedBox(height: AppHeight.s24),
              Text(
                'LABEL AS',
                style: getRegularStyle(
                  fontFamily: FontConstants.sen,
                  fontSize: FontSize.s14,
                  color: ColorManager.primaryText,
                ),
              ),
              SizedBox(height: AppHeight.s8),
              AddressLabelSelectorRow(selectedLabel: selectedLabel),
              SizedBox(height: AppHeight.s32),
              CustomElevatedButton(
                title: "Save Location",
                onPress: () {
                  if (formKey.currentState!.validate()) {
                    context.read<AddressCubit>().addAdress(
                      address: addressTextEditingEditior.text,
                      street: streetTextEditingEditior.text,
                      postCode: int.parse(postCodeTextEditingEditior.text),
                      appartment: int.parse(appartmentTextEditingEditior.text),
                      requiredLabel: selectedLabel.value,
                    );
                  }
                  addressTextEditingEditior.clear();
                  streetTextEditingEditior.clear();
                  postCodeTextEditingEditior.clear();
                  appartmentTextEditingEditior.clear();
                  selectedLabel.value = 'Home';
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

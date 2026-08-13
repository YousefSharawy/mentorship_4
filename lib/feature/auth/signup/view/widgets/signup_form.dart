import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_4/core/widgets/custom_elevated_button.dart';
import 'package:mentorship_4/core/widgets/custom_text_form_field.dart';

import '../../../../../core/resources/spacing_values_manager.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(24.sp),
      child: SingleChildScrollView(
        scrollDirection: .vertical,
        child: Column(
          children: [
            CustomTextFormField(label: "Name", hint: "John doe"),
            SizedBox(height: AppHeight.s24),
            CustomTextFormField(label: "Email", hint: "example@gmail.com"),
            SizedBox(height: AppHeight.s24),
            CustomTextFormField(label: "Password", hint: "**********", isPassword: true),
            SizedBox(height: AppHeight.s24),
            CustomTextFormField(label: "Re-Type Password", hint: "**********", isPassword: true),
            SizedBox(height: AppHeight.s47),
            CustomElevatedButton(title: "Sign Up", onPress: () {}),
            SizedBox(height: AppHeight.s30),
          ],
        ),
      ),
    );
  }
}

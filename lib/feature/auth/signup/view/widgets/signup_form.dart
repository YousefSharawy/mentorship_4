import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_4/core/widgets/custom_elevated_button.dart';
import 'package:mentorship_4/core/widgets/custom_text_form_field.dart';

import '../../../../../core/resources/spacing_values_manager.dart';
import '../../controller/cubit/auth_cubit.dart';

class SignupForm extends StatelessWidget {
  SignupForm({super.key, required this.isLoading});
  final bool isLoading;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(24.sp),
      child: SingleChildScrollView(
        scrollDirection: .vertical,
        child: Column(
          children: [
            CustomTextFormField(controller: nameController, label: "Name", hint: "John doe"),
            SizedBox(height: AppHeight.s24),
            CustomTextFormField(controller: emailController, label: "Email", hint: "example@gmail.com"),
            SizedBox(height: AppHeight.s24),
            CustomTextFormField(
              controller: passwordController,
              label: "Password",
              hint: "**********",
              isPassword: true,
            ),
            SizedBox(height: AppHeight.s24),
            CustomTextFormField(
              validator: (value) {
                if (value != passwordController.text) {
                  return ("the password is mismatched");
                }
              },
              controller: repasswordController,
              label: "Re-Type Password",
              hint: "**********",
              isPassword: true,
            ),
            SizedBox(height: AppHeight.s47),
            CustomElevatedButton(
              isLoading: isLoading,
              title: "Sign Up",
              onPress: () {
                context.read<AuthCubit>().signUp(emailController.text, passwordController.text);
              },
            ),
            SizedBox(height: AppHeight.s30),
          ],
        ),
      ),
    );
  }
}

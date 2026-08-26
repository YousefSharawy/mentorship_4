import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/spacing_values_manager.dart';
import '../resources/typography_manager.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.label,
    this.validator,
    this.controller,
    this.prefixIcon,
    this.prefixIconAsset,
    this.maxLines = 1,
    this.isPassword = false,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.keyboardType,
    this.filledColor,
    this.focusNode,
    this.textAlign = TextAlign.left,
    this.onFieldSubmitted,
  });
  final FocusNode? focusNode;
  final String? hint;
  final String? label;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final String? prefixIconAsset;
  final int maxLines;
  final bool isPassword;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Color? filledColor;
  final TextAlign textAlign;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isPassword;
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppRadius.s10),
    borderSide: BorderSide(color: color, width: 0),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: getBoldStyle(fontFamily: FontConstants.sen, fontSize: FontSize.s14, color: ColorManager.primaryText),
          ),
          SizedBox(height: AppHeight.s8),
        ],
        TextFormField(
          
          focusNode: widget.focusNode,
          onFieldSubmitted: widget.onFieldSubmitted,
          maxLines: widget.maxLines,
          expands: false,
          keyboardType: widget.keyboardType,
          obscureText: isObscure,
          readOnly: widget.readOnly,
          controller: widget.controller,
          autovalidateMode: AutovalidateMode.onUnfocus,
          onTap: widget.onTap,
          onChanged: widget.onChanged,
          validator: widget.validator,
          textAlign: widget.textAlign,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: ColorManager.secondaryText,
          style: getRegularStyle(fontFamily: FontConstants.sen, fontSize: FontSize.s13, color: ColorManager.primaryText),
          decoration: InputDecoration(
            filled: true,
            fillColor: widget.filledColor ?? ColorManager.aliceBlue,
            contentPadding: EdgeInsets.symmetric(vertical: AppHeight.s22, horizontal: AppWidth.s20),

            hintText: widget.hint,
            hintStyle: getRegularStyle(
              fontFamily: FontConstants.sen,
              fontSize: FontSize.s14,
              color: ColorManager.secondaryText,
            ),
            border: _border(Colors.transparent),
            enabledBorder: _border(Colors.transparent),
            focusedBorder: _border(Colors.transparent), 
            errorBorder: _border(Colors.transparent), 
            focusedErrorBorder: _border(Colors.transparent),
            errorStyle: getRegularStyle(
              fontFamily: FontConstants.sen,
              fontSize: FontSize.s12,
              color: ColorManager.error,
            ),
            errorMaxLines: 1,
            prefixIcon: widget.prefixIconAsset != null
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppWidth.s13),
                    child: SvgPicture.asset(
                      widget.prefixIconAsset!,
                      width: AppSize.s22,
                      height: AppSize.s22,
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(ColorManager.secondaryText, BlendMode.srcIn),
                    ),
                  )
                : widget.prefixIcon != null
                ? Icon(widget.prefixIcon, size: AppSize.s22, color: ColorManager.secondaryText)
                : null,
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                      isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      size: AppSize.s22,
                      color: ColorManager.secondaryText,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}

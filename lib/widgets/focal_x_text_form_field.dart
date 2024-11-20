import 'package:flutter/material.dart';

import '../core/constant/app_colors.dart';
import '../core/constant/app_sizes.dart';
class FocalXTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? Function(String?)? validator;
  final bool? hasIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final Icon? suffixIcon;
  const FocalXTextFormField(
      {super.key,
      required this.controller,
      this.hintText,
      this.validator,
      this.icon,
      this.hasIcon = false,
      this.suffixIcon,
      this.isPassword,
      this.keyboardType});

  @override
  FocalXTextFormFieldState createState() => FocalXTextFormFieldState();
}

class FocalXTextFormFieldState extends State<FocalXTextFormField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword == true ? isObscure : false,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: AppSize.screenHeight * 0.02),
        fillColor: AppColors.white,
        filled: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(
            height: 2, color: AppColors.lighterBlack, fontSize: AppSize.fontSizeSm()),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: AppSize.md() * 1.125),
                    child: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.lighterBlack,
                    )))
            : null,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.lightRed),
          borderRadius: BorderRadius.circular(AppSize.borderRadiusLg()),
        ),
        errorStyle: const TextStyle(color: Colors.red),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.borderRadiusLg()),
            borderSide:
                const BorderSide(width: 1, color: AppColors.lightRed)),
      ),
      style: TextStyle(
          color: Colors.white,
          height: 2,
          fontSize: AppSize.fontSizeSm() * 1.125),
      cursorErrorColor: AppColors.lighterBlack,
    );
  }
}

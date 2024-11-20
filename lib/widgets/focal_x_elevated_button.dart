import 'package:flutter/material.dart';
import '../core/constant/app_fonts.dart';

import '../core/constant/app_colors.dart';
import '../core/constant/app_sizes.dart';

class FocalXElevatedButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final Widget? child;
  final double? height;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  const FocalXElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius, this.child,
  });

  @override
  State<FocalXElevatedButton> createState() => _FocalXElevatedButtonState();
}

class _FocalXElevatedButtonState extends State<FocalXElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? AppSize.screenHeight * 0.027,
      width: widget.width ?? AppSize.screenWidth * 0.4,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: AppSize.fontSizeSm(),
              fontWeight: AppFontWeight.med,
            ),
          ),
          elevation: WidgetStateProperty.all<double>(5),
          backgroundColor: WidgetStateProperty.all<Color>(
            widget.backgroundColor??AppColors.orange
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: widget.borderRadius ??
                  BorderRadius.circular(10), // Adjust the radius as needed
            ),
          ),
        ),
        child: widget.child??null
      )
    );
  }
}

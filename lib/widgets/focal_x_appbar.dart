import 'package:flutter/material.dart';
import '../core/constant/app_sizes.dart';

class FocalXAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? text;
  final IconThemeData? iconTheme;
  final List<Widget>? actions;
  final TextStyle? style;
  final Widget? leading;
  final Color backgroundColor;
  const FocalXAppBar({
    super.key,
    this.text,
    this.actions,
    this.iconTheme,
    this.style,
    required this.backgroundColor,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: AppSize.appBarHeight() * 0.5,
        iconTheme: iconTheme,
        elevation: 0,
        actions: actions,
        backgroundColor: backgroundColor,
        leading: leading,
        title: text);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

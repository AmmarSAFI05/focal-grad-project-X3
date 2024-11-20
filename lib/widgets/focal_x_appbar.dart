import 'package:flutter/material.dart';
import '../core/constant/app_sizes.dart';

class FocalXAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final IconThemeData? iconTheme;
  final List<Widget>? actions;
  final TextStyle style;
  final Widget leading;
  final Color backgroundColor;
  const FocalXAppBar({
    super.key,
    required this.text, this.actions, this.iconTheme, required this.style, required this.backgroundColor, required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: AppSize.appBarHeight()*0.8,
      iconTheme: iconTheme,
      centerTitle: true,
      elevation: 0,
      actions: actions,
        backgroundColor: backgroundColor,
        leading: leading,
        title: Center(
            child: Text(
          text,
          style: style,
        )));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

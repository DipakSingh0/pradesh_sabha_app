import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget>? actions;
  final bool centerTitle;
  final Widget? leading;

  const MyAppBar({
    super.key,
    required this.title,
    this.backgroundColor = redcolor,
    this.actions,
    this.centerTitle = true,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(56), //-----56px radius
          child: leading,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(
          top: 8.0, bottom: 8.0),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      centerTitle: centerTitle,
      actions: actions,
      toolbarHeight: 66,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(66); 
}

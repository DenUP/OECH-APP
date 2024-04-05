import 'package:flutter/material.dart';

class AppBarDefoult extends StatelessWidget implements PreferredSizeWidget {
  final bool button;
  final String titleText;

  const AppBarDefoult(
      {super.key, required this.titleText, required this.button});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: button,
      iconTheme: IconThemeData(
        size: 24,
        color: Color.fromRGBO(5, 96, 250, 1),
      ),
      backgroundColor: Colors.white,
      // leadingWidth: BorderSide.strokeAlignCenter,
      title: Text(
        titleText,
        style: TextStyle(
            color: const Color.fromARGB(255, 133, 124, 124),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}

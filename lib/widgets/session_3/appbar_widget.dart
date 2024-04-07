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
      iconTheme: const IconThemeData(
        size: 24,
        color: Color.fromRGBO(5, 96, 250, 1),
      ),
      backgroundColor: Colors.white,
      shadowColor: Color.fromRGBO(0, 0, 0, 0.15),
      elevation: 4,
      // bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(4.0),
      //     child: Container(
      //       color: Colors.orange,
      //       height: 4,
      //     )),

      // leadingWidth: BorderSide.strokeAlignCenter,
      title: Text(
        titleText,
        style: const TextStyle(
            color: Color.fromARGB(255, 133, 124, 124),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65);
}

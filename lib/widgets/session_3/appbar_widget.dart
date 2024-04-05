import 'package:flutter/material.dart';

class AppBarDefoult extends StatelessWidget {
  final String titleText;

  const AppBarDefoult({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_left_outlined),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),

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
}

import 'package:flutter/material.dart';
import 'package:oech/widgets/session_3/appbar_widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefoult(
        button: true,
        titleText: 'Notification',
      ),
      backgroundColor: Colors.white,
    );
  }
}

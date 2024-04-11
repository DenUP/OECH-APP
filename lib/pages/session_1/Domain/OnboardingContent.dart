import 'package:flutter/material.dart';
import 'package:oech/presentation/style/fontStyle.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent(
      {super.key,
      required this.ilustratin,
      required this.title,
      required this.text});

  final String ilustratin, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(ilustratin),
        )),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: fontStyle.blueMain,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: fontStyle.description,
        )
      ],
    );
  }
}

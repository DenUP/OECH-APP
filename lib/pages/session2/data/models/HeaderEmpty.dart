import 'package:flutter/material.dart';

class HeaderEmpty extends StatelessWidget {
  final String title;
  final String label;
  const HeaderEmpty({super.key, required this.title, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.start,
          title,
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(58, 58, 58, 1)),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          textAlign: TextAlign.start,
          label,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(167, 167, 167, 1)),
        ),
      ],
    );
  }
}

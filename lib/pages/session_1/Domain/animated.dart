import 'package:flutter/material.dart';
import 'package:oech/presentation/style/colors.dart';

class AnimatedContent extends StatelessWidget {
  const AnimatedContent({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      height: 10,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
          color: isActive ? colors.mainColor : Colors.grey,
          borderRadius: BorderRadius.circular(400)),
    );
  }
}

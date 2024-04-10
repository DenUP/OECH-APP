import 'package:flutter/material.dart';
import 'package:oech/pages/session_1/Domain/onboardData.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(OnboardData[0]['ilustration']),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oech/pages/session_1/Domain/animated.dart';
import 'package:oech/pages/session_1/Domain/onboardingContent.dart';
import 'package:oech/presentation/style/colors.dart';
import 'package:oech/presentation/style/fontStyle.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _itemCount = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          SizedBox(
            height: 500,
            child: PageView.builder(
              itemCount: OnboardDATA.length,
              onPageChanged: (value) {
                setState(() {
                  _itemCount = value;
                });
              },
              itemBuilder: (context, index) {
                return OnboardContent(
                  text: OnboardDATA[index]['text'],
                  ilustratin: OnboardDATA[index]['ilustration'],
                  title: OnboardDATA[index]['title'],
                );
              },
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                OnboardDATA.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: AnimatedContent(isActive: _itemCount == index),
                    )),
          ),
          const Spacer(),
          SizedBox(
            width: 100,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text(
                'Skip',
                style: fontStyle.btnTxt_Blue,
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: BorderSide(color: colors.mainColor, width: 1),
                  ),
                  backgroundColor: Colors.white),
            ),
          ),
          Spacer()
        ],
      )),
    );
  }
}

List<Map<String, dynamic>> OnboardDATA = [
  {
    'ilustration': 'assets/image/Thank_you.png',
    'title': 'Quick Delivery At Your\nDoorstep',
    'text': 'Enjoy quick pick-up and delivery\nto your destination'
  },
  {
    'ilustration': 'assets/image/rafiki.png',
    'title': 'Flexible Payment',
    'text':
        'Different modes of payment either\nbefore and after delivery without\nstress '
  },
  {
    'ilustration': 'assets/image/rafiki3.png',
    'title': 'Real-time Tracking',
    'text':
        'Track your packages/items from the\ncomfort of your home till final destination'
  },
];

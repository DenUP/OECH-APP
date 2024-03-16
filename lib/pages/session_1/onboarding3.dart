import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OnBoardginThree extends StatelessWidget {
  const OnBoardginThree({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 88,
              ),
              Image.asset('assets/image/rafiki3.png'),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Real-time Tracking',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(5, 96, 250, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Track your packages/items from the comfort of your home till final destination',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 342,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/hld');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(5, 96, 250, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          )),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Already have an account?',
                      style: const TextStyle(
                          color: Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                    TextSpan(
                      text: 'Sign in',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/hld');
                        },
                      style: const TextStyle(
                          color: Color.fromRGBO(5, 96, 250, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}

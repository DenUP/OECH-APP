import 'package:flutter/material.dart';

class OnBoardginOne extends StatelessWidget {
  const OnBoardginOne({super.key});

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
                height: 20,
              ),
              Image.asset('assets/image/Thank_you.png'),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Quick Delivery At Your Doorstep',
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
                'Enjoy quick pick-up and delivery to your destination',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(58, 58, 58, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 82,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/hld');
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: const BorderSide(
                                      color: Color.fromRGBO(5, 96, 250, 1),
                                      width: 1)))),
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            color: Color.fromRGBO(5, 96, 250, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/onb2');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(5, 96, 250, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          )),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

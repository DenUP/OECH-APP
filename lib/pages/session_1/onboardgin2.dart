import 'package:flutter/material.dart';

class OnBoardginTwo extends StatelessWidget {
  const OnBoardginTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/rafiki.png'),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Flexible Payment',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(5, 96, 250, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Different modes of payment either before and after delivery without stress',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(96, 96, 96, 1),
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
                        Navigator.pushNamed(context, '/onb1');
                      },
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              BeveledRectangleBorder(
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
                          shape: BeveledRectangleBorder(
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

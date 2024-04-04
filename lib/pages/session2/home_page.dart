import 'package:flutter/material.dart';
import 'package:oech/pages/session2/data/models/HeaderEmpty.dart';
import 'package:oech/widgets/search_widget.dart';
import 'package:oech/widgets/session_2/Text_Field_Widget.dart';
import 'package:oech/widgets/session_2/s2_field.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FocusNode myFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: ,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.zero,
            // padding: EdgeInsets.only(top: 110, left: 24, right: 24),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderEmpty(
                  title: 'Welcome Back',
                  label: 'Fill in your email and password to continue',
                ),
                const SizedBox(
                  height: 33,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(167, 167, 167, 1)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(207, 207, 207, 1),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(207, 207, 207, 1))),
                            // labelStyle: TextStyle(
                            //     color: myFocusNode.hasFocus
                            //         ? Colors.blue
                            //         : Colors.yellow),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'HintText',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(207, 207, 207, 1)))),
                    // TextInputWidget(
                    //   controller: TextEditingController(),
                    //   textTitle: 'Full name',
                    //   textColor: Color.fromRGBO(167, 167, 167, 1),
                    //   textSize: 14,
                    //   hintText: 'Ivanov Ivan',
                    // ),
                    S2TextFieldWidget2(
                      controller: TextEditingController(),
                      textTitle: 'Full name',
                      textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                      textSize: 14,
                      hintText: 'Ivanov Ivan',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

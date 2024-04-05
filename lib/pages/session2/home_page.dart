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
  final _authTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? errorText = null;

  void _auth() {
    final login = _authTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      setState(() {
        errorText = null;
      });
      Navigator.pushNamed(context, '/profile');
    } else {
      setState(() {
        errorText = 'Не верный логин или пароль';
      });
    }
  }

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
            padding: EdgeInsets.only(top: 110),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                    TextInputWioidet(
                      inputType: TextInputType.text,
                      controller: _authTextController,
                      textTitle: 'Email Address',
                      textColor: Color.fromRGBO(167, 167, 167, 1),
                      textSize: 14,
                      hintText: '***********@mail.com',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    S2TextFieldWidget2(
                      controller: _passwordTextController,
                      textTitle: 'Password',
                      textTitleColor: Color.fromRGBO(167, 167, 167, 1),
                      textSize: 14,
                      hintText: '**********',
                      isObsText: true,
                    ),
                    const SizedBox(
                      height: 17,
                    )
                  ],
                ),
                // Окно Ошибки
                if (errorText != null)
                  Text(
                    errorText!,
                    style: TextStyle(color: Colors.black),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Кнопка соглашения
                    Checkbox(
                        activeColor: Color.fromRGBO(5, 96, 250, 1),
                        value: true,
                        onChanged: (newValue) {
                          setState(() {
                            newValue;
                          });
                        }),
                    // Запомнить пароль
                    const Text(
                      'Remember password',
                      style: TextStyle(
                          color: Color.fromRGBO(167, 167, 167, 1),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    // Забыли пароль
                    const Spacer(),
                    InkWell(
                      onTap: _auth,
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color.fromRGBO(5, 96, 250, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 187,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    onPressed: _auth,
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(5, 96, 250, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ))),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

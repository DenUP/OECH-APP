import 'package:flutter/material.dart';

class TextInputWioidet extends StatelessWidget {
  final String textTitle;
  final String hintText;
  final Color textColor;
  final double textSize;
  final bool is0bstext;
  final TextInputType inputType;
  final TextEditingController controller;

  const TextInputWioidet({
    super.key,
    required this.textTitle,
    required this.hintText,
    required this.textSize,
    this.is0bstext = false,
    this.inputType = TextInputType.text,
    required this.controller,
    this.textColor = const Color.fromRGBO(167, 167, 167, 1),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              SizedBox(
                width: 342,
                child: Text(
                  textTitle,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        TextFormField(
          keyboardType: inputType,
          // cursorHeight: 500,
          controller: controller,
          obscureText: is0bstext,

          style: const TextStyle(
              color: Color.fromRGBO(58, 58, 58, 1),
              fontSize: 14,
              fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textColor, width: 1),
                borderRadius: BorderRadius.circular(4)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textColor, width: 1),
                borderRadius: BorderRadius.circular(4)),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Color.fromRGBO(207, 207, 207, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500),
            fillColor: Colors.transparent,
            filled: true,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oech/presentation/style/colors.dart';

class PasswordInputWioidet extends StatefulWidget {
  final String textTitle;
  final String hintText;
  final Color textColor;
  final double textSize;
  // final bool is0bstext;
  final TextInputType inputType;
  final TextEditingController controller;
  final String? errorSText;

  const PasswordInputWioidet({
    super.key,
    required this.textTitle,
    required this.hintText,
    required this.textSize,
    // this.is0bstext = false,
    this.inputType = TextInputType.text,
    required this.controller,
    this.textColor = const Color.fromRGBO(167, 167, 167, 1),
    this.errorSText,
  });

  @override
  State<PasswordInputWioidet> createState() => _PasswordInputWioidetState();
}

class _PasswordInputWioidetState extends State<PasswordInputWioidet> {
  var is0bstext = true;

  var errorText = false;

  // void _onTap() {
  //   print(' onTap');
  // }

  // void _onChanged(String text) {
  //   print('$text OnChanged');
  // }

  // void _onFieldSubmitted(String text) {
  //   print('$text onFieldSubmitted');
  // }

  // void _onEditingComplete() {
  //   print('EXYYY onEditingComplete');
  // }

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
                  widget.textTitle,
                  style: TextStyle(
                    color: widget.textColor,
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
          // onTap: _onTap,
          // onChanged: _onChanged,
          // onFieldSubmitted: _onFieldSubmitted,
          // onEditingComplete: _onEditingComplete,
          cursorColor: colors.FieldColors,
          keyboardType: widget.inputType,
          // cursorHeight: 500,
          controller: widget.controller,
          obscureText: is0bstext,

          style: const TextStyle(
              color: Color.fromRGBO(58, 58, 58, 1),
              fontSize: 14,
              fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            suffixIcon: InkWell(
                onTap: () {
                  is0bstext = !is0bstext;
                  setState(() {});
                },
                child: Icon(
                  is0bstext ? Icons.visibility_off : Icons.visibility,
                )),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.textColor, width: 1),
                borderRadius: BorderRadius.circular(4)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.textColor, width: 1),
                borderRadius: BorderRadius.circular(4)),
            // errorText: errorSText,
            // focusColor: Colors.red,
            errorStyle: const TextStyle(color: colors.RedErorr),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: colors.RedErorr,
                  width: 1,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(4)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: colors.RedErorr,
                  width: 1,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(4)),
            hintText: widget.hintText,
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

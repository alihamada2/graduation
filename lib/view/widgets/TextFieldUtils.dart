import 'package:flutter/material.dart';

class TextFieldUtils extends StatelessWidget {
  final TextEditingController Controller;
  final String text;
  final bool obscureText;
  final Color textColor;
  final double fontSize;
  final Widget suffixIcon;
  final String FontFamily;
  TextFieldUtils({
    required this.Controller,
    required this.obscureText,
    required this.text,

    required this.textColor,
    required this.fontSize,
    required this.suffixIcon,
    required this.FontFamily,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: textColor, fontSize: fontSize,fontFamily:FontFamily,letterSpacing: 0.12,height: 1 ),
          suffixIcon: suffixIcon
          ),
    );
  }
}

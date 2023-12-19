import 'package:flutter/material.dart';

///  color:  Color(0xfffef2ec),

const Color mainColor = Color(0xfffff6f2);
const Color mainColor2 = Color(0xffeec1ab);
const Color bottomColor = Color(0xff3b3a5d);
// const Color bottomColor2 = Color(0xff4f807d);
// const Color TextBottomColor = Color(0xff24786d);

class ThemesApp {
  static final light = ThemeData(
    primaryColor: mainColor,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );
}

import 'package:flutter/material.dart';

class ElevatedButtonUtils extends StatelessWidget {
  final Function() onpressed;
  final String text;
  final Color BackGroundColor;
  final double width;
  final double height;
  ElevatedButtonUtils({
    required this.onpressed,
    required this.text,
    required this.BackGroundColor,
    required this.height,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onpressed();
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: height, horizontal: width)),
          backgroundColor: MaterialStateProperty.all(BackGroundColor)),
    );
  }
}

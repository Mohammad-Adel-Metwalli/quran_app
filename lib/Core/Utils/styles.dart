import 'package:flutter/material.dart';

abstract class Styles
{
  static const styleOfIntroButtons = ButtonStyle(
    fixedSize: MaterialStatePropertyAll(Size.square(65)),
  );

  static const styleOfIntroText = TextStyle(fontSize: 17.5, color: Colors.black, fontWeight: FontWeight.w500);
  static const styleOfIntroTextWhite = TextStyle(fontSize: 17.5, color: Colors.white, fontWeight: FontWeight.w500);
  static const styleOfIntroText20 = TextStyle(fontSize: 22.5, color: Colors.black, fontWeight: FontWeight.w500);
}
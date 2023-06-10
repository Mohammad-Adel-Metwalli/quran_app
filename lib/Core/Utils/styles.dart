import 'package:flutter/material.dart';

abstract class Styles
{
  static const styleOfIntroButtons = ButtonStyle(
    alignment: Alignment(0, -4.2),
    fixedSize: MaterialStatePropertyAll(Size.square(65)),
  );

  static const styleOfIntroText = TextStyle(fontSize: 17.5, color: Colors.black, fontWeight: FontWeight.w500);
}
import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/assets.dart';

abstract class Styles
{
  static const styleOfIntroButtons = ButtonStyle(
    fixedSize: MaterialStatePropertyAll(Size.square(65)),
  );

  static const styleOfIntroText = TextStyle(fontSize: 17.5, color: Colors.black, fontWeight: FontWeight.w500);
  static const styleOfIntroTextWhite = TextStyle(fontSize: 17.5, color: Colors.white, fontWeight: FontWeight.w500);
  static const styleOfIntroText20 = TextStyle(fontSize: 22.5, color: Colors.black, fontWeight: FontWeight.w500);
  static const styleOfIntroText20White = TextStyle(fontSize: 22.5, color: Colors.white, fontWeight: FontWeight.w500);
  static const styleOfAzkarText20 = TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500);
  static const styleOfAzkarText20White = TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500);
  static const styleOfBasmala25 = TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500);
  static const styleOfBookMarkText = TextStyle(color: Colors.black, fontWeight: FontWeight.w600);
  static const styleOfFBA = TextStyle(fontSize: 13, fontWeight: FontWeight.w600 , fontFamily: AssetsData.arabicFont, color: Colors.white);
  static const styleOfTasbeeh20 = TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500);
  static const styleOfVersesText = TextStyle(fontSize: 17.5, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: AssetsData.arabicFont);
  static const styleOfVersesNumber = TextStyle(fontSize: 17.5, color: Colors.black, fontFamily: AssetsData.poppinsFont);
}
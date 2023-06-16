import 'package:flutter/material.dart';

class QuranFehresMaccaAndMadinaImages extends StatelessWidget
{
  const QuranFehresMaccaAndMadinaImages({Key? key, required this.surahType, }) : super(key: key);
  final String surahType;

  @override
  Widget build(BuildContext context)
  {
    return surahType == 'Makkah' ? Image.asset(
      'assets/images/Kaaba - 3D Ramadhan Illustration Pack ( Perspective).png',
      height: 70,
    ) :
    Image.asset(
      'assets/images/Mosque - 3D Ramadhan Illustration Pack (Perspective).png',
      height: 70,
    )
    ;
  }
}

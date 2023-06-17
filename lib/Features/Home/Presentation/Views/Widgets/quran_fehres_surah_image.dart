import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';

class QuranFehresMaccaAndMadinaImages extends StatelessWidget
{
  const QuranFehresMaccaAndMadinaImages({Key? key, required this.surahType}) : super(key: key);
  final String surahType;

  @override
  Widget build(BuildContext context)
  {
    return surahType == 'Makkah' ?
    const Img('assets/images/Kaaba - 3D Ramadhan Illustration Pack ( Perspective).png', height: 70, width: 70) :
    const Img('assets/images/Mosque - 3D Ramadhan Illustration Pack (Perspective).png', height: 70, width: 70);
  }
}

import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/styles.dart';

class SplashViewCustomedText extends StatelessWidget
{
  const SplashViewCustomedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Center(child: Text('قرآنٌ يُتلَى آنَاءَ اللَّيلِ و أطرَافَ النَّهار', style: Styles.styleOfIntroText20));
  }
}

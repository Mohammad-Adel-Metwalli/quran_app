import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';

class SplashViewImage extends StatelessWidget
{
  const SplashViewImage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Img(
      'assets/images/Quran logo.png',
      height: 200,
    );
  }
}

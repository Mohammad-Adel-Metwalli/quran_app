import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';

class IntroductionsCachedImage extends StatelessWidget
{
  const IntroductionsCachedImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return Img(
      imageUrl,
      fit: BoxFit.fitHeight,
      height: 900,
      width: double.infinity,
    );
  }
}

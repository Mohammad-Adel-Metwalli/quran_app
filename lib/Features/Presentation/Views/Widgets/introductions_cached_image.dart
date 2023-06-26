import 'package:flutter/material.dart';

class IntroductionsCachedImage extends StatelessWidget
{
  const IntroductionsCachedImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return Image.asset(
      imageUrl,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}

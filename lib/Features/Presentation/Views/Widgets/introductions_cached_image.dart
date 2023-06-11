import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IntroductionsCachedImage extends StatelessWidget
{
  const IntroductionsCachedImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.fitHeight,
      height: 900,
      width: double.infinity,
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SplashViewImage extends StatelessWidget
{
  const SplashViewImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return CachedNetworkImage(
      imageUrl: 'https://i.pinimg.com/originals/2b/cd/a0/2bcda019b2a16dac30f2afd89d6e15da.png',
      height: 200,
    );
  }
}

import 'package:avatar_glow/avatar_glow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/constants.dart';

class CustomAppBarImage extends StatelessWidget
{
  const CustomAppBarImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return AvatarGlow(
      glowColor: Colors.black,
      endRadius: 32,
      child: Material(
        elevation: 8.0,
        shape: const CircleBorder(),
        child: CircleAvatar(
          backgroundColor: lightBrown,
          radius: 25,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
        ),
      ),
    );
  }
}

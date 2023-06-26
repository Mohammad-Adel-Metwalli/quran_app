import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/constants.dart';

class CustomAppBarImage extends StatefulWidget
{
  const CustomAppBarImage({Key? key,}) : super(key: key);

  @override
  State<CustomAppBarImage> createState() => _CustomAppBarImageState();
}

class _CustomAppBarImageState extends State<CustomAppBarImage>
{
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('assets/images/Quran logo avatar.png'), context);
  }

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
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            backgroundImage: AssetImage('assets/images/Quran logo avatar.png'),
          ),
        ),
      ),
    );
  }
}

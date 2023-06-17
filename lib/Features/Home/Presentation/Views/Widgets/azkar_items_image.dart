import 'package:flutter/material.dart';

class AzkarItemsImage extends StatelessWidget
{
  const AzkarItemsImage({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context)
  {
    return Image(
      image: AssetImage(image),
      height: 100,
    );
  }
}

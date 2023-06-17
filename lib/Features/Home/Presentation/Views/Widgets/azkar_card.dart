import 'package:flutter/material.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../constants.dart';
import 'azkar_items_image.dart';

class AzkarCard extends StatelessWidget
{
  const AzkarCard({
    super.key, required this.azkar, required this.image,
  });
  final String azkar;
  final String image;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: papayaWhip,
      child: SizedBox(
          height: 50,
          child: Center(
              child: Row(
                  children: [
                    const Spacer(),

                    AzkarItemsImage(image: image),

                    const SizedBox(width: 10),

                    Text(azkar, style: Styles.styleOfAzkarText20),

                    const Spacer()
                  ]
              )
          )
      ),
    );
  }
}

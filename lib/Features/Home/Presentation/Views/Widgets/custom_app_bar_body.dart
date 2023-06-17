import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Core/Utils/styles.dart';
import 'custom_app_bar_image.dart';

class CustomAppBarBody extends StatelessWidget
{
  const CustomAppBarBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),

          IconButton(
              onPressed: ()
              {
                ZoomDrawer.of(context)?.toggle();
              },
              icon: const Icon(FontAwesomeIcons.barsStaggered)
          ),

          const Spacer(flex: 12),

          const Text('فَهْرَسُ السُّوَر', style: Styles.styleOfIntroText20),

          const Spacer(flex: 10),

          const CustomAppBarImage(imageUrl: 'https://img.freepik.com/free-photo/lamp-mat-near-quran_23-2147868927.jpg?w=1060&t=st=1686923530~exp=1686924130~hmac=6e0848209fb6d1423d1263dda98f6135223345067ce47feb8bbca3b77069c567'),

          const Spacer(),
        ],
      ),
    );
  }
}

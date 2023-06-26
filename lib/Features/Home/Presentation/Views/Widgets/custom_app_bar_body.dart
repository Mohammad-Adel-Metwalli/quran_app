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
          SizedBox(width: MediaQuery.of(context).size.width * 0.025),

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

          const CustomAppBarImage(),

          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        ],
      ),
    );
  }
}

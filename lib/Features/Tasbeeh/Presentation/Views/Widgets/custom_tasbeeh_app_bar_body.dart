import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../Home/Presentation/Views/Widgets/custom_app_bar_image.dart';

class CustomTasbeehAppBarBody extends StatelessWidget
{
  const CustomTasbeehAppBarBody({
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
                GoRouter.of(context).pop();
              },
              icon: const Icon(FontAwesomeIcons.chevronLeft)
          ),

          const Spacer(flex: 12),

          const Img(
            'assets/images/Prayer-Beads-Ramadan.png',
            height: 50,
            width: 50
          ),

          const Text('التَّسْبِيح', style: Styles.styleOfIntroText20),

          const Spacer(flex: 10),

          const CustomAppBarImage(),

          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        ],
      ),
    );
  }
}

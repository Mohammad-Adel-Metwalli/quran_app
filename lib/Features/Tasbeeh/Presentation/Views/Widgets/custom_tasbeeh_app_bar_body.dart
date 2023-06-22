import 'package:flutter/material.dart';
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

          const Text('التَّسْبِيح', style: Styles.styleOfIntroText20),

          const Spacer(flex: 10),

          const CustomAppBarImage(imageUrl: 'https://img.freepik.com/free-photo/lamp-mat-near-quran_23-2147868927.jpg?w=1060&t=st=1686923530~exp=1686924130~hmac=6e0848209fb6d1423d1263dda98f6135223345067ce47feb8bbca3b77069c567'),

          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        ],
      ),
    );
  }
}

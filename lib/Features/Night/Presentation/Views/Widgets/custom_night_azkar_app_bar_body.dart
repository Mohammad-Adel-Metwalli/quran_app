import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../Home/Presentation/Views/Widgets/custom_app_bar_image.dart';

class CustomNightAzkarAppBarBody extends StatelessWidget
{
  const CustomNightAzkarAppBarBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    final boxAzkar = Hive.box('Azkar');

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.025),

          IconButton(
              onPressed: ()
              {
                boxAzkar.clear();
                GoRouter.of(context).pop();
              },
              icon: const Icon(FontAwesomeIcons.chevronLeft)
          ),

          const Spacer(flex: 12),

          const Img(
              'assets/images/Suhor-Time-Ramadan0001.png',
              height: 50,
              width: 50
          ),

          const Text('أَذكَارُ المَسَاء', style: Styles.styleOfIntroText20),

          const Spacer(flex: 10),

          const CustomAppBarImage(imageUrl: 'https://img.freepik.com/free-photo/lamp-mat-near-quran_23-2147868927.jpg?w=1060&t=st=1686923530~exp=1686924130~hmac=6e0848209fb6d1423d1263dda98f6135223345067ce47feb8bbca3b77069c567'),

          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        ],
      ),
    );
  }
}

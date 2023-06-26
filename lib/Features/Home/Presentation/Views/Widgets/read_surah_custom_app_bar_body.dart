import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/Core/Utils/assets.dart';
import '../../../../../Core/Utils/styles.dart';
import 'custom_app_bar_image.dart';

class ReadSurahCustomAppBarBody extends StatelessWidget
{
  const ReadSurahCustomAppBarBody({Key? key, required this.surahNumber}) : super(key: key);
  final int surahNumber;

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

          Text(AssetsData.surahsInArabic[surahNumber-1], style: Styles.styleOfIntroText20),

          const Spacer(flex: 10),

          const CustomAppBarImage(),

          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/read_surah_custom_app_bar_body.dart';
import '../../../../../constants.dart';

class ReadSurahCustomAppBar extends StatelessWidget
{
  const ReadSurahCustomAppBar({Key? key, required this.surahNumber}) : super(key: key);
  final int surahNumber;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
        gradient: LinearGradient(
            colors: [Colors.blueGrey, blueColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
        ),
      ),

      child: ReadSurahCustomAppBarBody(surahNumber: surahNumber),
    );
  }
}

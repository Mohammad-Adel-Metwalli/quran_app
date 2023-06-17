import 'package:flutter/material.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/read_surah_custom_app_bar.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/surah_content.dart';

class ReadSurahBody extends StatelessWidget
{
  const ReadSurahBody({Key? key, required this.surahNumber}) : super(key: key);
  final int surahNumber;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        SurahContent(surahNumber: surahNumber),

        ReadSurahCustomAppBar(surahNumber: surahNumber)
      ],
    );
  }
}

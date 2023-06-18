import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/surah_verses.dart';

class SurahContent extends StatelessWidget
{
  const SurahContent({Key? key, required this.surahNumber}) : super(key: key);
  final int surahNumber;

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 108),
        itemCount: quran.getVerseCount(surahNumber),
        itemBuilder: (context, index)
        {
          return SurahVerses(surahNumber: surahNumber, verseNumber: index+1);
        }
        );
  }
}

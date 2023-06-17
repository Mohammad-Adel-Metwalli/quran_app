import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/constants.dart';
import '../../../../../Core/Utils/styles.dart';

class SurahVerses extends StatelessWidget
{
  const SurahVerses({
    super.key,
    required this.surahNumber, required this.verseNumber,
  });

  final int surahNumber;
  final int verseNumber;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: ivonyWhite,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
      ),
      child: SizedBox(
        child: ListTile(
          title: Column(
            children: [
              Text(
                quran.getVerse(surahNumber, verseNumber, verseEndSymbol: true),
                textDirection: TextDirection.rtl,
                style: Styles.styleOfAzkarText20,
              ),

              Text(
                quran.getVerseTranslation(surahNumber, verseNumber),
                textDirection: TextDirection.ltr,
                style: Styles.styleOfAzkarText20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
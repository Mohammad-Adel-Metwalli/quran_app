import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/surah_verses.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SurahContent extends StatelessWidget
{
  const SurahContent({Key? key, required this.surahNumber}) : super(key: key);
  final int surahNumber;
  static final itemController = ItemScrollController();
  static double sizeOfMedia = 0;

  static Future scrollItem(int index) async
  {
    itemController.scrollTo(
        index: 7,
        duration: const Duration(seconds: 3),
        alignment: sizeOfMedia * 0.007
    );
  }

  @override
  Widget build(BuildContext context)
  {
    sizeOfMedia = MediaQuery.sizeOf(context).height * 0.115;

    return ScrollablePositionedList.builder(
        itemScrollController: itemController,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.115),
        itemCount: quran.getVerseCount(surahNumber),
        itemBuilder: (context, index)
        {
          return SurahVerses(surahNumber: surahNumber, verseNumber: index+1);
        }
        );
  }
}

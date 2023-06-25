import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/surah_verses.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SurahContent extends StatefulWidget
{
  const SurahContent({Key? key, required this.surahNumber}) : super(key: key);
  final int surahNumber;
  static final itemController = ItemScrollController();
  static double sizeOfMedia = 0;
  static int surahNum = 0;

  static Future scrollItem(int index) async
  {
    itemController.scrollTo(
        index: index,
        duration: const Duration(seconds: 3),
        alignment: sizeOfMedia * 0.007
    );
  }

  @override
  State<SurahContent> createState() => _SurahContentState();
}

class _SurahContentState extends State<SurahContent>
{
  @override
  void initState()
  {
    super.initState();
    SurahContent.surahNum = widget.surahNumber;
  }

  @override
  Widget build(BuildContext context)
  {
    SurahContent.sizeOfMedia = MediaQuery.sizeOf(context).height * 0.115;

    return ScrollablePositionedList.builder(
        itemScrollController: SurahContent.itemController,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.115),
        itemCount: quran.getVerseCount(widget.surahNumber),
        itemBuilder: (context, index)
        {
          return SurahVerses(surahNumber: widget.surahNumber, verseNumber: index+1);
        }
        );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/surah_content.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../constants.dart';

class BookMarkButton extends StatelessWidget
{
  const BookMarkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    final boxVerses = Hive.box('QuranApp');

    return FloatingActionButton.extended(
        backgroundColor: zaffre,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.5)),
        icon: const Icon(CupertinoIcons.book),
        onPressed: () => SurahContent.scrollItem(boxVerses.get(SurahContent.surahNum)),
        label: const Text('إلى العَلامَة', style: Styles.styleOfFBA)
    );
  }
}
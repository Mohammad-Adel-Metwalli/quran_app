import 'package:flutter/material.dart';
import 'package:quran_app/constants.dart';
import 'Widgets/book_mark_button.dart';
import 'Widgets/read_surah_body.dart';

class ReadSurah extends StatelessWidget
{
  const ReadSurah({Key? key, required this.surahNumber}) : super(key: key);
  final int surahNumber;

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const BookMarkButton(),
        backgroundColor: jasmine,
        body: ReadSurahBody(surahNumber: surahNumber),
      ),
    );
  }
}

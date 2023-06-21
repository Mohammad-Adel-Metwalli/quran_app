import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/constants.dart';
import '../../../../../Core/Utils/styles.dart';

class SurahVerses extends StatefulWidget
{
  const SurahVerses({
    super.key,
    required this.surahNumber, required this.verseNumber,
  });

  final int surahNumber;
  final int verseNumber;
  static bool added = false;

  @override
  State<SurahVerses> createState() => _SurahVersesState();
}

class _SurahVersesState extends State<SurahVerses>
{
  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: ivonyWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: SizedBox(
        child: ListTile(
          title: Column(
            children: [
              SizedBox(height: quran.getSurahNameArabic(widget.surahNumber) != 'الفاتحة' && quran.getSurahNameArabic(widget.surahNumber) != 'التوبة' && widget.verseNumber == 1 ? 8 : 15),

              if(widget.verseNumber == 1 && quran.getSurahNameArabic(widget.surahNumber) != 'الفاتحة' && quran.getSurahNameArabic(widget.surahNumber) != 'التوبة')
                const Text(quran.basmala, style: Styles.styleOfBasmala25),

              if(widget.verseNumber == 1 && quran.getSurahNameArabic(widget.surahNumber) != 'الفاتحة' && quran.getSurahNameArabic(widget.surahNumber) != 'التوبة')
                const SizedBox(height: 20),

              Text(
                  quran.getVerse(widget.surahNumber, widget.verseNumber, verseEndSymbol: true),
                  textDirection: TextDirection.rtl,
                  style: Styles.styleOfAzkarText20
              ),

              Text(
                quran.getVerseTranslation(widget.surahNumber, widget.verseNumber),
                textDirection: TextDirection.ltr,
                style: Styles.styleOfAzkarText20,
              ),

              const SizedBox(height: 25),

              Center(
                child: GestureDetector(
                  onTap: ()
                  {
                    if(SurahVerses.added == false)
                    {
                      SurahVerses.added = true;
                      setState(() {

                      });
                    }

                    else
                    {
                      SurahVerses.added = false;
                      setState(() {

                      });
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: fawn,
                        borderRadius: BorderRadius.circular(15)
                    ),

                    child: Row(
                      children: [
                        const Spacer(),

                        Icon(
                            SurahVerses.added == false ? Icons.bookmark_add : Icons.bookmark_added,
                            color: SurahVerses.added == false ? zaffre : officeGreen,
                        ),

                        Text(SurahVerses.added == false ? 'حِفظ العَلامَة' : 'حُفِظَت العَلامَة', style: Styles.styleOfBookMarkText),

                        const Spacer()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
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
  static bool removed = true;

  @override
  State<SurahVerses> createState() => _SurahVersesState();
}

class _SurahVersesState extends State<SurahVerses>
{
  final _boxVerses = Hive.box('QuranApp');

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
                    if(_boxVerses.get(widget.surahNumber) == null)
                    {
                      AwesomeDialog(
                        context: context,
                        animType: AnimType.scale,
                        dialogType: DialogType.question,

                        body: const Center(
                            child: Text('هل تريد وضع علامة؟', style: TextStyle(fontFamily: 'Noto Kufi Arabic', fontWeight: FontWeight.bold))
                        ),

                        btnOk: GestureDetector(
                          onTap: ()
                          {
                            _boxVerses.put(widget.surahNumber, widget.verseNumber);
                            SurahVerses.added = true;
                            setState(() {});
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(12.5)),
                            child: const Center(child: Text('أجل أريد', style: TextStyle(fontFamily: 'Noto Kufi Arabic', fontWeight: FontWeight.bold, color: Colors.white))),
                          ),
                        ),

                        btnCancel: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12.5)),
                            child: const Center(child: Text('لا أريد', style: TextStyle(fontFamily: 'Noto Kufi Arabic', fontWeight: FontWeight.bold, color: Colors.white))),
                          ),
                        ),
                      ).show();
                    }

                    else
                    {
                      AwesomeDialog(
                        context: context,
                        animType: AnimType.scale,
                        dialogType: DialogType.question,

                        body: const Center(
                            child: Text('هل تريد تغيير مكان العلامة؟', style: TextStyle(fontFamily: 'Noto Kufi Arabic', fontWeight: FontWeight.bold))
                        ),

                        btnOk: GestureDetector(
                          onTap: ()
                          {
                            _boxVerses.delete(widget.surahNumber);
                            _boxVerses.put(widget.surahNumber, widget.verseNumber);
                            setState(() {});
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(12.5)),
                            child: const Center(child: Text('أجل أريد', style: TextStyle(fontFamily: 'Noto Kufi Arabic', fontWeight: FontWeight.bold, color: Colors.white))),
                          ),
                        ),

                        btnCancel: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12.5)),
                            child: const Center(child: Text('لا أريد', style: TextStyle(fontFamily: 'Noto Kufi Arabic', fontWeight: FontWeight.bold, color: Colors.white))),
                          ),
                        ),
                      ).show();
                    }
                    setState(() {});
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
                            _boxVerses.get(widget.surahNumber) == widget.verseNumber ? Icons.bookmark_added : Icons.bookmark_add,
                            color: _boxVerses.get(widget.surahNumber) == widget.verseNumber ? officeGreen : zaffre,
                        ),

                        Text(_boxVerses.get(widget.surahNumber) == widget.verseNumber && SurahVerses.added == true ? 'حُفِظَت العَلامَة' : 'حِفظ العَلامَة', style: Styles.styleOfBookMarkText),

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
import 'package:flutter/material.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/quran_fehres_surah_image.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../constants.dart';
import 'package:quran/quran.dart' as quran;

class QuranFehresListViewItem extends StatelessWidget
{
  const QuranFehresListViewItem({
    super.key, required this.surahNumber,
  });
  final int surahNumber;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: ivonyWhite,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      child: SizedBox(
        height: 90,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),

            QuranFehresMaccaAndMadinaImages(surahType: quran.getPlaceOfRevelation(surahNumber)),

            Text('آياتها ${quran.getVerseCount(surahNumber).toString()}', style: Styles.styleOfIntroText),

            const Spacer(flex: 5),

            Text(quran.getSurahNameArabic(surahNumber), style: Styles.styleOfIntroText20),

            const Spacer()
          ],
        ),
      ),
    );
  }
}
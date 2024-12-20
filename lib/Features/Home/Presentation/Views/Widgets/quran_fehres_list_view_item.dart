import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/Core/Utils/assets.dart';
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
    return GestureDetector(
      onTap: ()
      {
        GoRouter.of(context).push('/readSurah', extra: surahNumber);
      },
      child: Card(
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

              Text(quran.getVerseCount(surahNumber).toString(), style: Styles.styleOfVersesNumber),

              const SizedBox(width: 6),

              const Text('آياتها', style: Styles.styleOfVersesText),

              const Spacer(flex: 5),

              Text('سورة ${AssetsData.surahsInArabic[surahNumber-1].substring(7)}', style: Styles.styleOfIntroText20),

              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
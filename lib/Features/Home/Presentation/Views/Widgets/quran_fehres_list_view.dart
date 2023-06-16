import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/quran_fehres_surah_image.dart';
import 'package:quran_app/constants.dart';
import '../../../../../Core/Utils/styles.dart';

class QuranFehresListView extends StatelessWidget
{
  const QuranFehresListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 105),
        physics: const BouncingScrollPhysics(),
        itemCount: quran.totalSurahCount,
        itemBuilder: (context, index)
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

                  QuranFehresMaccaAndMadinaImages(surahType: quran.getPlaceOfRevelation(index+1)),

                  Text('آياتها ${quran.getVerseCount(index + 1).toString()}', style: Styles.styleOfIntroText),

                  const Spacer(flex: 5),

                  Text(quran.getSurahNameArabic(index+1), style: Styles.styleOfIntroText20),

                  const Spacer()
                ],
              ),
            ),
          );
        }
    );
  }
}

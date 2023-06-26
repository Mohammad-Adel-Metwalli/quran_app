import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';
import 'package:quran_app/Features/Tasbeeh/Presentation/Views/Widgets/tasbeeh_button.dart';
import '../../../../../Core/Utils/styles.dart';

class TasbeehListView extends StatefulWidget
{
  const TasbeehListView({super.key});

  @override
  State<TasbeehListView> createState() => _TasbeehListViewState();
}

class _TasbeehListViewState extends State<TasbeehListView>
{
  int tasbeeh = 0;

  @override
  Widget build(BuildContext context)
  {
    List<Widget> tasbeehList = [
      const Text(
        'عن أبي هريرة رضي الله عنه قال قال رسول الله - صلَّ الله عليه وسلم:\nكَلِمَتَانِ خَفِيفَتَانِ عَلَى اللِّسَانِ ثَقِيلَتَانِ فِي الْمِيزَانِ حَبِيبَتَانِ إِلَى الرَّحْمَنِ سُبْحَانَ اللَّهِ وَبِحَمْدِهِ سُبْحَانَ اللَّهِ الْعَظِيمِ \n (رواه البخاري)',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Styles.styleOfTasbeeh20,
      ),

      const Img('assets/images/Prayer-Beads-Ramadan.png', width: 150, height: 150),

      const SizedBox(
        height: 5,
      ),

      const Center(child: Text('سُبحَانَ اللهِ وَ بِحَمدِه\nسُبحَانَ اللهِ العَظيمْ', style: Styles.styleOfIntroText20)),

      const SizedBox(
        height: 35,
      ),

      Center(child: Text('$tasbeeh', style: const TextStyle(fontSize: 50, fontFamily: 'Poppins'))),

      const SizedBox(
        height: 50,
      ),

      GestureDetector(
        onTap: ()
        {
          ++tasbeeh;
          setState(() {

          });
        },

        child: const Center(child: TasbeehButton()),
      )
    ];

    return ListView.builder(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.115),
        physics: const BouncingScrollPhysics(),
        itemCount: tasbeehList.length,
        itemBuilder: (context, index)
        {
          return tasbeehList[index];
        }
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';
import 'package:quran_app/Core/Utils/styles.dart';
import 'package:quran_app/Features/Tasbeeh/Presentation/Views/Widgets/custom_tasbeeh_app_bar.dart';
import 'package:quran_app/Features/Tasbeeh/Presentation/Views/Widgets/tasbeeh_button.dart';

class TasbeehBody extends StatefulWidget
{
  const TasbeehBody({Key? key}) : super(key: key);

  @override
  State<TasbeehBody> createState() => _TasbeehBodyState();
}

class _TasbeehBodyState extends State<TasbeehBody>
{
  late int tasbeeh = 0;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        const CustomTasbeehAppBar(),

        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02,
        ),

        Center(
          child: Column(
            children: [
              const Text(
                'عن أبي هريرة رضي الله عنه قال قال رسول الله - صلَّ الله عليه وسلم:\n ( كَلِمَتَانِ خَفِيفَتَانِ عَلَى اللِّسَانِ ثَقِيلَتَانِ فِي الْمِيزَانِ حَبِيبَتَانِ إِلَى الرَّحْمَنِ سُبْحَانَ اللَّهِ وَبِحَمْدِهِ سُبْحَانَ اللَّهِ الْعَظِيمِ )\n رواه البخاري',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: Styles.styleOfTasbeeh20,
              ),

              const Img('assets/images/Prayer-Beads-Ramadan.png', width: 150, height: 150),

              const SizedBox(
                height: 5,
              ),

              const Text('سُبحَانَ اللهِ وَ بِحَمدِه\nسُبحَانَ اللهِ العَظيمْ', style: Styles.styleOfIntroText20),

              const SizedBox(
                height: 35,
              ),

              Text('$tasbeeh', style: const TextStyle(fontSize: 50, fontFamily: 'Poppins')),

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

                child: const TasbeehButton(),
              )
            ],
          ),
        )
      ],
    );
  }
}

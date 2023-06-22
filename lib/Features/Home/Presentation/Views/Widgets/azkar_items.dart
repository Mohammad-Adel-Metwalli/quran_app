import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/Core/Utils/styles.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/azkar_items_image.dart';
import 'azkar_card.dart';

class AzkarItems extends StatelessWidget
{
  const AzkarItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        const SizedBox(height: 15),

        const Row(
          children: [
            AzkarItemsImage(image: 'assets/images/Tauhid-Ramadan.png'),

            Text('أَذكَارُ المُسْلِم', style: Styles.styleOfIntroText20White)
          ],
        ),

        const Divider(
          thickness: 3,
          color: Colors.white,
        ),

        const SizedBox(height: 15),
        
        const Text(
            'قال رسول الله صلَّ الله عليه وسلم: يقول الله عز وجل أنا عند ظن عبدي بي، وأنا معه حين يذكرني إن ذكرني في نفسه ذكرته في نفسي، وإن ذكرني في ملأ ذكرته في ملأ هم خير منهم\n (الحديث رواه مسلم وغيره)',
            maxLines: 8,
            textAlign: TextAlign.center,
            style: Styles.styleOfAzkarText20White,
        ),

        const SizedBox(height: 40),

        const AzkarCard(image: 'assets/images/Iftar-Time-Ramadan.png', azkar:'أَذكَارُ الصَّبَاح'),

        const SizedBox(height: 15),

        const AzkarCard(image: 'assets/images/Suhor-Time-Ramadan0001.png', azkar:'أَذكَارُ المَسَاء'),

        const SizedBox(height: 15),

        const AzkarCard(image: 'assets/images/Mosque-Ramadan.png', azkar:'أَذكَارُ المَسْجِد'),

        const SizedBox(height: 15),

        const AzkarCard(image: 'assets/images/Moslem-Hat-Ramadan.png', azkar:'أَذكَارُ مَا بَعدَ الصَّلاة'),

        const SizedBox(height: 15),

        GestureDetector(
            onTap: ()
            {
              ZoomDrawer.of(context)?.close();
              GoRouter.of(context).push('/tasbeeh');
            },
            child: const AzkarCard(image: 'assets/images/Prayer-Beads-Ramadan.png', azkar:'تَسْبيح')
        ),
      ],
    );
  }
}

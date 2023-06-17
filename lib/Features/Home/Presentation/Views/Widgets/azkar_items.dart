import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/styles.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/azkar_items_image.dart';
import 'azkar_card.dart';

class AzkarItems extends StatelessWidget
{
  const AzkarItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Column(
      children: [
        SizedBox(height: 15),

        Row(
          children: [
            AzkarItemsImage(image: 'assets/images/Tauhid-Ramadan.png'),

            Text('أَذكَارُ المُسْلِم', style: Styles.styleOfIntroText20White)
          ],
        ),

        Divider(
          thickness: 3,
          color: Colors.white,
        ),

        SizedBox(height: 15),
        
        Text(
            'قال رسول الله صلَّ الله عليه وسلم: يقول الله عز وجل أنا عند ظن عبدي بي، وأنا معه حين يذكرني إن ذكرني في نفسه ذكرته في نفسي، وإن ذكرني في ملأ ذكرته في ملأ هم خير منهم\n (الحديث رواه مسلم وغيره)',
            maxLines: 8,
            textAlign: TextAlign.center,
            style: Styles.styleOfAzkarText20White,
        ),

        SizedBox(height: 40),

        AzkarCard(image: 'assets/images/Iftar-Time-Ramadan.png', azkar:'أَذكَارُ الصَّبَاح'),

        SizedBox(height: 15),

        AzkarCard(image: 'assets/images/Suhor-Time-Ramadan0001.png', azkar:'أَذكَارُ المَسَاء'),

        SizedBox(height: 15),

        AzkarCard(image: 'assets/images/Mosque-Ramadan.png', azkar:'أَذكَارُ المَسْجِد'),

        SizedBox(height: 15),

        AzkarCard(image: 'assets/images/Moslem-Hat-Ramadan.png', azkar:'أَذكَارُ مَا بَعدَ الصَّلاة'),

        SizedBox(height: 15),

        AzkarCard(image: 'assets/images/Prayer-Beads-Ramadan.png', azkar:'تَسْبيح'),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../Core/Utils/styles.dart';

class IntroductionsView extends StatelessWidget
{
  const IntroductionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          animationDuration: 540,
          onDone: (){},

          nextStyle: Styles.styleOfIntroButtons,
          backStyle: Styles.styleOfIntroButtons,
          doneStyle: Styles.styleOfIntroButtons,

          back: const Text('السَّابق', style: Styles.styleOfIntroText),
          done: const Text('اقرأ و ارتقِ', style: Styles.styleOfIntroText),
          next: const Text('التَّـالي', style: Styles.styleOfIntroText),

          showDoneButton: true,
          showNextButton: true,
          showBackButton: true,

          dotsDecorator: DotsDecorator(
              size: const Size.square(8),
              activeSize: const Size(30, 8),
              color: const Color(0xffA8DCD9),
              activeColor: const Color(0xffFE5D9F),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              )
          ),

          pages: [
            PageViewModel(
                title: 'Amigo',
                bodyWidget: const Text('القرآنُ خيرُ شفيعٍ يومَ القيامة', style: TextStyle(fontSize: 20, color: Colors.black))
            ),

            PageViewModel(
              title: 'Amigo',
              body: 'Adel',
            )
          ],
        ),
      ),
    );
  }
}

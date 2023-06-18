import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/introductions_cached_image.dart';
import '../../../../Core/Utils/styles.dart';
import '../../../../constants.dart';

class IntroductionsBody extends StatelessWidget
{
  const IntroductionsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white30,
      animationDuration: 540,
      onDone: ()
      {
        GoRouter.of(context).replace('/splashView');
      },

      nextStyle: Styles.styleOfIntroButtons,
      backStyle: Styles.styleOfIntroButtons,
      doneStyle: Styles.styleOfIntroButtons,

      back: const Text('السَّابق', style: Styles.styleOfIntroTextWhite),
      done: const Text('اقرأ و ارتقِ', style: Styles.styleOfIntroTextWhite),
      next: const Text('التَّـالي', style: Styles.styleOfIntroTextWhite),

      showDoneButton: true,
      showNextButton: true,
      showBackButton: true,

      dotsDecorator: DotsDecorator(
          size: const Size.square(8),
          activeSize: const Size(30, 8),
          color: blueColor,
          activeColor: pinkColor,
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          )
      ),

      pages: [
        PageViewModel(
            decoration: const PageDecoration(
              fullScreen: true,
            ),

            image: const IntroductionsCachedImage(imageUrl: 'https://cdn.dribbble.com/users/61921/screenshots/5839030/attachments/1258280/em-dark-large.png?compress=1&resize=800x600&vertical=center'),

            titleWidget: const Text('﴾بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِِ﴿', style: Styles.styleOfIntroTextWhite),

            bodyWidget: const Text('﴾فَذَكِّرْ بِالْقُرْآنِ مَنْ يَخَافُ وَعِيدِ﴿', style: Styles.styleOfIntroTextWhite)
        ),

        PageViewModel(
            decoration: const PageDecoration(
              fullScreen: true,
            ),

            image: const IntroductionsCachedImage(imageUrl: 'https://cdn.dribbble.com/users/305148/screenshots/3692877/media/d7c0f10abe88934ac768c01a799c08eb.jpg?compress=1&resize=400x300&vertical=center'),

            titleWidget: const Text(':قال رسول الله صلَّ الله عليه و سلم', style: Styles.styleOfIntroText),

            bodyWidget: const Text('(اقرؤوا القرآن فإنه يأتي يوم القيامة شفيعاً لأصحابه)\nصحيح مسلم', style: Styles.styleOfIntroText, textAlign: TextAlign.center)
        )
      ],
    );
  }
}

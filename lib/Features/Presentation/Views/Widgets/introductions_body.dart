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
        GoRouter.of(context).push('/splashView');
      },

      nextStyle: Styles.styleOfIntroButtons,
      backStyle: Styles.styleOfIntroButtons,
      doneStyle: Styles.styleOfIntroButtons,

      back: const Text('السَّابق', style: Styles.styleOfIntroTextWhite),
      done: const Text('اقرأ و ارتقِ', style: Styles.styleOfIntroTextWhite),
      next: const Text('التَّـالي', style: Styles.styleOfIntroText),

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

            image: const IntroductionsCachedImage(imageUrl: 'https://img.freepik.com/free-photo/free-photo-ramadan-kareem-eid-mubarak-old-fashioned-royal-elegant-lamp-with-mosque_1340-23562.jpg?w=1060&t=st=1686493250~exp=1686493850~hmac=d342f6d829a14b5a9cbfeace6ff7bb4eaacdd88fcf373154472c29a0b2a70188'),

            titleWidget: const Text('﴾بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِِ﴿', style: Styles.styleOfIntroTextWhite),

            bodyWidget: const Text('﴾فَذَكِّرْ بِالْقُرْآنِ مَنْ يَخَافُ وَعِيدِ﴿', style: Styles.styleOfIntroTextWhite)
        ),

        PageViewModel(
            decoration: const PageDecoration(
              fullScreen: true,
            ),

            image: const IntroductionsCachedImage(imageUrl: 'https://img.freepik.com/free-photo/teenage-girl-with-praying-peace-hope-dreams-concept_1150-9114.jpg?w=1060&t=st=1686493584~exp=1686494184~hmac=e502a7ca77b5b5f51b1d31323b153592fcc1b4fc8cc9b747eefb64ed2fb42744'),

            titleWidget: const Text(':قال رسول الله صلَّ الله عليه و سلم', style: Styles.styleOfIntroTextWhite),

            bodyWidget: const Text('(اقرؤوا القرآن فإنه يأتي يوم القيامة شفيعاً لأصحابه)\nصحيح مسلم', style: Styles.styleOfIntroTextWhite, textAlign: TextAlign.center)
        )
      ],
    );
  }
}
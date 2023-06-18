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

            image: const IntroductionsCachedImage(imageUrl: 'https://cdn.dribbble.com/users/10997312/screenshots/20330041/media/b5990f81035eeeee40e379d4fc043dc6.png?compress=1&resize=1000x750&vertical=center'),

            titleWidget: const Text('﴾بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِِ﴿', style: Styles.styleOfIntroTextWhite),

            bodyWidget: const Text('﴾فَذَكِّرْ بِالْقُرْآنِ مَنْ يَخَافُ وَعِيدِ﴿', style: Styles.styleOfIntroTextWhite)
        ),

        PageViewModel(
            decoration: const PageDecoration(
              fullScreen: true,
            ),

            image: const IntroductionsCachedImage(imageUrl: 'https://cdn.dribbble.com/userupload/6145681/file/original-2d8b46eff642c725fedfd32c4abc05a5.jpg?compress=1&resize=1200x1500'),

            titleWidget: const Text(':قال رسول الله صلَّ الله عليه و سلم', style: Styles.styleOfIntroTextWhite),

            bodyWidget: const Text('(اقرؤوا القرآن فإنه يأتي يوم القيامة شفيعاً لأصحابه)\nصحيح مسلم', style: Styles.styleOfIntroTextWhite, textAlign: TextAlign.center)
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/introductions_cached_image.dart';
import '../../../../Core/Utils/styles.dart';
import '../../../../constants.dart';

class IntroductionsBody extends StatefulWidget
{
  const IntroductionsBody({Key? key}) : super(key: key);

  @override
  State<IntroductionsBody> createState() => _IntroductionsBodyState();
}

class _IntroductionsBodyState extends State<IntroductionsBody>
{
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('assets/images/1st introduction image.png'), context);
    precacheImage(const AssetImage('assets/images/2nd introduction image.png'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white30,
      animationDuration: 540,
      onDone: ()
      {
        final visitedBox = Hive.box('Visited');
        visitedBox.put('user', true);

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

            image: const IntroductionsCachedImage(imageUrl: 'assets/images/1st introduction image.png'),

            titleWidget: const Text('﴾بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِِ﴿', style: Styles.styleOfIntroTextWhite),

            bodyWidget: const Text('﴾فَذَكِّرْ بِالْقُرْآنِ مَنْ يَخَافُ وَعِيدِ﴿', style: Styles.styleOfIntroTextWhite)
        ),

        PageViewModel(
            decoration: const PageDecoration(
              fullScreen: true,
            ),

            image: const IntroductionsCachedImage(imageUrl: 'assets/images/2nd introduction image.png'),

            titleWidget: const Text(':قال رسول الله صلَّ الله عليه و سلم', style: Styles.styleOfIntroTextWhite),

            bodyWidget: const Text('(اقرؤوا القرآن فإنه يأتي يوم القيامة شفيعاً لأصحابه)\nصحيح مسلم', style: Styles.styleOfIntroTextWhite, textAlign: TextAlign.center)
        )
      ],
    );
  }
}

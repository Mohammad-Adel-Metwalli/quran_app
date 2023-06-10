import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../../Core/Utils/styles.dart';

class IntroductionsView extends StatefulWidget
{
  const IntroductionsView({Key? key}) : super(key: key);

  @override
  State<IntroductionsView> createState() => _IntroductionsViewState();
}

class _IntroductionsViewState extends State<IntroductionsView>
{
  AssetImage? assetImage1;
  AssetImage? assetImage2;

  @override
  void initState()
  {
    super.initState();
    assetImage1 = const AssetImage('assets/images/free-photo-ramadan-kareem-eid-mubarak-old-fashioned-royal-elegant-lamp-with-mosque.jpg');
    assetImage2 = const AssetImage('assets/images/duaa.jpg');
  }

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(assetImage1!, context);
    precacheImage(assetImage2!, context);
  }

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white30,
          animationDuration: 540,
          onDone: (){},

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
              color: const Color(0xffA8DCD9),
              activeColor: const Color(0xffFE5D9F),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              )
          ),

          pages: [
            PageViewModel(
                decoration: const PageDecoration(
                  fullScreen: true,
                ),

                image: Image(
                    fit: BoxFit.fitHeight,
                    height: 900,
                    width: double.infinity,
                    alignment: Alignment.center,
                    image: assetImage1!
                ),

                titleWidget: const Text('﴾بِسْمِ اللهِ الرَّحْمنِ الرَّحِيمِِ﴿', style: Styles.styleOfIntroTextWhite),

                bodyWidget: const Text('﴾فَذَكِّرْ بِالْقُرْآنِ مَنْ يَخَافُ وَعِيدِ﴿', style: Styles.styleOfIntroTextWhite)
            ),

            PageViewModel(
                decoration: const PageDecoration(
                  fullScreen: true,
                ),

                image: Image(
                    fit: BoxFit.fitHeight,
                    height: 900,
                    width: double.infinity,
                    alignment: Alignment.center,
                    image: assetImage2!
                ),

                titleWidget: const Text(':قال رسول الله صلَّ الله عليه و سلم', style: Styles.styleOfIntroTextWhite),

                bodyWidget: const Text('(اقرؤوا القرآن فإنه يأتي يوم القيامة شفيعاً لأصحابه)\nصحيح مسلم', style: Styles.styleOfIntroTextWhite, textAlign: TextAlign.center)
            )
          ],
        ),
      ),
    );
  }
}

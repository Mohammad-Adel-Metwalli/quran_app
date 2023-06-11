import 'package:flutter/material.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/splash_view_customed_text.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/splash_view_image.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/splash_view_loading_indicator.dart';

class SplashViewBody extends StatelessWidget
{
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 300),
          child: Center(child: SplashViewImage()),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: SplashViewCustomedText(),
        ),

        Padding(
          padding: EdgeInsets.only(top: 1),
          child: SplashViewLoadingIndicator(),
        )
      ],
    );
  }
}

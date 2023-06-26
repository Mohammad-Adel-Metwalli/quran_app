import 'package:flutter/material.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/splash_view_customed_text.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/splash_view_image.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/splash_view_loading_indicator.dart';

class SplashViewBody extends StatefulWidget
{
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
{
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('assets/images/Quran logo.png'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return const Center(
      child: Column(
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
      ),
    );
  }
}

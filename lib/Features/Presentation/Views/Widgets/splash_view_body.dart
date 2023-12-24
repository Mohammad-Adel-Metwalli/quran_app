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
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.2),
      child: Center(
        child: Column(
          children: [
            const Spacer(flex: 3),

            const Center(child: SplashViewImage()),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            const SplashViewCustomedText(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            const SplashViewLoadingIndicator(),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}

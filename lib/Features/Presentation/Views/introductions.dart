import 'package:flutter/material.dart';
import 'package:quran_app/Features/Presentation/Views/Widgets/introductions_body.dart';

class IntroductionsView extends StatelessWidget
{
  const IntroductionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return const SafeArea(
      child: Scaffold(
        body: IntroductionsBody()
      ),
    );
  }
}

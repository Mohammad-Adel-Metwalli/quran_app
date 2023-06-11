import 'package:flutter/material.dart';
import 'package:quran_app/constants.dart';
import 'Widgets/splash_view_body.dart';

class SplashView extends StatelessWidget
{
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              brown,
              chamoisee,
              earthYellow
            ]
        )
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SplashViewBody(),
      ),
    );
  }
}


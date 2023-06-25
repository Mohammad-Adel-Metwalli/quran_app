import 'package:flutter/material.dart';
import 'package:quran_app/Features/Morning/Presentation/Views/Widgets/morning_azkar_body.dart';
import 'package:quran_app/constants.dart';

class MorningAzkar extends StatelessWidget
{
  const MorningAzkar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          body: const MorningAzkarBody(),
          backgroundColor: jasmine,
        )
    );
  }
}

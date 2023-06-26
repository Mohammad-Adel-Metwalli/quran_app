import 'package:flutter/material.dart';
import 'package:quran_app/Features/Prayer/Presentation/Views/Widgets/after_prayer_azkar_body.dart';
import 'package:quran_app/constants.dart';

class AfterPrayerAzkar extends StatelessWidget
{
  const AfterPrayerAzkar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          body: const AfterPrayerAzkarBody(),
          backgroundColor: jasmine,
        )
    );
  }
}

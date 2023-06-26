import 'package:flutter/material.dart';
import 'package:quran_app/Features/Prayer/Presentation/Views/Widgets/custom_after_prayer_azkar_app_bar_body.dart';
import '../../../../../constants.dart';

class CustomAfterPrayerAzkarAppBar extends StatelessWidget
{
  const CustomAfterPrayerAzkarAppBar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
        gradient: LinearGradient(
            colors: [Colors.blueGrey, blueColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
        ),
      ),

      child: const CustomAfterPrayerAzkarAppBarBody(),
    );
  }
}

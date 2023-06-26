import 'package:flutter/material.dart';
import 'package:quran_app/Features/Prayer/Presentation/Views/Widgets/custom_after_prayer_azkar_app_bar.dart';
import 'after_prayer_azkar_list_view.dart';

class AfterPrayerAzkarBody extends StatefulWidget
{
  const AfterPrayerAzkarBody({super.key});

  @override
  State<AfterPrayerAzkarBody> createState() => _AfterPrayerAzkarBodyState();
}

class _AfterPrayerAzkarBodyState extends State<AfterPrayerAzkarBody>
{
  @override
  Widget build(BuildContext context)
  {
    return const Stack(
      children: [
        AfterPrayerAzkarListView(),

        CustomAfterPrayerAzkarAppBar()
      ],
    );
  }
}

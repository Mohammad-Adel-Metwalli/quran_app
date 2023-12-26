import 'package:flutter/material.dart';
import 'package:quran_app/Features/Morning/Presentation/Views/Widgets/custom_morning_azkar_app_bar.dart';
import 'package:quran_app/Features/Morning/Presentation/Views/Widgets/morning_azkar_list_view.dart';

class MorningAzkarBody extends StatefulWidget
{
  const MorningAzkarBody({super.key});

  @override
  State<MorningAzkarBody> createState() => _MorningAzkarBodyState();
}

class _MorningAzkarBodyState extends State<MorningAzkarBody>
{
  @override
  Widget build(BuildContext context)
  {
    return const Stack(
      children: [
        MorningAzkarListView(),

        CustomMorningAzkarAppBar()
      ],
    );
  }
}

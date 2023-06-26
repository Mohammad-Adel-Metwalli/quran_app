import 'package:flutter/material.dart';
import 'package:quran_app/Features/Masjed/Presentation/Views/Widgets/custom_masjed_azkar_app_bar.dart';
import 'package:quran_app/Features/Masjed/Presentation/Views/Widgets/masjed_azkar_list_view.dart';

class MasjedAzkarBody extends StatefulWidget
{
  const MasjedAzkarBody({super.key});

  @override
  State<MasjedAzkarBody> createState() => _MasjedAzkarBodyState();
}

class _MasjedAzkarBodyState extends State<MasjedAzkarBody>
{
  @override
  Widget build(BuildContext context)
  {
    return const Stack(
      children: [
        MasjedAzkarListView(),

        CustomMasjedAzkarAppBar()
      ],
    );
  }
}

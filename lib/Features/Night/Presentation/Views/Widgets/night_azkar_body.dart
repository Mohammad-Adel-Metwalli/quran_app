import 'package:flutter/material.dart';
import 'custom_night_azkar_app_bar.dart';
import 'night_azkar_list_view.dart';

class NightAzkarBody extends StatefulWidget
{
  const NightAzkarBody({super.key});

  @override
  State<NightAzkarBody> createState() => _NightAzkarBodyState();
}

class _NightAzkarBodyState extends State<NightAzkarBody>
{
  @override
  Widget build(BuildContext context)
  {
    return const Stack(
      children: [
        NightAzkarListView(),

        CustomNightAzkarAppBar()
      ],
    );
  }
}

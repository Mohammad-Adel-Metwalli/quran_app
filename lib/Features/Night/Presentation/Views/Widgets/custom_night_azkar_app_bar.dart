import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import 'custom_night_azkar_app_bar_body.dart';

class CustomNightAzkarAppBar extends StatelessWidget
{
  const CustomNightAzkarAppBar({super.key});

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

      child: const CustomNightAzkarAppBarBody(),
    );
  }
}
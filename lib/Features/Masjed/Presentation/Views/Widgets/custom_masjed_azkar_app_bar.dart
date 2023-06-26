import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import 'custom_masjed_azkar_app_bar_body.dart';

class CustomMasjedAzkarAppBar extends StatelessWidget
{
  const CustomMasjedAzkarAppBar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.110,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
        gradient: LinearGradient(
            colors: [Colors.blueGrey, blueColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
        ),
      ),

      child: const CustomMasjedAzkarAppBarBody(),
    );
  }
}

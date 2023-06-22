import 'package:flutter/material.dart';
import 'package:quran_app/constants.dart';
import 'custom_tasbeeh_app_bar_body.dart';

class CustomTasbeehAppBar extends StatelessWidget
{
  const CustomTasbeehAppBar({Key? key}) : super(key: key);

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

      child: const CustomTasbeehAppBarBody(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:quran_app/constants.dart';
import 'custom_app_bar_body.dart';

class CustomAppBar extends StatelessWidget 
{
  const CustomAppBar({Key? key}) : super(key: key);

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

      child: const CustomAppBarBody(),
    );
  }
}


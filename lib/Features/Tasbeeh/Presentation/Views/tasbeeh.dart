import 'package:flutter/material.dart';
import 'package:quran_app/Features/Tasbeeh/Presentation/Views/Widgets/tasbeeh_body.dart';
import 'package:quran_app/constants.dart';

class Tasbeeh extends StatelessWidget
{
  const Tasbeeh({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: jasmine,
        body: const TasbeehBody(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quran_app/Features/Tasbeeh/Presentation/Views/Widgets/tasbeeh_body.dart';
import 'package:quran_app/constants.dart';

class Tasbeeh extends StatefulWidget
{
  const Tasbeeh({super.key});

  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh>
{
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
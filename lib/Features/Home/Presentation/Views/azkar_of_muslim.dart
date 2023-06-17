import 'package:flutter/material.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/azkar_items.dart';
import '../../../../constants.dart';

class AzkarOfMuslim extends StatelessWidget
{
  const AzkarOfMuslim({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: spaceCadit,
      body: const AzkarItems(),
    );
  }
}
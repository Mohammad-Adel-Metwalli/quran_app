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
    return Container(
      decoration: BoxDecoration(color: spaceCadit,borderRadius: const BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)), border: Border.all(color: ghostWhite, width: 5)),
      child: const AzkarItems(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:quran_app/Features/Night/Presentation/Views/Widgets/night_azkar_body.dart';
import '../../../../constants.dart';

class NightAzkar extends StatelessWidget
{
  const NightAzkar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          body: const NightAzkarBody(),
          backgroundColor: jasmine,
        )
    );
  }
}

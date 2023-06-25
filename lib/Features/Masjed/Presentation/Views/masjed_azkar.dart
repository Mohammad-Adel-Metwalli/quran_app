import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'Widgets/masjed_azkar_body.dart';

class MasjedAzkar extends StatelessWidget
{
  const MasjedAzkar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          body: const MasjedAzkarBody(),
          backgroundColor: jasmine,
        )
    );
  }
}

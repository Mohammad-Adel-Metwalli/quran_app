import 'package:flutter/material.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/quran_fehres_body.dart';
import '../../../../constants.dart';

class QuranFehres extends StatelessWidget
{
  const QuranFehres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: jasmine,
        body: const QuranFehresBody(),
      ),
    );
  }
}

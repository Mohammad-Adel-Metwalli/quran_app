import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quran_app/constants.dart';

class SplashViewLoadingIndicator extends StatelessWidget
{
  const SplashViewLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Center(
        child: CircularPercentIndicator(
          center: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Center(child: Icon(FontAwesomeIcons.mosque, color: offWhite)),
          ),
          animationDuration: 5000,
          animation: true,
          radius: 40,
          lineWidth: 12,
          percent: 1,
          backgroundColor: brownColorShade100,
          linearGradient: LinearGradient(
              colors: [
                darkBrown,
                darkBrown,
                lightBrown,
                lightBrown,
                offWhite
              ]
          ),
          circularStrokeCap: CircularStrokeCap.round,
        )
    );
  }
}

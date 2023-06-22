import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../constants.dart';

class TasbeehButton extends StatelessWidget
{
  const TasbeehButton({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 60,
      width: 120,
      decoration: BoxDecoration(
          color: zaffre,
          borderRadius: BorderRadius.circular(20)
      ),

      child: const Center(
        child: Row(
          children: [
            Spacer(),

            Icon(FontAwesomeIcons.kaaba, color: Colors.white, size: 30),

            SizedBox(width: 10),

            Text('سَبّحْ', style: TextStyle(color: Colors.white, fontSize: 20)),

            Spacer()
          ],
        ),
      ),
    );
  }
}
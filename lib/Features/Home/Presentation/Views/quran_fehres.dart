import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/quran_fehres_body.dart';
import '../../../../constants.dart';
import 'azkar_of_muslim.dart';

class QuranFehres extends StatefulWidget
{
  const QuranFehres({Key? key}) : super(key: key);

  @override
  State<QuranFehres> createState() => _QuranFehresState();
}

class _QuranFehresState extends State<QuranFehres>
{
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: jasmine,
        body: ZoomDrawer(
            controller: drawerController,
            style: DrawerStyle.style1,
            menuScreen: const AzkarOfMuslim(),
            moveMenuScreen: false,
            mainScreen: const QuranFehresBody(),
            borderRadius: 24,
            angle: 0,
            showShadow: false,
            slideWidth: MediaQuery.of(context).size.width * .75,
            openCurve: Curves.fastOutSlowIn,
            closeCurve: Curves.bounceIn,
        ),
      ),
    );
  }
}


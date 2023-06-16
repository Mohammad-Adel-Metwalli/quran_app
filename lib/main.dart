import 'package:flutter/material.dart';
import 'package:quran_app/Core/Utils/app_router.dart';
import 'package:quran_app/Core/Utils/assets.dart';

void main()
{
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget
{
  const QuranApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: AssetsData.quranFont
    );
  }
}

/*
transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.bounceOut;

                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                    return SlideTransition(position: animation.drive(tween), child: child,);
                  }
 */
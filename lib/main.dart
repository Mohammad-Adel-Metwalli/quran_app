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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/Features/Home/Presentation/Views/quran_fehres.dart';
import 'package:quran_app/Features/Home/Presentation/Views/read_surah.dart';
import 'package:quran_app/Features/Presentation/Views/introductions.dart';
import 'package:quran_app/Features/Presentation/Views/splash_view.dart';
import 'package:quran_app/Features/Tasbeeh/Presentation/Views/tasbeeh.dart';
import '../../Features/Morning/Presentation/Views/morning_azkar.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => 5 != 5 ? const IntroductionsView() : const SplashView()
        ),

        GoRoute(
            path: '/splashView',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: const SplashView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                        child: child
                    );
                  }
                  );
            }
        ),

        GoRoute(
          path: '/quranFehres',
          pageBuilder: (context, state)
          {
            return CustomTransitionPage(
                key: state.pageKey,
                child: const QuranFehres(),
                transitionsBuilder: (context, animation, secondaryAnimation, child)
                {
                  return FadeTransition(
                      opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                      child: child
                  );
                }
            );
          }
        ),

        GoRoute(
            path: '/readSurah',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: ReadSurah(surahNumber: state.extra as int),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                        child: child
                    );
                  }
              );
            }
        ),

        GoRoute(
            path: '/tasbeeh',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: const Tasbeeh(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                        child: child
                    );
                  }
              );
            }
        ),

        GoRoute(
            path: '/morningAzkar',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: const MorningAzkar(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                        child: child
                    );
                  }
              );
            }
        ),
      ]
  );
}
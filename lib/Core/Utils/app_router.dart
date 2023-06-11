import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/Features/Presentation/Views/introductions.dart';
import 'package:quran_app/Features/Presentation/Views/splash_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const IntroductionsView()
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
      ]
  );
}
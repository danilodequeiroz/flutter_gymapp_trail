import 'package:flutter/material.dart';
import 'package:flutter_gymapp/core/localization/l10n/app_localizations.dart';
import 'package:flutter_gymapp/feature/authentication/presentation/ui_screen_authentication.dart';
import 'package:flutter_gymapp/feature/training/creation/presentation/ui_screen_gym_exercise.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';

final navigatorKey = GlobalKey<NavigatorState>();
const mainScreen = "auth";

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.pink),
      navigatorKey: navigatorKey,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('pt'),
      ],
      home: getHomeWidget(),
    );
  }

  Widget getHomeWidget() {
    return switch (mainScreen) {
      'auth' => const ScreenAuth(),
      'gym_exercise' => const ScreenGymExercise(),
      _ => const ScreenAuth()
    };
  }

  Widget getHomeWidgetWithErrorPrinting(BuildContext context, AsyncSnapshot<FirebaseApp> snapshot) {
    if(snapshot.hasError){
      print(snapshot.error);
    }
    return switch (mainScreen) {
      'auth' => const ScreenAuth(),
      'gym_exercise' => const ScreenGymExercise(),
      _ => const ScreenAuth()
    };
  }
}
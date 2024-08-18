import 'package:flutter/material.dart';
import 'package:flutter_gymapp/ui/ui_screen_auth.dart';
import 'package:flutter_gymapp/ui/ui_screen_gym_exercise.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logging_to_logcat/logging_to_logcat.dart';
import 'package:logging/logging.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

final navigatorKey = GlobalKey<NavigatorState>();
const mainScreen = "auth";

void main() async {
  initLogging();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

Future initLogging() async {
  Logger.root.activateLogcat();
  Logger.root.level = Level.ALL;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.pink),
      navigatorKey: navigatorKey,
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
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
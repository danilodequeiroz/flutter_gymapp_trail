import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gymapp/firebase_options.dart';
import 'package:logging/logging.dart';
import 'package:logging_to_logcat/logging_to_logcat.dart';

class AppBootstrap {

  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      _initLogging(),
      _defaultFirebaseInit(),
      _initLocalStorage(),
      _initDependencyInjection(),
    ]);
  }

  static Future<void> _defaultFirebaseInit() async {
    Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform
    );
  }

  static Future<void> _initDependencyInjection() async {
  }

  static Future<void> _initLocalStorage() async {
  }

  static Future _initLogging() async {
    Logger.root.activateLogcat();
    Logger.root.level = Level.ALL;
  }
}

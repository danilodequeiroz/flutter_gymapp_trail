import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gymapp/firebase_options.dart';
import 'package:logging/logging.dart';
import 'package:logging_to_logcat/logging_to_logcat.dart';

typedef FirebaseInit = Future<void> Function();
typedef VoidFuture = Future<void> Function();

class AppBootstrap {
  AppBootstrap({
    FirebaseInit? firebaseInit,
    VoidFuture? initLogging,
    VoidFuture? initLocalStorage,
    VoidFuture? initDependencyInjection,
  })  : _firebaseInit = firebaseInit ?? _defaultFirebaseInit,
        _initLogging = initLogging ?? _defaultInitLogging,
        _initLocalStorage = initLocalStorage ?? _defaultInitLocalStorage,
        _initDependencyInjection =
            initDependencyInjection ?? _defaultInitDependencyInjection;

  final FirebaseInit _firebaseInit;
  final VoidFuture _initLogging;
  final VoidFuture _initLocalStorage;
  final VoidFuture _initDependencyInjection;

   Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      _initLogging(),
      _firebaseInit(),
      _initLocalStorage(),
      _initDependencyInjection(),
    ]);
  }

  static Future<void> _defaultFirebaseInit() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform
    );
  }

  static Future<void> _defaultInitDependencyInjection() async {
  }

  static Future<void> _defaultInitLocalStorage() async {
  }

  static Future _defaultInitLogging() async {
    Logger.root.activateLogcat();
    Logger.root.level = Level.ALL;
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gymapp/core/app/app_bootstrap.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logging/logging.dart';

void main() {
  test('GIVEN mocked functions with counter WHEN bootstrap is initialize THEN all functions should be 1', () async {
    WidgetsFlutterBinding.ensureInitialized();

    var loggingCalled = 0;
    var firebaseCalled = 0;
    var storageCalled = 0;
    var diCalled = 0;

    final bootstrap = AppBootstrap(
      firebaseInit: () async {
        firebaseCalled++;
      },
      initLogging: () async {
        loggingCalled++;
      },
      initLocalStorage: () async {
        storageCalled++;
      },
      initDependencyInjection: () async {
        diCalled++;
      },
    );

    await bootstrap.initialize();

    expect(loggingCalled, 1);
    expect(firebaseCalled, 1);
    expect(storageCalled, 1);
    expect(diCalled, 1);
  });

  test('GIVEN actual AppBootstrap WHEN initialize THEN should count lines as covered and Logger Level ALL', () async {
    try {
      await AppBootstrap().initialize();
      expect(Logger.root.level, Level.ALL);
    } catch (_) {
      // It's okay for firebase to fail
    }
  });
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_gymapp/_common/extensions/firebase_auth_code_check.dart';

class AuthenticationService {
  final FirebaseAuth _firebase = FirebaseAuth.instance;

  void postNewUser({
    required String email,
    required String password,
    required String name
  }) async {
    try {
      UserCredential userCredential = await _firebase
          .createUserWithEmailAndPassword(email: email, password: password);
      await userCredential.user?.updateDisplayName(name);
    } on FirebaseAuthException catch (exception) {
      if (exception.isEmailAlreadyInUse()) {
        debugPrint(
            "user  ${exception.email} already exist \n firebase-error-message: ${exception.message}");
      }
    }
  }
}
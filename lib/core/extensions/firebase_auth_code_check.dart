import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseAuthCodeCheck on FirebaseAuthException {
  bool isEmailAlreadyInUse() {
    return code ==  'email-already-in-use';
  }
}
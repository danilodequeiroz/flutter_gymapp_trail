import 'package:flutter/material.dart';
import 'package:flutter_gymapp/localization/localization.dart';

class AuthenticationFormValidator {
  BuildContext context;

  AuthenticationFormValidator({required this.context});

  emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return appLocalization(context).emailCannotBeEmpty;
    }
    if (value.length < 5) {
      return appLocalization(context).emailIsTooShort;
    }
    if (!value.contains("@")) {
      return appLocalization(context).emailIsInvalid;
    }
    return null;
  }

  passwordValidator(String? value) {
    if (value != null && value.length <= 9) {
      return appLocalization(context).passwordIsShort;
    }
    if (!(value?.contains(RegExp(r'[A-Z]')) ?? true)) {
      return appLocalization(context).passwordMustContainUppercaseCharacter;
    }
    if (!(value?.contains(RegExp(r'[a-z]')) ?? true)) {
      return appLocalization(context).passwordMustContainLowercaseCharacter;
    }
    if (!(value?.contains(RegExp(r'[0-9]')) ?? true)) {
      return appLocalization(context).passwordMustContainNumber;
    }
    if (!(value?.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')) ?? true)) {
      return appLocalization(context).passwordMustContainSpecialCharacter;
    }
    return null;
  }

  userNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return appLocalization(context).nameCannotBeEmpty;
    }
    if (value.length < 5) {
      return appLocalization(context).nameIsTooShort;
    }
    return null;
  }
}
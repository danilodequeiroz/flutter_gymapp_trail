import 'package:flutter/material.dart';
import 'package:flutter_gymapp/core/theme/colors.dart';

const double two = 2;
const double four = 4;
const double eight = 16;
const double sixteen = 16;
const double sixtyFour = 64;

class AuthenticationTextFieldDecoration {

  static bool hideText = true;

  static InputDecoration getCustomInputDecoration(String label) {
    return InputDecoration(
        hintText: label,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.only(
            left: sixteen, right: sixteen, top: eight, bottom: eight),
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(sixtyFour)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(sixtyFour),
          borderSide: const BorderSide(color: Colors.black, width: two),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sixtyFour),
            borderSide: const BorderSide(
                color: SelfColors.blue_0xff00ADFA, width: four)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sixtyFour),
            borderSide: const BorderSide(color: Colors.pink, width: two)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sixtyFour),
            borderSide: const BorderSide(color: Colors.pink, width: four))
    );
  }

  static InputDecoration getCustomInputDecorationPassword({ required String label,
      required Function() onHidePasswordPressed} ) {
    {
      return InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              hideText
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: SelfColors.blue_0xff0A6D92,
            ),
            onPressed: onHidePasswordPressed,
          ),
          hintText: label,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(
              left: sixteen, right: sixteen, top: eight, bottom: eight),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(sixtyFour)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sixtyFour),
            borderSide: const BorderSide(color: Colors.black, width: two),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(sixtyFour),
              borderSide: const BorderSide(
                  color: SelfColors.blue_0xff00ADFA, width: four)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(sixtyFour),
              borderSide: const BorderSide(color: Colors.pink, width: two)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(sixtyFour),
              borderSide: const BorderSide(color: Colors.pink, width: four))
      );
    }
  }
}

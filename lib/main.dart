import 'package:flutter/material.dart';
import 'package:flutter_gymapp/core/app/app_bootstrap.dart';
import 'package:flutter_gymapp/gym_app.dart';

void main() async {
  await AppBootstrap().initialize();
  runApp(const GymApp());
}

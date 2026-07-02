import 'package:flutter/widgets.dart';
import 'package:flutter_gymapp/core/localization/localization.dart';
import 'package:flutter_gymapp/feature/training/creation/data/model_exercise.dart';
import 'package:flutter_gymapp/feature/training/creation/data/model_feeling.dart';

class MockFactory {
  static Exercise getExercise(BuildContext context) {
    return Exercise(id: "EX001",
        name: appLocalization(context).highPronadePulldown,
        training: appLocalization(context).trainingA,
        howTo: appLocalization(context).holdTheBarAndPull);
  }

  static List<Feeling> someFeelingList() {
    return [
      Feeling(
          id: "FE001", feeling: "Nenhuma ativação hoje", date: "2023-07-12"),
      Feeling(id: "FE002", feeling: "Pouca ativação hoje", date: "2023-07-13"),
      Feeling(id: "FE003", feeling: "Pouca ativação hoje", date: "2023-07-14"),
      Feeling(id: "FE004", feeling: "Alguma ativação hoje", date: "2023-07-15"),
      Feeling(id: "FE005", feeling: "Alguma ativação hoje", date: "2023-07-16"),
      Feeling(
          id: "FE006",
          feeling: "Não consigo mexer o braço na região",
          date: "2023-07-17"),
    ];
  }
}

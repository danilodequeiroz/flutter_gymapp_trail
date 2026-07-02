import 'package:flutter/material.dart';
import 'package:flutter_gymapp/core/theme/colors.dart';
import 'package:flutter_gymapp/localization/localization.dart';
import 'package:flutter_gymapp/feature/training/creation/data/mock/factory.dart';
import 'package:flutter_gymapp/feature/training/creation/data/model_feeling.dart';

class ScreenGymExercise extends StatelessWidget {
  const ScreenGymExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                MockFactory.getExercise(context).name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(MockFactory.getExercise(context).training, style: const TextStyle(fontSize: 15))
            ],
          ),
          centerTitle: true,
          backgroundColor: SelfColors.blue_0xff0A6D92,
          elevation: 0,
          toolbarHeight: 72,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Clicked");
            },
            child: const Icon(Icons.plus_one)),
        body: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListView(
            children: [
              SizedBox(
                  height: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(appLocalization(context).putPictureKeyLabel)),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(appLocalization(context).deletePictureKeyLabel))
                    ],
                  )),
              const SizedBox(height: 8),
              Text(appLocalization(context).howToDoKeyLabel,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              const SizedBox(height: 8),
              Text(MockFactory.getExercise(context).howTo),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(color: Colors.black45, thickness: 0.75),
              ),
              Text(appLocalization(context).howAmIFeelingKeyLabel,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: getListChildren(),
              ),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(color: Colors.black45, thickness: 0.75)),
            ],
          ),
        ));
  }

  List<Widget> getListChildren() {
    List<Widget> valor = List.generate(MockFactory.someFeelingList().length, (index) {
      Feeling currentFeeling = MockFactory.someFeelingList()[index];
      return ListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Text(currentFeeling.feeling),
        subtitle: Text(currentFeeling.date),
        leading: const Icon(Icons.keyboard_double_arrow_right_rounded),
        trailing: IconButton(
            icon: const Icon(Icons.delete_outline),
            color: Colors.redAccent,
            onPressed: () {
              debugPrint(
                  "Deleted\nid:${currentFeeling.id} feeling:${currentFeeling.feeling}");
            }),
      );
    });
    valor.add(const ListTile(
      title: Center(
          child: Column(
        children: [
          Text("Fim da Lista",
              style: TextStyle(
                fontSize: 14,
              )),
          Text("(;",
              style: TextStyle(
                fontSize: 14,
              ))
        ],
      )),
      // leading: Icon(Icons.keyboard_double_arrow_right_rounded),
      // trailing: Icon(Icons.keyboard_double_arrow_left_rounded),
    ));
    return valor;
  }
}

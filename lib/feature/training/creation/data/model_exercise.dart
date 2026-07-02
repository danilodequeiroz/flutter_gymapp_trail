class Exercise {
  String id;
  String name;
  String training;
  String howTo;
  String? imageUrl;

  Exercise(
      {required this.id,
      required this.name,
      required this.training,
      required this.howTo});

  //Same as previous but with named constructor and named parameters to be clearest as possible
  Exercise.clear(
      {required this.id,
      required this.name,
      required this.training,
      required this.howTo});

  Exercise.unclear(this.id, this.name, this.training, this.howTo);

  Exercise.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        training = map["training"],
        howTo = map["howTo"],
        imageUrl = map["imageUrl"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "training": training,
      "howTo": howTo,
      "imageUrl": imageUrl
    };
  }
}
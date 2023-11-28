import 'dart:convert';

class personModel {
  int id;
  String name;

  personModel(this.id, this.name);

  personModel.formJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"];
}

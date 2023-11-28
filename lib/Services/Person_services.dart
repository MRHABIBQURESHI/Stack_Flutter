import 'package:stakproject/Api_Client/api_client.dart';
import 'package:stakproject/Model/person_model.dart';
import 'package:stakproject/units/Api_Constrant.dart';

class PersonService {
  final ApiClient _appClient = ApiClient();

  Future<List<personModel>> getPerson() async {
    //   final response = _apiclient.get(ApiConstants().getPerson);
    //   List<personModel> person = [];
    //   for (var json in response["data"]) {
    //     Persons.add(personModel.formJson(json));
    //   }
    //   return persons;

    List<personModel> Person = [];

    await Future.delayed(Duration(seconds: 3));
    Person = [
      personModel(1, "me"),
      personModel(2, "meme"),
      personModel(3, "mememe"),
    ];
    return Person;
  }
}

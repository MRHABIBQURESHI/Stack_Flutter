import 'dart:js_util';

import 'package:stacked/stacked.dart';

// class HomeViewModel extends BaseViewModel {
//   int count = 0;

//   increment() {
//     count++;
//     notifyListeners();
//   }
// }

import 'dart:async';
import 'package:stacked/stacked.dart';
import 'package:stakproject/Model/person_model.dart';
import 'package:stakproject/Services/Person_services.dart';

class HomeViewModel extends BaseViewModel {
  List<personModel> persons = [];
  bool isDataFetched = false;

  getPersons() async {
    persons = await PersonService().getPerson();
    isDataFetched = true;
    notifyListeners();
  }
}

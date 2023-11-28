import 'package:http/http.dart' as http;
import 'package:stakproject/units/Api_Constrant.dart';

class ApiClient {
  get() {
    get(endpoint) {
      http.get(Uri.parse(ApiConstants.baseurl + endpoint));
    }
  }
}

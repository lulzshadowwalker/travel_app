import 'dart:convert';
import 'package:flutter_cubit/models/data.dart';
import 'package:http/http.dart' as http;

class DataService {
  String baseUrl = 'http://mark.bslmeiyu.com/api';

  Future<List<DataModel>> getInfo() async {
    String apiUrl = '/getplaces';

    http.Response response = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (response.statusCode == 200) {
        List body = json.decode(response.body);
        return body.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print('httpResponse: $e');
      return [];
    }
  }
}

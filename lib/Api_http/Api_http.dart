import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:untitled2/Screen/Modal/student_modal.dart';

class Api_http {
  Api_http._();

  static Api_http api_http = Api_http._();

  Future<List<StudentModal>> getApi() async {
    var data = await rootBundle.loadString("assets/json/data.json");
    List json = jsonDecode(data);
    return json.map((e) => StudentModal.fromJson(e)).toList();
  }
}

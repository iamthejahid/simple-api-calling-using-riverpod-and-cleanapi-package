// ignore_for_file: avoid_print

import "dart:io";
import 'dart:async';
import "dart:convert";
import 'package:http/http.dart' as http;

Map<String, String> basicHeaderInfo() {
  String _username = "";
  String _password = "";
  return {
    HttpHeaders.acceptHeader: "application/json",
    HttpHeaders.contentTypeHeader: "application/json",
    HttpHeaders.authorizationHeader:
        "Basic " + base64Encode(utf8.encode("$_username:$_password")),
  };
}

Future<Map<String, String>> bearerHeaderInfo() async {
  String accessToken = "";
  return {
    HttpHeaders.acceptHeader: "application/json",
    HttpHeaders.contentTypeHeader: "application/json",
    HttpHeaders.authorizationHeader: "Bearer $accessToken",
  };
}

Future<Map<String, String>> normalHeader() async {
  return {
    HttpHeaders.acceptHeader: "application/json",
    HttpHeaders.contentTypeHeader: "application/json",
  };
}

class ApiMethod {
  // bool isBasic;
  // ApiMethod(this.isBasic);

  Future<Map<String, dynamic>> get(String url) async {
    final response = await http.get(Uri.parse(url), headers: {
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.contentTypeHeader: "application/json",
    });
    print("-------|Get Response|-------");
    print(response.body);
    print("-----|Get Response End|-----");
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      // ToastMessage.error("Something Went Wrong");
      print("Eroor");
      throw Exception();
    }
  }
}

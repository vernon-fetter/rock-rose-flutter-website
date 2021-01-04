import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rock_rose/models/access_token_model.dart';
import 'package:rock_rose/constants/api_address.dart';

// Author: VC Fetter

Future<AccessToken> postAuthorization() async {
  String link =
      "${apiAddress}api/v1/security/login";
  Map dataBody = {"username": "Vern", "password": "princeton20", "provider": "db"};
  var body = json.encode(dataBody);
  final response = await http
      .post(Uri.encodeFull(link), headers: {"Content-Type": "application/json"},
  body: body);
  return accessTokenFromJson(response.body);
}

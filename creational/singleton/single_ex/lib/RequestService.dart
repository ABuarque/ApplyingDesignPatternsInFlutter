import 'package:http/http.dart';
import 'dart:async';
class RequestService {

  static final RequestService _INSTANCE = new RequestService._internal();

  final String _API_ENDPOINT = "http://api.github.com";

  factory RequestService() {
    return _INSTANCE;
  }

  RequestService._internal() {}
  
  Future<Response> getUserData(String userName) async {
    return await get("$_API_ENDPOINT/users/$userName");
  }

  Future<Response> getUserRepositories(String userName) async {
    return await get("$_API_ENDPOINT/users/$userName/repos");
  }

  Future<Response> getUserOrganiations(String userName) async {
    return await get("$_API_ENDPOINT/users/$userName/orgs");
  }
}

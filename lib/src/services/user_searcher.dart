import "dart:convert";
import "package:http/http.dart";

class UserSearcherService {

  final String _API_ENDPOINT = "http://api.github.com/users/";

  static final UserSearcherService _INSTANCE = new UserSearcherService._internal();

  factory UserSearcherService() {
    return _INSTANCE;
  }

  UserSearcherService._internal() {

  }

  getUserInfo(String userName) async {
    var response = await get(_API_ENDPOINT + userName);
    return json.decode(response.body);
  }

  getOrganizationsInfo(String userName) async {
    var response = await get("https://api.github.com/users/${userName}/orgs");
    return json.decode(response.body);
  }

}
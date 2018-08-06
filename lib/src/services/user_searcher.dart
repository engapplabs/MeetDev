import "dart:convert";
import "package:http/http.dart";

class UserSearcherService {

  static final UserSearcherService _INSTANCE = new UserSearcherService._internal();

  factory UserSearcherService() {
    return _INSTANCE;
  }

  UserSearcherService._internal() {

  }

  getUserInfo(String userName) async {
    var response = await get("http://api.github.com/users/$userName");
    return json.decode(response.body);
  }

  getOrganizationsInfo(String userName) async {
    var response = await get("https://api.github.com/users/${userName}/orgs");
    return json.decode(response.body);
  }

  getRepositoriesInfo(String userName) async {
    var response = await get("https://api.github.com/users/${userName}/repos");
    return json.decode(response.body);
  }

}

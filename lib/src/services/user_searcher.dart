import "dart:convert";
import "package:http/http.dart";

class UserSearcherService {

  static const String _API_ENDPOINT = "http://api.github.com/users/";

  static getUserInfo(String userName) async {
    var response = await get(_API_ENDPOINT + userName);
    return json.decode(response.body);
  }

}
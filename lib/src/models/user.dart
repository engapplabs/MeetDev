class User {
  int id;
  String login;
  String avatarUrl;
  String name;
  String company;
  String blog;
  String location;
  String bio; 

  User(id, login, avaterUrl, name, company, blog, location, bio);

  User.fromJSON(userState) {
    id = userState["id"];
    login = userState["login"];
    avatarUrl = userState["avatarUrl"];
    name = userState["name"];
    company = userState["company"];
    location = userState["location"];
    bio = userState["bio"];
    blog = userState["blog"];
  }
}

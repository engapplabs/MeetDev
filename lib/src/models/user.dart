import "./organization.dart";
import "./repository.dart";

class User {
  int id;
  String login;
  String avatarUrl;
  String name;
  String company;
  String blog;
  String location;
  String bio; 
  List<Organization> organizations;
  List<Repository> repositories;


  User(id, login, avaterUrl, name, company, blog, location, bio);

  User.fromJSON(userState) {
    id = userState["id"];
    login = userState["login"];
    avatarUrl = userState["avatar_url"];
    name = userState["name"];
    company = userState["company"];
    location = userState["location"];
    bio = userState["bio"];
    blog = userState["blog"];
  }

  void setOrganizations(List<Organization> organizations) {
    this.organizations = organizations;
  }

  void setRepositories(List<Repository> repositories) {
    this.repositories = repositories;
  }

  String toString() {
    return "id: $id, name: $name, bio: $bio";
  }
}

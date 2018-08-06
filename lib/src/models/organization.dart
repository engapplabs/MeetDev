class Organization {
  String avartarUrl;
  String login;

  Organization(avatarUrl, login);

  Organization.fromJson(organizationState) {
    avartarUrl = organizationState["avatar_url"];
    login = organizationState["login"];
  }

  String toString() {
    return "login: $login, avatarUrk: $avartarUrl";
  }
}

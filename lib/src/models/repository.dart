class Repository {
  String name;
  String description;

  Repository(name, description);

  Repository.fromJSON(repositoryState) {
    name = repositoryState["name"];
    description = repositoryState["description"];
  }

  String toString() {
    return "name: $name, description: $description";
  }
}
import "../models/user.dart";
import "../models/organization.dart";
import "./user_searcher.dart";
import "../models/repository.dart";

class UserInfoRetriever {

  static UserInfoRetriever _INSTANCE = new UserInfoRetriever._internal();

  factory UserInfoRetriever() {
    return _INSTANCE;
  }

  UserInfoRetriever._internal() {

  }

  retrieveUserInfo(String userName) async {
    var givenInfoUser = await UserSearcherService().getUserInfo(userName);
    final user = new User.fromJSON(givenInfoUser);
   
    var organizationsRequest = await UserSearcherService().getOrganizationsInfo(userName);
    List<Organization> organizations = []; 
    for (var organizationJson in organizationsRequest)
      organizations.add(new Organization.fromJson(organizationJson));
    user.setOrganizations(organizations);
    
    var repositoriesRequest = await UserSearcherService().getRepositoriesInfo(userName);
    List<Repository> repositories = [];
    for(var repositoryJson in repositoriesRequest) 
      repositories.add(new Repository.fromJSON(repositoryJson));
    user.setRepositories(repositories);
    
    return user;
  }
}

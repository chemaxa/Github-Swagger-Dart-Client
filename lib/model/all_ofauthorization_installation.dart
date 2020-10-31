part of swagger.api;

class AllOfauthorizationInstallation {
  
  Object permissions = null;
/* Describe whether all repositories have been selected or there's a selection involved */
  String repositorySelection = null;
  //enum repositorySelectionEnum {  all,  selected,  };

  String singleFileName = null;

  String repositoriesUrl = null;

  SimpleUser account = null;

  AllOfauthorizationInstallation();

  @override
  String toString() {
    return 'AllOfauthorizationInstallation[permissions=$permissions, repositorySelection=$repositorySelection, singleFileName=$singleFileName, repositoriesUrl=$repositoriesUrl, account=$account, ]';
  }

  AllOfauthorizationInstallation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permissions = new Object.fromJson(json['permissions']);
    repositorySelection = json['repository_selection'];
    singleFileName = json['single_file_name'];
    repositoriesUrl = json['repositories_url'];
    account = new SimpleUser.fromJson(json['account']);
  }

  Map<String, dynamic> toJson() {
    return {
      'permissions': permissions,
      'repository_selection': repositorySelection,
      'single_file_name': singleFileName,
      'repositories_url': repositoriesUrl,
      'account': account
     };
  }

  static List<AllOfauthorizationInstallation> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfauthorizationInstallation>() : json.map((value) => new AllOfauthorizationInstallation.fromJson(value)).toList();
  }

  static Map<String, AllOfauthorizationInstallation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfauthorizationInstallation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfauthorizationInstallation.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class ScopedInstallation {
  
  Object permissions = null;
/* Describe whether all repositories have been selected or there's a selection involved */
  String repositorySelection = null;
  //enum repositorySelectionEnum {  all,  selected,  };

  String singleFileName = null;

  String repositoriesUrl = null;

  SimpleUser account = null;

  ScopedInstallation();

  @override
  String toString() {
    return 'ScopedInstallation[permissions=$permissions, repositorySelection=$repositorySelection, singleFileName=$singleFileName, repositoriesUrl=$repositoriesUrl, account=$account, ]';
  }

  ScopedInstallation.fromJson(Map<String, dynamic> json) {
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

  static List<ScopedInstallation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScopedInstallation>() : json.map((value) => new ScopedInstallation.fromJson(value)).toList();
  }

  static Map<String, ScopedInstallation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScopedInstallation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScopedInstallation.fromJson(value));
    }
    return map;
  }
}

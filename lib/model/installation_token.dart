part of swagger.api;

class InstallationToken {
  
  String token = null;

  String expiresAt = null;

  InstallationtokenPermissions permissions = null;

  String repositorySelection = null;
  //enum repositorySelectionEnum {  all,  selected,  };

  List<Repository> repositories = [];

  String singleFile = null;

  InstallationToken();

  @override
  String toString() {
    return 'InstallationToken[token=$token, expiresAt=$expiresAt, permissions=$permissions, repositorySelection=$repositorySelection, repositories=$repositories, singleFile=$singleFile, ]';
  }

  InstallationToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token = json['token'];
    expiresAt = json['expires_at'];
    permissions = new InstallationtokenPermissions.fromJson(json['permissions']);
    repositorySelection = json['repository_selection'];
    repositories = Repository.listFromJson(json['repositories']);
    singleFile = json['single_file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'expires_at': expiresAt,
      'permissions': permissions,
      'repository_selection': repositorySelection,
      'repositories': repositories,
      'single_file': singleFile
     };
  }

  static List<InstallationToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstallationToken>() : json.map((value) => new InstallationToken.fromJson(value)).toList();
  }

  static Map<String, InstallationToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstallationToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstallationToken.fromJson(value));
    }
    return map;
  }
}

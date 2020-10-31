part of swagger.api;

class AuthenticationToken {
  /* The token used for authentication */
  String token = null;
/* The time this token expires */
  DateTime expiresAt = null;

  Object permissions = null;
/* The repositories this token has access to */
  List<Repository> repositories = [];

  String singleFile = null;
/* Describe whether all repositories have been selected or there's a selection involved */
  String repositorySelection = null;
  //enum repositorySelectionEnum {  all,  selected,  };

  AuthenticationToken();

  @override
  String toString() {
    return 'AuthenticationToken[token=$token, expiresAt=$expiresAt, permissions=$permissions, repositories=$repositories, singleFile=$singleFile, repositorySelection=$repositorySelection, ]';
  }

  AuthenticationToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token = json['token'];
    expiresAt = json['expires_at'] == null ? null : DateTime.parse(json['expires_at']);
    permissions = new Object.fromJson(json['permissions']);
    repositories = Repository.listFromJson(json['repositories']);
    singleFile = json['single_file'];
    repositorySelection = json['repository_selection'];
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'expires_at': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String(),
      'permissions': permissions,
      'repositories': repositories,
      'single_file': singleFile,
      'repository_selection': repositorySelection
     };
  }

  static List<AuthenticationToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuthenticationToken>() : json.map((value) => new AuthenticationToken.fromJson(value)).toList();
  }

  static Map<String, AuthenticationToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthenticationToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuthenticationToken.fromJson(value));
    }
    return map;
  }
}

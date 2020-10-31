part of swagger.api;

class Authorization {
  
  int id = null;

  String url = null;
/* A list of scopes that this authorization is in. */
  List<String> scopes = [];

  String token = null;

  String tokenLastEight = null;

  String hashedToken = null;

  ApplicationgrantApp app = null;

  String note = null;

  String noteUrl = null;

  DateTime updatedAt = null;

  DateTime createdAt = null;

  String fingerprint = null;

  AllOfauthorizationUser user = null;

  AllOfauthorizationInstallation installation = null;

  Authorization();

  @override
  String toString() {
    return 'Authorization[id=$id, url=$url, scopes=$scopes, token=$token, tokenLastEight=$tokenLastEight, hashedToken=$hashedToken, app=$app, note=$note, noteUrl=$noteUrl, updatedAt=$updatedAt, createdAt=$createdAt, fingerprint=$fingerprint, user=$user, installation=$installation, ]';
  }

  Authorization.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    url = json['url'];
    scopes = (json['scopes'] as List).map((item) => item as String).toList();
    token = json['token'];
    tokenLastEight = json['token_last_eight'];
    hashedToken = json['hashed_token'];
    app = new ApplicationgrantApp.fromJson(json['app']);
    note = json['note'];
    noteUrl = json['note_url'];
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    fingerprint = json['fingerprint'];
    user = new AllOfauthorizationUser.fromJson(json['user']);
    installation = new AllOfauthorizationInstallation.fromJson(json['installation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'scopes': scopes,
      'token': token,
      'token_last_eight': tokenLastEight,
      'hashed_token': hashedToken,
      'app': app,
      'note': note,
      'note_url': noteUrl,
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'fingerprint': fingerprint,
      'user': user,
      'installation': installation
     };
  }

  static List<Authorization> listFromJson(List<dynamic> json) {
    return json == null ? new List<Authorization>() : json.map((value) => new Authorization.fromJson(value)).toList();
  }

  static Map<String, Authorization> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Authorization>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Authorization.fromJson(value));
    }
    return map;
  }
}

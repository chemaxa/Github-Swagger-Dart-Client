part of swagger.api;

class Body150 {
  
  List<String> schemas = [];
/* The name of the user, suitable for display to end-users */
  String displayName = null;

  String externalId = null;

  List<String> groups = [];

  bool active = null;
/* Configured by the admin. Could be an email, login, or username */
  String userName = null;

  Scimv2organizationsorgUsersName name = null;
/* user emails */
  List<Scimv2organizationsorgUsersscimUserIdEmails> emails = [];

  Body150();

  @override
  String toString() {
    return 'Body150[schemas=$schemas, displayName=$displayName, externalId=$externalId, groups=$groups, active=$active, userName=$userName, name=$name, emails=$emails, ]';
  }

  Body150.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    displayName = json['displayName'];
    externalId = json['externalId'];
    groups = (json['groups'] as List).map((item) => item as String).toList();
    active = json['active'];
    userName = json['userName'];
    name = new Scimv2organizationsorgUsersName.fromJson(json['name']);
    emails = Scimv2organizationsorgUsersscimUserIdEmails.listFromJson(json['emails']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'displayName': displayName,
      'externalId': externalId,
      'groups': groups,
      'active': active,
      'userName': userName,
      'name': name,
      'emails': emails
     };
  }

  static List<Body150> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body150>() : json.map((value) => new Body150.fromJson(value)).toList();
  }

  static Map<String, Body150> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body150>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body150.fromJson(value));
    }
    return map;
  }
}

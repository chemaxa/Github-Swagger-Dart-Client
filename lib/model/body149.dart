part of swagger.api;

class Body149 {
  /* Configured by the admin. Could be an email, login, or username */
  String userName = null;
/* The name of the user, suitable for display to end-users */
  String displayName = null;

  Scimv2organizationsorgUsersName name = null;
/* user emails */
  List<Scimv2organizationsorgUsersEmails> emails = [];

  List<String> schemas = [];

  String externalId = null;

  List<String> groups = [];

  bool active = null;

  Body149();

  @override
  String toString() {
    return 'Body149[userName=$userName, displayName=$displayName, name=$name, emails=$emails, schemas=$schemas, externalId=$externalId, groups=$groups, active=$active, ]';
  }

  Body149.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userName = json['userName'];
    displayName = json['displayName'];
    name = new Scimv2organizationsorgUsersName.fromJson(json['name']);
    emails = Scimv2organizationsorgUsersEmails.listFromJson(json['emails']);
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    externalId = json['externalId'];
    groups = (json['groups'] as List).map((item) => item as String).toList();
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'displayName': displayName,
      'name': name,
      'emails': emails,
      'schemas': schemas,
      'externalId': externalId,
      'groups': groups,
      'active': active
     };
  }

  static List<Body149> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body149>() : json.map((value) => new Body149.fromJson(value)).toList();
  }

  static Map<String, Body149> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body149>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body149.fromJson(value));
    }
    return map;
  }
}

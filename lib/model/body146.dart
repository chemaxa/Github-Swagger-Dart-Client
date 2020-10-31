part of swagger.api;

class Body146 {
  /* The SCIM schema URIs. */
  List<String> schemas = [];
/* The username for the user. */
  String userName = null;

  Scimv2enterprisesenterpriseUsersName name = null;
/* List of user emails. */
  List<Scimv2enterprisesenterpriseUsersEmails> emails = [];
/* List of SCIM group IDs the user is a member of. */
  List<Scimv2enterprisesenterpriseUsersGroups> groups = [];

  Body146();

  @override
  String toString() {
    return 'Body146[schemas=$schemas, userName=$userName, name=$name, emails=$emails, groups=$groups, ]';
  }

  Body146.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    userName = json['userName'];
    name = new Scimv2enterprisesenterpriseUsersName.fromJson(json['name']);
    emails = Scimv2enterprisesenterpriseUsersEmails.listFromJson(json['emails']);
    groups = Scimv2enterprisesenterpriseUsersGroups.listFromJson(json['groups']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'userName': userName,
      'name': name,
      'emails': emails,
      'groups': groups
     };
  }

  static List<Body146> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body146>() : json.map((value) => new Body146.fromJson(value)).toList();
  }

  static Map<String, Body146> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body146>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body146.fromJson(value));
    }
    return map;
  }
}

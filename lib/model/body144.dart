part of swagger.api;

class Body144 {
  /* The SCIM schema URIs. */
  List<String> schemas = [];
/* The name of the SCIM group. This must match the GitHub organization that the group maps to. */
  String displayName = null;

  List<Scimv2enterprisesenterpriseGroupsMembers> members = [];

  Body144();

  @override
  String toString() {
    return 'Body144[schemas=$schemas, displayName=$displayName, members=$members, ]';
  }

  Body144.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    displayName = json['displayName'];
    members = Scimv2enterprisesenterpriseGroupsMembers.listFromJson(json['members']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'displayName': displayName,
      'members': members
     };
  }

  static List<Body144> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body144>() : json.map((value) => new Body144.fromJson(value)).toList();
  }

  static Map<String, Body144> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body144>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body144.fromJson(value));
    }
    return map;
  }
}

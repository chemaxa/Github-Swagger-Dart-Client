part of swagger.api;

class Body143 {
  /* The SCIM schema URIs. */
  List<String> schemas = [];
/* The name of the SCIM group. This must match the GitHub organization that the group maps to. */
  String displayName = null;

  List<Scimv2enterprisesenterpriseGroupsMembers> members = [];

  Body143();

  @override
  String toString() {
    return 'Body143[schemas=$schemas, displayName=$displayName, members=$members, ]';
  }

  Body143.fromJson(Map<String, dynamic> json) {
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

  static List<Body143> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body143>() : json.map((value) => new Body143.fromJson(value)).toList();
  }

  static Map<String, Body143> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body143>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body143.fromJson(value));
    }
    return map;
  }
}

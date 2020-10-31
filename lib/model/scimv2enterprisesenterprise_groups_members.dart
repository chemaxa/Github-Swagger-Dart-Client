part of swagger.api;

class Scimv2enterprisesenterpriseGroupsMembers {
  /* The SCIM user ID for a user. */
  String value = null;

  Scimv2enterprisesenterpriseGroupsMembers();

  @override
  String toString() {
    return 'Scimv2enterprisesenterpriseGroupsMembers[value=$value, ]';
  }

  Scimv2enterprisesenterpriseGroupsMembers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value
     };
  }

  static List<Scimv2enterprisesenterpriseGroupsMembers> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scimv2enterprisesenterpriseGroupsMembers>() : json.map((value) => new Scimv2enterprisesenterpriseGroupsMembers.fromJson(value)).toList();
  }

  static Map<String, Scimv2enterprisesenterpriseGroupsMembers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scimv2enterprisesenterpriseGroupsMembers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scimv2enterprisesenterpriseGroupsMembers.fromJson(value));
    }
    return map;
  }
}

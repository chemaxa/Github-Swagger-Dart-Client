part of swagger.api;

class Scimv2enterprisesenterpriseUsersGroups {
  
  String value = null;

  Scimv2enterprisesenterpriseUsersGroups();

  @override
  String toString() {
    return 'Scimv2enterprisesenterpriseUsersGroups[value=$value, ]';
  }

  Scimv2enterprisesenterpriseUsersGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value
     };
  }

  static List<Scimv2enterprisesenterpriseUsersGroups> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scimv2enterprisesenterpriseUsersGroups>() : json.map((value) => new Scimv2enterprisesenterpriseUsersGroups.fromJson(value)).toList();
  }

  static Map<String, Scimv2enterprisesenterpriseUsersGroups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scimv2enterprisesenterpriseUsersGroups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scimv2enterprisesenterpriseUsersGroups.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Scimv2enterprisesenterpriseUsersName {
  /* The first name of the user. */
  String givenName = null;
/* The last name of the user. */
  String familyName = null;

  Scimv2enterprisesenterpriseUsersName();

  @override
  String toString() {
    return 'Scimv2enterprisesenterpriseUsersName[givenName=$givenName, familyName=$familyName, ]';
  }

  Scimv2enterprisesenterpriseUsersName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    givenName = json['givenName'];
    familyName = json['familyName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'givenName': givenName,
      'familyName': familyName
     };
  }

  static List<Scimv2enterprisesenterpriseUsersName> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scimv2enterprisesenterpriseUsersName>() : json.map((value) => new Scimv2enterprisesenterpriseUsersName.fromJson(value)).toList();
  }

  static Map<String, Scimv2enterprisesenterpriseUsersName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scimv2enterprisesenterpriseUsersName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scimv2enterprisesenterpriseUsersName.fromJson(value));
    }
    return map;
  }
}

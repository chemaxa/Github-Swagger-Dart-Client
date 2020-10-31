part of swagger.api;

class Scimv2organizationsorgUsersName {
  
  String givenName = null;

  String familyName = null;

  String formatted = null;

  Scimv2organizationsorgUsersName();

  @override
  String toString() {
    return 'Scimv2organizationsorgUsersName[givenName=$givenName, familyName=$familyName, formatted=$formatted, ]';
  }

  Scimv2organizationsorgUsersName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    givenName = json['givenName'];
    familyName = json['familyName'];
    formatted = json['formatted'];
  }

  Map<String, dynamic> toJson() {
    return {
      'givenName': givenName,
      'familyName': familyName,
      'formatted': formatted
     };
  }

  static List<Scimv2organizationsorgUsersName> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scimv2organizationsorgUsersName>() : json.map((value) => new Scimv2organizationsorgUsersName.fromJson(value)).toList();
  }

  static Map<String, Scimv2organizationsorgUsersName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scimv2organizationsorgUsersName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scimv2organizationsorgUsersName.fromJson(value));
    }
    return map;
  }
}

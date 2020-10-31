part of swagger.api;

class ScimuserName {
  
  String givenName = null;

  String familyName = null;

  String formatted = null;

  ScimuserName();

  @override
  String toString() {
    return 'ScimuserName[givenName=$givenName, familyName=$familyName, formatted=$formatted, ]';
  }

  ScimuserName.fromJson(Map<String, dynamic> json) {
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

  static List<ScimuserName> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimuserName>() : json.map((value) => new ScimuserName.fromJson(value)).toList();
  }

  static Map<String, ScimuserName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimuserName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimuserName.fromJson(value));
    }
    return map;
  }
}

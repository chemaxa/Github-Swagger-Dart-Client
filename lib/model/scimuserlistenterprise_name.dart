part of swagger.api;

class ScimuserlistenterpriseName {
  
  String givenName = null;

  String familyName = null;

  ScimuserlistenterpriseName();

  @override
  String toString() {
    return 'ScimuserlistenterpriseName[givenName=$givenName, familyName=$familyName, ]';
  }

  ScimuserlistenterpriseName.fromJson(Map<String, dynamic> json) {
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

  static List<ScimuserlistenterpriseName> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimuserlistenterpriseName>() : json.map((value) => new ScimuserlistenterpriseName.fromJson(value)).toList();
  }

  static Map<String, ScimuserlistenterpriseName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimuserlistenterpriseName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimuserlistenterpriseName.fromJson(value));
    }
    return map;
  }
}

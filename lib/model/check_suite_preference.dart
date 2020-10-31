part of swagger.api;

class CheckSuitePreference {
  
  ChecksuitepreferencePreferences preferences = null;

  Repository repository = null;

  CheckSuitePreference();

  @override
  String toString() {
    return 'CheckSuitePreference[preferences=$preferences, repository=$repository, ]';
  }

  CheckSuitePreference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    preferences = new ChecksuitepreferencePreferences.fromJson(json['preferences']);
    repository = new Repository.fromJson(json['repository']);
  }

  Map<String, dynamic> toJson() {
    return {
      'preferences': preferences,
      'repository': repository
     };
  }

  static List<CheckSuitePreference> listFromJson(List<dynamic> json) {
    return json == null ? new List<CheckSuitePreference>() : json.map((value) => new CheckSuitePreference.fromJson(value)).toList();
  }

  static Map<String, CheckSuitePreference> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckSuitePreference>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CheckSuitePreference.fromJson(value));
    }
    return map;
  }
}

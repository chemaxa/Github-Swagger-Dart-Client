part of swagger.api;

class ChecksuitepreferencePreferences {
  
  List<ChecksuitepreferencePreferencesAutoTriggerChecks> autoTriggerChecks = [];

  ChecksuitepreferencePreferences();

  @override
  String toString() {
    return 'ChecksuitepreferencePreferences[autoTriggerChecks=$autoTriggerChecks, ]';
  }

  ChecksuitepreferencePreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    autoTriggerChecks = ChecksuitepreferencePreferencesAutoTriggerChecks.listFromJson(json['auto_trigger_checks']);
  }

  Map<String, dynamic> toJson() {
    return {
      'auto_trigger_checks': autoTriggerChecks
     };
  }

  static List<ChecksuitepreferencePreferences> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChecksuitepreferencePreferences>() : json.map((value) => new ChecksuitepreferencePreferences.fromJson(value)).toList();
  }

  static Map<String, ChecksuitepreferencePreferences> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChecksuitepreferencePreferences>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChecksuitepreferencePreferences.fromJson(value));
    }
    return map;
  }
}

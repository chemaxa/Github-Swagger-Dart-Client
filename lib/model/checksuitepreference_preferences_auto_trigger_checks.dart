part of swagger.api;

class ChecksuitepreferencePreferencesAutoTriggerChecks {
  
  int appId = null;

  bool setting = null;

  ChecksuitepreferencePreferencesAutoTriggerChecks();

  @override
  String toString() {
    return 'ChecksuitepreferencePreferencesAutoTriggerChecks[appId=$appId, setting=$setting, ]';
  }

  ChecksuitepreferencePreferencesAutoTriggerChecks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    appId = json['app_id'];
    setting = json['setting'];
  }

  Map<String, dynamic> toJson() {
    return {
      'app_id': appId,
      'setting': setting
     };
  }

  static List<ChecksuitepreferencePreferencesAutoTriggerChecks> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChecksuitepreferencePreferencesAutoTriggerChecks>() : json.map((value) => new ChecksuitepreferencePreferencesAutoTriggerChecks.fromJson(value)).toList();
  }

  static Map<String, ChecksuitepreferencePreferencesAutoTriggerChecks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChecksuitepreferencePreferencesAutoTriggerChecks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChecksuitepreferencePreferencesAutoTriggerChecks.fromJson(value));
    }
    return map;
  }
}

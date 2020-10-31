part of swagger.api;

class ReposownerrepochecksuitespreferencesAutoTriggerChecks {
  /* The `id` of the GitHub App. */
  int appId = null;
/* Set to `true` to enable automatic creation of CheckSuite events upon pushes to the repository, or `false` to disable them. */
  bool setting = true;

  ReposownerrepochecksuitespreferencesAutoTriggerChecks();

  @override
  String toString() {
    return 'ReposownerrepochecksuitespreferencesAutoTriggerChecks[appId=$appId, setting=$setting, ]';
  }

  ReposownerrepochecksuitespreferencesAutoTriggerChecks.fromJson(Map<String, dynamic> json) {
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

  static List<ReposownerrepochecksuitespreferencesAutoTriggerChecks> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepochecksuitespreferencesAutoTriggerChecks>() : json.map((value) => new ReposownerrepochecksuitespreferencesAutoTriggerChecks.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepochecksuitespreferencesAutoTriggerChecks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepochecksuitespreferencesAutoTriggerChecks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepochecksuitespreferencesAutoTriggerChecks.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body72 {
  /* Enables or disables automatic creation of CheckSuite events upon pushes to the repository. Enabled by default. See the [`auto_trigger_checks` object](https://developer.github.com/v3/checks/suites/#auto_trigger_checks-object) description for details. */
  List<ReposownerrepochecksuitespreferencesAutoTriggerChecks> autoTriggerChecks = [];

  Body72();

  @override
  String toString() {
    return 'Body72[autoTriggerChecks=$autoTriggerChecks, ]';
  }

  Body72.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    autoTriggerChecks = ReposownerrepochecksuitespreferencesAutoTriggerChecks.listFromJson(json['auto_trigger_checks']);
  }

  Map<String, dynamic> toJson() {
    return {
      'auto_trigger_checks': autoTriggerChecks
     };
  }

  static List<Body72> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body72>() : json.map((value) => new Body72.fromJson(value)).toList();
  }

  static Map<String, Body72> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body72>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body72.fromJson(value));
    }
    return map;
  }
}

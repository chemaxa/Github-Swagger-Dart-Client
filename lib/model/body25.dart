part of swagger.api;

class Body25 {
  
  EnabledRepositories enabledRepositories = null;

  AllowedActions allowedActions = null;

  Body25();

  @override
  String toString() {
    return 'Body25[enabledRepositories=$enabledRepositories, allowedActions=$allowedActions, ]';
  }

  Body25.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabledRepositories = new EnabledRepositories.fromJson(json['enabled_repositories']);
    allowedActions = new AllowedActions.fromJson(json['allowed_actions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled_repositories': enabledRepositories,
      'allowed_actions': allowedActions
     };
  }

  static List<Body25> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body25>() : json.map((value) => new Body25.fromJson(value)).toList();
  }

  static Map<String, Body25> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body25>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body25.fromJson(value));
    }
    return map;
  }
}

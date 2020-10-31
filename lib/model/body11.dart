part of swagger.api;

class Body11 {
  
  EnabledOrganizations enabledOrganizations = null;

  AllowedActions allowedActions = null;

  Body11();

  @override
  String toString() {
    return 'Body11[enabledOrganizations=$enabledOrganizations, allowedActions=$allowedActions, ]';
  }

  Body11.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabledOrganizations = new EnabledOrganizations.fromJson(json['enabled_organizations']);
    allowedActions = new AllowedActions.fromJson(json['allowed_actions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled_organizations': enabledOrganizations,
      'allowed_actions': allowedActions
     };
  }

  static List<Body11> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body11>() : json.map((value) => new Body11.fromJson(value)).toList();
  }

  static Map<String, Body11> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body11>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body11.fromJson(value));
    }
    return map;
  }
}

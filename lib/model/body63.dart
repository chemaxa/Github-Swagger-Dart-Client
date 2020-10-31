part of swagger.api;

class Body63 {
  
  ActionsEnabled enabled = null;

  AllowedActions allowedActions = null;

  Body63();

  @override
  String toString() {
    return 'Body63[enabled=$enabled, allowedActions=$allowedActions, ]';
  }

  Body63.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabled = new ActionsEnabled.fromJson(json['enabled']);
    allowedActions = new AllowedActions.fromJson(json['allowed_actions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled,
      'allowed_actions': allowedActions
     };
  }

  static List<Body63> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body63>() : json.map((value) => new Body63.fromJson(value)).toList();
  }

  static Map<String, Body63> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body63>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body63.fromJson(value));
    }
    return map;
  }
}

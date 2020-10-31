part of swagger.api;

class ActionsRepositoryPermissions {
  
  ActionsEnabled enabled = null;

  AllowedActions allowedActions = null;

  SelectedActionsUrl selectedActionsUrl = null;

  ActionsRepositoryPermissions();

  @override
  String toString() {
    return 'ActionsRepositoryPermissions[enabled=$enabled, allowedActions=$allowedActions, selectedActionsUrl=$selectedActionsUrl, ]';
  }

  ActionsRepositoryPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabled = new ActionsEnabled.fromJson(json['enabled']);
    allowedActions = new AllowedActions.fromJson(json['allowed_actions']);
    selectedActionsUrl = new SelectedActionsUrl.fromJson(json['selected_actions_url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled,
      'allowed_actions': allowedActions,
      'selected_actions_url': selectedActionsUrl
     };
  }

  static List<ActionsRepositoryPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActionsRepositoryPermissions>() : json.map((value) => new ActionsRepositoryPermissions.fromJson(value)).toList();
  }

  static Map<String, ActionsRepositoryPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActionsRepositoryPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActionsRepositoryPermissions.fromJson(value));
    }
    return map;
  }
}

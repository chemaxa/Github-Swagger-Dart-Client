part of swagger.api;

class ActionsOrganizationPermissions {
  
  EnabledRepositories enabledRepositories = null;
/* The API URL to use to get or set the selected repositories that are allowed to run GitHub Actions, when `enabled_repositories` is set to `selected`. */
  String selectedRepositoriesUrl = null;

  AllowedActions allowedActions = null;

  SelectedActionsUrl selectedActionsUrl = null;

  ActionsOrganizationPermissions();

  @override
  String toString() {
    return 'ActionsOrganizationPermissions[enabledRepositories=$enabledRepositories, selectedRepositoriesUrl=$selectedRepositoriesUrl, allowedActions=$allowedActions, selectedActionsUrl=$selectedActionsUrl, ]';
  }

  ActionsOrganizationPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabledRepositories = new EnabledRepositories.fromJson(json['enabled_repositories']);
    selectedRepositoriesUrl = json['selected_repositories_url'];
    allowedActions = new AllowedActions.fromJson(json['allowed_actions']);
    selectedActionsUrl = new SelectedActionsUrl.fromJson(json['selected_actions_url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled_repositories': enabledRepositories,
      'selected_repositories_url': selectedRepositoriesUrl,
      'allowed_actions': allowedActions,
      'selected_actions_url': selectedActionsUrl
     };
  }

  static List<ActionsOrganizationPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActionsOrganizationPermissions>() : json.map((value) => new ActionsOrganizationPermissions.fromJson(value)).toList();
  }

  static Map<String, ActionsOrganizationPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActionsOrganizationPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActionsOrganizationPermissions.fromJson(value));
    }
    return map;
  }
}

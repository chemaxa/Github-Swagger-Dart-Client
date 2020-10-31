part of swagger.api;

class ActionsEnterprisePermissions {
  
  EnabledOrganizations enabledOrganizations = null;
/* The API URL to use to get or set the selected organizations that are allowed to run GitHub Actions, when `enabled_organizations` is set to `selected`. */
  String selectedOrganizationsUrl = null;

  AllowedActions allowedActions = null;

  SelectedActionsUrl selectedActionsUrl = null;

  ActionsEnterprisePermissions();

  @override
  String toString() {
    return 'ActionsEnterprisePermissions[enabledOrganizations=$enabledOrganizations, selectedOrganizationsUrl=$selectedOrganizationsUrl, allowedActions=$allowedActions, selectedActionsUrl=$selectedActionsUrl, ]';
  }

  ActionsEnterprisePermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enabledOrganizations = new EnabledOrganizations.fromJson(json['enabled_organizations']);
    selectedOrganizationsUrl = json['selected_organizations_url'];
    allowedActions = new AllowedActions.fromJson(json['allowed_actions']);
    selectedActionsUrl = new SelectedActionsUrl.fromJson(json['selected_actions_url']);
  }

  Map<String, dynamic> toJson() {
    return {
      'enabled_organizations': enabledOrganizations,
      'selected_organizations_url': selectedOrganizationsUrl,
      'allowed_actions': allowedActions,
      'selected_actions_url': selectedActionsUrl
     };
  }

  static List<ActionsEnterprisePermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActionsEnterprisePermissions>() : json.map((value) => new ActionsEnterprisePermissions.fromJson(value)).toList();
  }

  static Map<String, ActionsEnterprisePermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActionsEnterprisePermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActionsEnterprisePermissions.fromJson(value));
    }
    return map;
  }
}

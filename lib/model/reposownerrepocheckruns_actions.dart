part of swagger.api;

class ReposownerrepocheckrunsActions {
  /* The text to be displayed on a button in the web UI. The maximum size is 20 characters. */
  String label = null;
/* A short explanation of what this action would do. The maximum size is 40 characters. */
  String description = null;
/* A reference for the action on the integrator's system. The maximum size is 20 characters. */
  String identifier = null;

  ReposownerrepocheckrunsActions();

  @override
  String toString() {
    return 'ReposownerrepocheckrunsActions[label=$label, description=$description, identifier=$identifier, ]';
  }

  ReposownerrepocheckrunsActions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    description = json['description'];
    identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'description': description,
      'identifier': identifier
     };
  }

  static List<ReposownerrepocheckrunsActions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocheckrunsActions>() : json.map((value) => new ReposownerrepocheckrunsActions.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocheckrunsActions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocheckrunsActions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocheckrunsActions.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body15 {
  /* List of organization IDs that can access the runner group. */
  List<int> selectedOrganizationIds = [];

  Body15();

  @override
  String toString() {
    return 'Body15[selectedOrganizationIds=$selectedOrganizationIds, ]';
  }

  Body15.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    selectedOrganizationIds = (json['selected_organization_ids'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'selected_organization_ids': selectedOrganizationIds
     };
  }

  static List<Body15> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body15>() : json.map((value) => new Body15.fromJson(value)).toList();
  }

  static Map<String, Body15> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body15>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body15.fromJson(value));
    }
    return map;
  }
}

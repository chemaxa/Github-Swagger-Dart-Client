part of swagger.api;

class Body12 {
  /* List of organization IDs to enable for GitHub Actions. */
  List<int> selectedOrganizationIds = [];

  Body12();

  @override
  String toString() {
    return 'Body12[selectedOrganizationIds=$selectedOrganizationIds, ]';
  }

  Body12.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    selectedOrganizationIds = (json['selected_organization_ids'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'selected_organization_ids': selectedOrganizationIds
     };
  }

  static List<Body12> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body12>() : json.map((value) => new Body12.fromJson(value)).toList();
  }

  static Map<String, Body12> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body12>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body12.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body13 {
  /* Name of the runner group. */
  String name = null;
/* Visibility of a runner group. You can select all organizations or select individual organization. Can be one of: `all` or `selected` */
  String visibility = null;
  //enum visibilityEnum {  selected,  all,  };
/* List of organization IDs that can access the runner group. */
  List<int> selectedOrganizationIds = [];
/* List of runner IDs to add to the runner group. */
  List<int> runners = [];

  Body13();

  @override
  String toString() {
    return 'Body13[name=$name, visibility=$visibility, selectedOrganizationIds=$selectedOrganizationIds, runners=$runners, ]';
  }

  Body13.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    visibility = json['visibility'];
    selectedOrganizationIds = (json['selected_organization_ids'] as List).map((item) => item as int).toList();
    runners = (json['runners'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'visibility': visibility,
      'selected_organization_ids': selectedOrganizationIds,
      'runners': runners
     };
  }

  static List<Body13> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body13>() : json.map((value) => new Body13.fromJson(value)).toList();
  }

  static Map<String, Body13> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body13>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body13.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body27 {
  /* Name of the runner group. */
  String name = null;
/* Visibility of a runner group. You can select all repositories, select individual repositories, or limit access to private repositories. Can be one of: `all`, `selected`, or `private`. */
  String visibility = VisibilityEnum.all_;
  //enum visibilityEnum {  selected,  all,  private,  };
/* List of repository IDs that can access the runner group. */
  List<int> selectedRepositoryIds = [];
/* List of runner IDs to add to the runner group. */
  List<int> runners = [];

  Body27();

  @override
  String toString() {
    return 'Body27[name=$name, visibility=$visibility, selectedRepositoryIds=$selectedRepositoryIds, runners=$runners, ]';
  }

  Body27.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    visibility = json['visibility'];
    selectedRepositoryIds = (json['selected_repository_ids'] as List).map((item) => item as int).toList();
    runners = (json['runners'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'visibility': visibility,
      'selected_repository_ids': selectedRepositoryIds,
      'runners': runners
     };
  }

  static List<Body27> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body27>() : json.map((value) => new Body27.fromJson(value)).toList();
  }

  static Map<String, Body27> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body27>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body27.fromJson(value));
    }
    return map;
  }
}

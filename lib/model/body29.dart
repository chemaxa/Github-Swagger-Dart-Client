part of swagger.api;

class Body29 {
  /* List of repository IDs that can access the runner group. */
  List<int> selectedRepositoryIds = [];

  Body29();

  @override
  String toString() {
    return 'Body29[selectedRepositoryIds=$selectedRepositoryIds, ]';
  }

  Body29.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    selectedRepositoryIds = (json['selected_repository_ids'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'selected_repository_ids': selectedRepositoryIds
     };
  }

  static List<Body29> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body29>() : json.map((value) => new Body29.fromJson(value)).toList();
  }

  static Map<String, Body29> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body29>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body29.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body26 {
  /* List of repository IDs to enable for GitHub Actions. */
  List<int> selectedRepositoryIds = [];

  Body26();

  @override
  String toString() {
    return 'Body26[selectedRepositoryIds=$selectedRepositoryIds, ]';
  }

  Body26.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    selectedRepositoryIds = (json['selected_repository_ids'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'selected_repository_ids': selectedRepositoryIds
     };
  }

  static List<Body26> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body26>() : json.map((value) => new Body26.fromJson(value)).toList();
  }

  static Map<String, Body26> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body26>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body26.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class SelectedActionsUrl {
  
  SelectedActionsUrl();

  @override
  String toString() {
    return 'SelectedActionsUrl[]';
  }

  SelectedActionsUrl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<SelectedActionsUrl> listFromJson(List<dynamic> json) {
    return json == null ? new List<SelectedActionsUrl>() : json.map((value) => new SelectedActionsUrl.fromJson(value)).toList();
  }

  static Map<String, SelectedActionsUrl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SelectedActionsUrl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SelectedActionsUrl.fromJson(value));
    }
    return map;
  }
}

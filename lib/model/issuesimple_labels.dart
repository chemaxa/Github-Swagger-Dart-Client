part of swagger.api;

class IssuesimpleLabels {
  
  int id = null;

  String nodeId = null;

  String url = null;

  String name = null;

  String description = null;

  String color = null;

  bool default_ = null;

  IssuesimpleLabels();

  @override
  String toString() {
    return 'IssuesimpleLabels[id=$id, nodeId=$nodeId, url=$url, name=$name, description=$description, color=$color, default_=$default_, ]';
  }

  IssuesimpleLabels.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    name = json['name'];
    description = json['description'];
    color = json['color'];
    default_ = json['default'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'name': name,
      'description': description,
      'color': color,
      'default': default_
     };
  }

  static List<IssuesimpleLabels> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssuesimpleLabels>() : json.map((value) => new IssuesimpleLabels.fromJson(value)).toList();
  }

  static Map<String, IssuesimpleLabels> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssuesimpleLabels>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssuesimpleLabels.fromJson(value));
    }
    return map;
  }
}

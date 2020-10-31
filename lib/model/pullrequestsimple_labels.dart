part of swagger.api;

class PullrequestsimpleLabels {
  
  int id = null;

  String nodeId = null;

  String url = null;

  String name = null;

  String description = null;

  String color = null;

  bool default_ = null;

  PullrequestsimpleLabels();

  @override
  String toString() {
    return 'PullrequestsimpleLabels[id=$id, nodeId=$nodeId, url=$url, name=$name, description=$description, color=$color, default_=$default_, ]';
  }

  PullrequestsimpleLabels.fromJson(Map<String, dynamic> json) {
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

  static List<PullrequestsimpleLabels> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestsimpleLabels>() : json.map((value) => new PullrequestsimpleLabels.fromJson(value)).toList();
  }

  static Map<String, PullrequestsimpleLabels> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestsimpleLabels>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestsimpleLabels.fromJson(value));
    }
    return map;
  }
}

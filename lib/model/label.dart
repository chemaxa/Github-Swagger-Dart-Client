part of swagger.api;

class Label {
  
  int id = null;

  String nodeId = null;
/* URL for the label */
  String url = null;
/* The name of the label. */
  String name = null;

  String description = null;
/* 6-character hex code, without the leading #, identifying the color */
  String color = null;

  bool default_ = null;

  Label();

  @override
  String toString() {
    return 'Label[id=$id, nodeId=$nodeId, url=$url, name=$name, description=$description, color=$color, default_=$default_, ]';
  }

  Label.fromJson(Map<String, dynamic> json) {
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

  static List<Label> listFromJson(List<dynamic> json) {
    return json == null ? new List<Label>() : json.map((value) => new Label.fromJson(value)).toList();
  }

  static Map<String, Label> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Label>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Label.fromJson(value));
    }
    return map;
  }
}

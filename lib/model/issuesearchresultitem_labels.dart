part of swagger.api;

class IssuesearchresultitemLabels {
  
  int id = null;

  String nodeId = null;

  String url = null;

  String name = null;

  String color = null;

  bool default_ = null;

  String description = null;

  IssuesearchresultitemLabels();

  @override
  String toString() {
    return 'IssuesearchresultitemLabels[id=$id, nodeId=$nodeId, url=$url, name=$name, color=$color, default_=$default_, description=$description, ]';
  }

  IssuesearchresultitemLabels.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    name = json['name'];
    color = json['color'];
    default_ = json['default'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'name': name,
      'color': color,
      'default': default_,
      'description': description
     };
  }

  static List<IssuesearchresultitemLabels> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssuesearchresultitemLabels>() : json.map((value) => new IssuesearchresultitemLabels.fromJson(value)).toList();
  }

  static Map<String, IssuesearchresultitemLabels> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssuesearchresultitemLabels>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssuesearchresultitemLabels.fromJson(value));
    }
    return map;
  }
}

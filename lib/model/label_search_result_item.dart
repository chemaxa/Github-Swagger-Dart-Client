part of swagger.api;

class LabelSearchResultItem {
  
  int id = null;

  String nodeId = null;

  String url = null;

  String name = null;

  String color = null;

  bool default_ = null;

  String description = null;

  int score = null;

  SearchResultTextMatches textMatches = null;

  LabelSearchResultItem();

  @override
  String toString() {
    return 'LabelSearchResultItem[id=$id, nodeId=$nodeId, url=$url, name=$name, color=$color, default_=$default_, description=$description, score=$score, textMatches=$textMatches, ]';
  }

  LabelSearchResultItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    name = json['name'];
    color = json['color'];
    default_ = json['default'];
    description = json['description'];
    score = json['score'];
    textMatches = new SearchResultTextMatches.fromJson(json['text_matches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'name': name,
      'color': color,
      'default': default_,
      'description': description,
      'score': score,
      'text_matches': textMatches
     };
  }

  static List<LabelSearchResultItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<LabelSearchResultItem>() : json.map((value) => new LabelSearchResultItem.fromJson(value)).toList();
  }

  static Map<String, LabelSearchResultItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LabelSearchResultItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LabelSearchResultItem.fromJson(value));
    }
    return map;
  }
}

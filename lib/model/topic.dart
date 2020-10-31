part of swagger.api;

class Topic {
  
  List<String> names = [];

  Topic();

  @override
  String toString() {
    return 'Topic[names=$names, ]';
  }

  Topic.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    names = (json['names'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'names': names
     };
  }

  static List<Topic> listFromJson(List<dynamic> json) {
    return json == null ? new List<Topic>() : json.map((value) => new Topic.fromJson(value)).toList();
  }

  static Map<String, Topic> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Topic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Topic.fromJson(value));
    }
    return map;
  }
}

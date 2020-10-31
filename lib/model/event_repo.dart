part of swagger.api;

class EventRepo {
  
  int id = null;

  String name = null;

  String url = null;

  EventRepo();

  @override
  String toString() {
    return 'EventRepo[id=$id, name=$name, url=$url, ]';
  }

  EventRepo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'url': url
     };
  }

  static List<EventRepo> listFromJson(List<dynamic> json) {
    return json == null ? new List<EventRepo>() : json.map((value) => new EventRepo.fromJson(value)).toList();
  }

  static Map<String, EventRepo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EventRepo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EventRepo.fromJson(value));
    }
    return map;
  }
}

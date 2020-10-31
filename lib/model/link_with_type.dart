part of swagger.api;

class LinkWithType {
  
  String href = null;

  String type = null;

  LinkWithType();

  @override
  String toString() {
    return 'LinkWithType[href=$href, type=$type, ]';
  }

  LinkWithType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'type': type
     };
  }

  static List<LinkWithType> listFromJson(List<dynamic> json) {
    return json == null ? new List<LinkWithType>() : json.map((value) => new LinkWithType.fromJson(value)).toList();
  }

  static Map<String, LinkWithType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LinkWithType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LinkWithType.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Link {
  
  String href = null;

  Link();

  @override
  String toString() {
    return 'Link[href=$href, ]';
  }

  Link.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href
     };
  }

  static List<Link> listFromJson(List<dynamic> json) {
    return json == null ? new List<Link>() : json.map((value) => new Link.fromJson(value)).toList();
  }

  static Map<String, Link> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Link>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Link.fromJson(value));
    }
    return map;
  }
}

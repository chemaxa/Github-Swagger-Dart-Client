part of swagger.api;

class ContenttreeLinks {
  
  String git = null;

  String html = null;

  String self = null;

  ContenttreeLinks();

  @override
  String toString() {
    return 'ContenttreeLinks[git=$git, html=$html, self=$self, ]';
  }

  ContenttreeLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    git = json['git'];
    html = json['html'];
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    return {
      'git': git,
      'html': html,
      'self': self
     };
  }

  static List<ContenttreeLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContenttreeLinks>() : json.map((value) => new ContenttreeLinks.fromJson(value)).toList();
  }

  static Map<String, ContenttreeLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContenttreeLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContenttreeLinks.fromJson(value));
    }
    return map;
  }
}

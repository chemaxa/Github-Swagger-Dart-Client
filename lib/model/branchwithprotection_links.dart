part of swagger.api;

class BranchwithprotectionLinks {
  
  String html = null;

  String self = null;

  BranchwithprotectionLinks();

  @override
  String toString() {
    return 'BranchwithprotectionLinks[html=$html, self=$self, ]';
  }

  BranchwithprotectionLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    html = json['html'];
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    return {
      'html': html,
      'self': self
     };
  }

  static List<BranchwithprotectionLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchwithprotectionLinks>() : json.map((value) => new BranchwithprotectionLinks.fromJson(value)).toList();
  }

  static Map<String, BranchwithprotectionLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchwithprotectionLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchwithprotectionLinks.fromJson(value));
    }
    return map;
  }
}

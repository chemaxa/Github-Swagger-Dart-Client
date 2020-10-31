part of swagger.api;

class ContentDirectory {
  
  ContentDirectory();

  @override
  String toString() {
    return 'ContentDirectory[]';
  }

  ContentDirectory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ContentDirectory> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentDirectory>() : json.map((value) => new ContentDirectory.fromJson(value)).toList();
  }

  static Map<String, ContentDirectory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentDirectory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentDirectory.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class GistsFiles {
  /* Content of the file */
  String content = null;

  GistsFiles();

  @override
  String toString() {
    return 'GistsFiles[content=$content, ]';
  }

  GistsFiles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content
     };
  }

  static List<GistsFiles> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistsFiles>() : json.map((value) => new GistsFiles.fromJson(value)).toList();
  }

  static Map<String, GistsFiles> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistsFiles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistsFiles.fromJson(value));
    }
    return map;
  }
}

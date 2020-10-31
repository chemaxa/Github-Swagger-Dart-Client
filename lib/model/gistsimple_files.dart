part of swagger.api;

class GistsimpleFiles {
  
  String filename = null;

  String type = null;

  String language = null;

  String rawUrl = null;

  int size = null;

  bool truncated = null;

  String content = null;

  GistsimpleFiles();

  @override
  String toString() {
    return 'GistsimpleFiles[filename=$filename, type=$type, language=$language, rawUrl=$rawUrl, size=$size, truncated=$truncated, content=$content, ]';
  }

  GistsimpleFiles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    filename = json['filename'];
    type = json['type'];
    language = json['language'];
    rawUrl = json['raw_url'];
    size = json['size'];
    truncated = json['truncated'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'filename': filename,
      'type': type,
      'language': language,
      'raw_url': rawUrl,
      'size': size,
      'truncated': truncated,
      'content': content
     };
  }

  static List<GistsimpleFiles> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistsimpleFiles>() : json.map((value) => new GistsimpleFiles.fromJson(value)).toList();
  }

  static Map<String, GistsimpleFiles> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistsimpleFiles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistsimpleFiles.fromJson(value));
    }
    return map;
  }
}

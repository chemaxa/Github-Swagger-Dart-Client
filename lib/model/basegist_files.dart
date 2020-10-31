part of swagger.api;

class BasegistFiles {
  
  String filename = null;

  String type = null;

  String language = null;

  String rawUrl = null;

  int size = null;

  BasegistFiles();

  @override
  String toString() {
    return 'BasegistFiles[filename=$filename, type=$type, language=$language, rawUrl=$rawUrl, size=$size, ]';
  }

  BasegistFiles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    filename = json['filename'];
    type = json['type'];
    language = json['language'];
    rawUrl = json['raw_url'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    return {
      'filename': filename,
      'type': type,
      'language': language,
      'raw_url': rawUrl,
      'size': size
     };
  }

  static List<BasegistFiles> listFromJson(List<dynamic> json) {
    return json == null ? new List<BasegistFiles>() : json.map((value) => new BasegistFiles.fromJson(value)).toList();
  }

  static Map<String, BasegistFiles> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BasegistFiles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BasegistFiles.fromJson(value));
    }
    return map;
  }
}

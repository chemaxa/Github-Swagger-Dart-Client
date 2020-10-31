part of swagger.api;

class GistsgistIdFiles {
  /* The new content of the file */
  String content = null;
/* The new filename for the file */
  String filename = null;

  GistsgistIdFiles();

  @override
  String toString() {
    return 'GistsgistIdFiles[content=$content, filename=$filename, ]';
  }

  GistsgistIdFiles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = json['content'];
    filename = json['filename'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'filename': filename
     };
  }

  static List<GistsgistIdFiles> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistsgistIdFiles>() : json.map((value) => new GistsgistIdFiles.fromJson(value)).toList();
  }

  static Map<String, GistsgistIdFiles> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistsgistIdFiles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistsgistIdFiles.fromJson(value));
    }
    return map;
  }
}

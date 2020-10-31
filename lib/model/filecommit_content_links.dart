part of swagger.api;

class FilecommitContentLinks {
  
  String self = null;

  String git = null;

  String html = null;

  FilecommitContentLinks();

  @override
  String toString() {
    return 'FilecommitContentLinks[self=$self, git=$git, html=$html, ]';
  }

  FilecommitContentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = json['self'];
    git = json['git'];
    html = json['html'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'git': git,
      'html': html
     };
  }

  static List<FilecommitContentLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilecommitContentLinks>() : json.map((value) => new FilecommitContentLinks.fromJson(value)).toList();
  }

  static Map<String, FilecommitContentLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilecommitContentLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilecommitContentLinks.fromJson(value));
    }
    return map;
  }
}

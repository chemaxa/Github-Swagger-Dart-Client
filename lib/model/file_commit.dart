part of swagger.api;

class FileCommit {
  
  FilecommitContent content = null;

  FilecommitCommit commit = null;

  FileCommit();

  @override
  String toString() {
    return 'FileCommit[content=$content, commit=$commit, ]';
  }

  FileCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = new FilecommitContent.fromJson(json['content']);
    commit = new FilecommitCommit.fromJson(json['commit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'commit': commit
     };
  }

  static List<FileCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileCommit>() : json.map((value) => new FileCommit.fromJson(value)).toList();
  }

  static Map<String, FileCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileCommit.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class FilecommitCommitParents {
  
  String url = null;

  String htmlUrl = null;

  String sha = null;

  FilecommitCommitParents();

  @override
  String toString() {
    return 'FilecommitCommitParents[url=$url, htmlUrl=$htmlUrl, sha=$sha, ]';
  }

  FilecommitCommitParents.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    htmlUrl = json['html_url'];
    sha = json['sha'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'html_url': htmlUrl,
      'sha': sha
     };
  }

  static List<FilecommitCommitParents> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilecommitCommitParents>() : json.map((value) => new FilecommitCommitParents.fromJson(value)).toList();
  }

  static Map<String, FilecommitCommitParents> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilecommitCommitParents>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilecommitCommitParents.fromJson(value));
    }
    return map;
  }
}

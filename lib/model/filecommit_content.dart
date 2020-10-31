part of swagger.api;

class FilecommitContent {
  
  String name = null;

  String path = null;

  String sha = null;

  int size = null;

  String url = null;

  String htmlUrl = null;

  String gitUrl = null;

  String downloadUrl = null;

  String type = null;

  FilecommitContentLinks links = null;

  FilecommitContent();

  @override
  String toString() {
    return 'FilecommitContent[name=$name, path=$path, sha=$sha, size=$size, url=$url, htmlUrl=$htmlUrl, gitUrl=$gitUrl, downloadUrl=$downloadUrl, type=$type, links=$links, ]';
  }

  FilecommitContent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    path = json['path'];
    sha = json['sha'];
    size = json['size'];
    url = json['url'];
    htmlUrl = json['html_url'];
    gitUrl = json['git_url'];
    downloadUrl = json['download_url'];
    type = json['type'];
    links = new FilecommitContentLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'path': path,
      'sha': sha,
      'size': size,
      'url': url,
      'html_url': htmlUrl,
      'git_url': gitUrl,
      'download_url': downloadUrl,
      'type': type,
      '_links': links
     };
  }

  static List<FilecommitContent> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilecommitContent>() : json.map((value) => new FilecommitContent.fromJson(value)).toList();
  }

  static Map<String, FilecommitContent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilecommitContent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilecommitContent.fromJson(value));
    }
    return map;
  }
}

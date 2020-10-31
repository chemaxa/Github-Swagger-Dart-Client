part of swagger.api;

class ContentdirectoryInner {
  
  String type = null;

  int size = null;

  String name = null;

  String path = null;

  String content = null;

  String sha = null;

  String url = null;

  String gitUrl = null;

  String htmlUrl = null;

  String downloadUrl = null;

  Object links = null;

  ContentdirectoryInner();

  @override
  String toString() {
    return 'ContentdirectoryInner[type=$type, size=$size, name=$name, path=$path, content=$content, sha=$sha, url=$url, gitUrl=$gitUrl, htmlUrl=$htmlUrl, downloadUrl=$downloadUrl, links=$links, ]';
  }

  ContentdirectoryInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    size = json['size'];
    name = json['name'];
    path = json['path'];
    content = json['content'];
    sha = json['sha'];
    url = json['url'];
    gitUrl = json['git_url'];
    htmlUrl = json['html_url'];
    downloadUrl = json['download_url'];
    links = new Object.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'size': size,
      'name': name,
      'path': path,
      'content': content,
      'sha': sha,
      'url': url,
      'git_url': gitUrl,
      'html_url': htmlUrl,
      'download_url': downloadUrl,
      '_links': links
     };
  }

  static List<ContentdirectoryInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentdirectoryInner>() : json.map((value) => new ContentdirectoryInner.fromJson(value)).toList();
  }

  static Map<String, ContentdirectoryInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentdirectoryInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentdirectoryInner.fromJson(value));
    }
    return map;
  }
}

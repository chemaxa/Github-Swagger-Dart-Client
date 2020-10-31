part of swagger.api;

class ContenttreeEntries {
  
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

  ContenttreeLinks links = null;

  ContenttreeEntries();

  @override
  String toString() {
    return 'ContenttreeEntries[type=$type, size=$size, name=$name, path=$path, content=$content, sha=$sha, url=$url, gitUrl=$gitUrl, htmlUrl=$htmlUrl, downloadUrl=$downloadUrl, links=$links, ]';
  }

  ContenttreeEntries.fromJson(Map<String, dynamic> json) {
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
    links = new ContenttreeLinks.fromJson(json['_links']);
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

  static List<ContenttreeEntries> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContenttreeEntries>() : json.map((value) => new ContenttreeEntries.fromJson(value)).toList();
  }

  static Map<String, ContenttreeEntries> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContenttreeEntries>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContenttreeEntries.fromJson(value));
    }
    return map;
  }
}

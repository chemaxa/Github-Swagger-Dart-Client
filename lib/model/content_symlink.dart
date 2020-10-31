part of swagger.api;

class ContentSymlink {
  
  String type = null;

  String target = null;

  int size = null;

  String name = null;

  String path = null;

  String sha = null;

  String url = null;

  String gitUrl = null;

  String htmlUrl = null;

  String downloadUrl = null;

  ContenttreeLinks links = null;

  ContentSymlink();

  @override
  String toString() {
    return 'ContentSymlink[type=$type, target=$target, size=$size, name=$name, path=$path, sha=$sha, url=$url, gitUrl=$gitUrl, htmlUrl=$htmlUrl, downloadUrl=$downloadUrl, links=$links, ]';
  }

  ContentSymlink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    target = json['target'];
    size = json['size'];
    name = json['name'];
    path = json['path'];
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
      'target': target,
      'size': size,
      'name': name,
      'path': path,
      'sha': sha,
      'url': url,
      'git_url': gitUrl,
      'html_url': htmlUrl,
      'download_url': downloadUrl,
      '_links': links
     };
  }

  static List<ContentSymlink> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentSymlink>() : json.map((value) => new ContentSymlink.fromJson(value)).toList();
  }

  static Map<String, ContentSymlink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentSymlink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentSymlink.fromJson(value));
    }
    return map;
  }
}

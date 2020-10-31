part of swagger.api;

class ContentTree {
  
  String type = null;

  int size = null;

  String name = null;

  String path = null;

  String sha = null;

  String url = null;

  String gitUrl = null;

  String htmlUrl = null;

  String downloadUrl = null;

  List<ContenttreeEntries> entries = [];

  ContenttreeLinks links = null;

  ContentTree();

  @override
  String toString() {
    return 'ContentTree[type=$type, size=$size, name=$name, path=$path, sha=$sha, url=$url, gitUrl=$gitUrl, htmlUrl=$htmlUrl, downloadUrl=$downloadUrl, entries=$entries, links=$links, ]';
  }

  ContentTree.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    size = json['size'];
    name = json['name'];
    path = json['path'];
    sha = json['sha'];
    url = json['url'];
    gitUrl = json['git_url'];
    htmlUrl = json['html_url'];
    downloadUrl = json['download_url'];
    entries = ContenttreeEntries.listFromJson(json['entries']);
    links = new ContenttreeLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'size': size,
      'name': name,
      'path': path,
      'sha': sha,
      'url': url,
      'git_url': gitUrl,
      'html_url': htmlUrl,
      'download_url': downloadUrl,
      'entries': entries,
      '_links': links
     };
  }

  static List<ContentTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentTree>() : json.map((value) => new ContentTree.fromJson(value)).toList();
  }

  static Map<String, ContentTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentTree.fromJson(value));
    }
    return map;
  }
}

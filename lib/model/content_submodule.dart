part of swagger.api;

class ContentSubmodule {
  
  String type = null;

  String submoduleGitUrl = null;

  int size = null;

  String name = null;

  String path = null;

  String sha = null;

  String url = null;

  String gitUrl = null;

  String htmlUrl = null;

  String downloadUrl = null;

  ContenttreeLinks links = null;

  ContentSubmodule();

  @override
  String toString() {
    return 'ContentSubmodule[type=$type, submoduleGitUrl=$submoduleGitUrl, size=$size, name=$name, path=$path, sha=$sha, url=$url, gitUrl=$gitUrl, htmlUrl=$htmlUrl, downloadUrl=$downloadUrl, links=$links, ]';
  }

  ContentSubmodule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    submoduleGitUrl = json['submodule_git_url'];
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
      'submodule_git_url': submoduleGitUrl,
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

  static List<ContentSubmodule> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentSubmodule>() : json.map((value) => new ContentSubmodule.fromJson(value)).toList();
  }

  static Map<String, ContentSubmodule> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentSubmodule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentSubmodule.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class ContentFile {
  
  String type = null;

  String encoding = null;

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

  String target = null;

  String submoduleGitUrl = null;

  ContentFile();

  @override
  String toString() {
    return 'ContentFile[type=$type, encoding=$encoding, size=$size, name=$name, path=$path, content=$content, sha=$sha, url=$url, gitUrl=$gitUrl, htmlUrl=$htmlUrl, downloadUrl=$downloadUrl, links=$links, target=$target, submoduleGitUrl=$submoduleGitUrl, ]';
  }

  ContentFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    encoding = json['encoding'];
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
    target = json['target'];
    submoduleGitUrl = json['submodule_git_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'encoding': encoding,
      'size': size,
      'name': name,
      'path': path,
      'content': content,
      'sha': sha,
      'url': url,
      'git_url': gitUrl,
      'html_url': htmlUrl,
      'download_url': downloadUrl,
      '_links': links,
      'target': target,
      'submodule_git_url': submoduleGitUrl
     };
  }

  static List<ContentFile> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentFile>() : json.map((value) => new ContentFile.fromJson(value)).toList();
  }

  static Map<String, ContentFile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentFile.fromJson(value));
    }
    return map;
  }
}

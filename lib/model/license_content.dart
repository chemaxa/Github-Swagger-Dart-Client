part of swagger.api;

class LicenseContent {
  
  String name = null;

  String path = null;

  String sha = null;

  int size = null;

  String url = null;

  String htmlUrl = null;

  String gitUrl = null;

  String downloadUrl = null;

  String type = null;

  String content = null;

  String encoding = null;

  ContenttreeLinks links = null;

  AllOflicenseContentLicense license = null;

  LicenseContent();

  @override
  String toString() {
    return 'LicenseContent[name=$name, path=$path, sha=$sha, size=$size, url=$url, htmlUrl=$htmlUrl, gitUrl=$gitUrl, downloadUrl=$downloadUrl, type=$type, content=$content, encoding=$encoding, links=$links, license=$license, ]';
  }

  LicenseContent.fromJson(Map<String, dynamic> json) {
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
    content = json['content'];
    encoding = json['encoding'];
    links = new ContenttreeLinks.fromJson(json['_links']);
    license = new AllOflicenseContentLicense.fromJson(json['license']);
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
      'content': content,
      'encoding': encoding,
      '_links': links,
      'license': license
     };
  }

  static List<LicenseContent> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseContent>() : json.map((value) => new LicenseContent.fromJson(value)).toList();
  }

  static Map<String, LicenseContent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseContent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseContent.fromJson(value));
    }
    return map;
  }
}

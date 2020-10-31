part of swagger.api;

class CommunityHealthFile {
  
  String url = null;

  String htmlUrl = null;

  CommunityHealthFile();

  @override
  String toString() {
    return 'CommunityHealthFile[url=$url, htmlUrl=$htmlUrl, ]';
  }

  CommunityHealthFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'html_url': htmlUrl
     };
  }

  static List<CommunityHealthFile> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommunityHealthFile>() : json.map((value) => new CommunityHealthFile.fromJson(value)).toList();
  }

  static Map<String, CommunityHealthFile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommunityHealthFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommunityHealthFile.fromJson(value));
    }
    return map;
  }
}

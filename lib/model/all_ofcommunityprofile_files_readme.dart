part of swagger.api;

class AllOfcommunityprofileFilesReadme {
  
  String url = null;

  String htmlUrl = null;

  AllOfcommunityprofileFilesReadme();

  @override
  String toString() {
    return 'AllOfcommunityprofileFilesReadme[url=$url, htmlUrl=$htmlUrl, ]';
  }

  AllOfcommunityprofileFilesReadme.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfcommunityprofileFilesReadme> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommunityprofileFilesReadme>() : json.map((value) => new AllOfcommunityprofileFilesReadme.fromJson(value)).toList();
  }

  static Map<String, AllOfcommunityprofileFilesReadme> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommunityprofileFilesReadme>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommunityprofileFilesReadme.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class AllOfcommunityprofileFilesContributing {
  
  String url = null;

  String htmlUrl = null;

  AllOfcommunityprofileFilesContributing();

  @override
  String toString() {
    return 'AllOfcommunityprofileFilesContributing[url=$url, htmlUrl=$htmlUrl, ]';
  }

  AllOfcommunityprofileFilesContributing.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfcommunityprofileFilesContributing> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommunityprofileFilesContributing>() : json.map((value) => new AllOfcommunityprofileFilesContributing.fromJson(value)).toList();
  }

  static Map<String, AllOfcommunityprofileFilesContributing> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommunityprofileFilesContributing>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommunityprofileFilesContributing.fromJson(value));
    }
    return map;
  }
}

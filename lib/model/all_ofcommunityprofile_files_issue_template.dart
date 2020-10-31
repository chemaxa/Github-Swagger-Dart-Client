part of swagger.api;

class AllOfcommunityprofileFilesIssueTemplate {
  
  String url = null;

  String htmlUrl = null;

  AllOfcommunityprofileFilesIssueTemplate();

  @override
  String toString() {
    return 'AllOfcommunityprofileFilesIssueTemplate[url=$url, htmlUrl=$htmlUrl, ]';
  }

  AllOfcommunityprofileFilesIssueTemplate.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfcommunityprofileFilesIssueTemplate> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommunityprofileFilesIssueTemplate>() : json.map((value) => new AllOfcommunityprofileFilesIssueTemplate.fromJson(value)).toList();
  }

  static Map<String, AllOfcommunityprofileFilesIssueTemplate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommunityprofileFilesIssueTemplate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommunityprofileFilesIssueTemplate.fromJson(value));
    }
    return map;
  }
}

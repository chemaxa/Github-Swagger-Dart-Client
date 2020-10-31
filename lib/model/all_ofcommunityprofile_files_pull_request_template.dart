part of swagger.api;

class AllOfcommunityprofileFilesPullRequestTemplate {
  
  String url = null;

  String htmlUrl = null;

  AllOfcommunityprofileFilesPullRequestTemplate();

  @override
  String toString() {
    return 'AllOfcommunityprofileFilesPullRequestTemplate[url=$url, htmlUrl=$htmlUrl, ]';
  }

  AllOfcommunityprofileFilesPullRequestTemplate.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfcommunityprofileFilesPullRequestTemplate> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommunityprofileFilesPullRequestTemplate>() : json.map((value) => new AllOfcommunityprofileFilesPullRequestTemplate.fromJson(value)).toList();
  }

  static Map<String, AllOfcommunityprofileFilesPullRequestTemplate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommunityprofileFilesPullRequestTemplate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommunityprofileFilesPullRequestTemplate.fromJson(value));
    }
    return map;
  }
}

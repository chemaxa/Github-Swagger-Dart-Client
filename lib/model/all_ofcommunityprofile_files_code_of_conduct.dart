part of swagger.api;

class AllOfcommunityprofileFilesCodeOfConduct {
  
  String url = null;

  String key = null;

  String name = null;

  String htmlUrl = null;

  AllOfcommunityprofileFilesCodeOfConduct();

  @override
  String toString() {
    return 'AllOfcommunityprofileFilesCodeOfConduct[url=$url, key=$key, name=$name, htmlUrl=$htmlUrl, ]';
  }

  AllOfcommunityprofileFilesCodeOfConduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    key = json['key'];
    name = json['name'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'key': key,
      'name': name,
      'html_url': htmlUrl
     };
  }

  static List<AllOfcommunityprofileFilesCodeOfConduct> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommunityprofileFilesCodeOfConduct>() : json.map((value) => new AllOfcommunityprofileFilesCodeOfConduct.fromJson(value)).toList();
  }

  static Map<String, AllOfcommunityprofileFilesCodeOfConduct> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommunityprofileFilesCodeOfConduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommunityprofileFilesCodeOfConduct.fromJson(value));
    }
    return map;
  }
}

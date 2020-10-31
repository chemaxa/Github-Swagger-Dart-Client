part of swagger.api;

class AllOfcommunityprofileFilesLicense {
  
  String key = null;

  String name = null;

  String url = null;

  String spdxId = null;

  String nodeId = null;

  String htmlUrl = null;

  AllOfcommunityprofileFilesLicense();

  @override
  String toString() {
    return 'AllOfcommunityprofileFilesLicense[key=$key, name=$name, url=$url, spdxId=$spdxId, nodeId=$nodeId, htmlUrl=$htmlUrl, ]';
  }

  AllOfcommunityprofileFilesLicense.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    name = json['name'];
    url = json['url'];
    spdxId = json['spdx_id'];
    nodeId = json['node_id'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'name': name,
      'url': url,
      'spdx_id': spdxId,
      'node_id': nodeId,
      'html_url': htmlUrl
     };
  }

  static List<AllOfcommunityprofileFilesLicense> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfcommunityprofileFilesLicense>() : json.map((value) => new AllOfcommunityprofileFilesLicense.fromJson(value)).toList();
  }

  static Map<String, AllOfcommunityprofileFilesLicense> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfcommunityprofileFilesLicense>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfcommunityprofileFilesLicense.fromJson(value));
    }
    return map;
  }
}

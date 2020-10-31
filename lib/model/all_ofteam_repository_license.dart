part of swagger.api;

class AllOfteamRepositoryLicense {
  
  String key = null;

  String name = null;

  String url = null;

  String spdxId = null;

  String nodeId = null;

  String htmlUrl = null;

  AllOfteamRepositoryLicense();

  @override
  String toString() {
    return 'AllOfteamRepositoryLicense[key=$key, name=$name, url=$url, spdxId=$spdxId, nodeId=$nodeId, htmlUrl=$htmlUrl, ]';
  }

  AllOfteamRepositoryLicense.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfteamRepositoryLicense> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfteamRepositoryLicense>() : json.map((value) => new AllOfteamRepositoryLicense.fromJson(value)).toList();
  }

  static Map<String, AllOfteamRepositoryLicense> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfteamRepositoryLicense>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfteamRepositoryLicense.fromJson(value));
    }
    return map;
  }
}

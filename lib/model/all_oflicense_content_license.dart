part of swagger.api;

class AllOflicenseContentLicense {
  
  String key = null;

  String name = null;

  String url = null;

  String spdxId = null;

  String nodeId = null;

  String htmlUrl = null;

  AllOflicenseContentLicense();

  @override
  String toString() {
    return 'AllOflicenseContentLicense[key=$key, name=$name, url=$url, spdxId=$spdxId, nodeId=$nodeId, htmlUrl=$htmlUrl, ]';
  }

  AllOflicenseContentLicense.fromJson(Map<String, dynamic> json) {
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

  static List<AllOflicenseContentLicense> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOflicenseContentLicense>() : json.map((value) => new AllOflicenseContentLicense.fromJson(value)).toList();
  }

  static Map<String, AllOflicenseContentLicense> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOflicenseContentLicense>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOflicenseContentLicense.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class LicenseSimple {
  
  String key = null;

  String name = null;

  String url = null;

  String spdxId = null;

  String nodeId = null;

  String htmlUrl = null;

  LicenseSimple();

  @override
  String toString() {
    return 'LicenseSimple[key=$key, name=$name, url=$url, spdxId=$spdxId, nodeId=$nodeId, htmlUrl=$htmlUrl, ]';
  }

  LicenseSimple.fromJson(Map<String, dynamic> json) {
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

  static List<LicenseSimple> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseSimple>() : json.map((value) => new LicenseSimple.fromJson(value)).toList();
  }

  static Map<String, LicenseSimple> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseSimple>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseSimple.fromJson(value));
    }
    return map;
  }
}

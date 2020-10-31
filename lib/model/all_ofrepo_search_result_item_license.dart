part of swagger.api;

class AllOfrepoSearchResultItemLicense {
  
  String key = null;

  String name = null;

  String url = null;

  String spdxId = null;

  String nodeId = null;

  String htmlUrl = null;

  AllOfrepoSearchResultItemLicense();

  @override
  String toString() {
    return 'AllOfrepoSearchResultItemLicense[key=$key, name=$name, url=$url, spdxId=$spdxId, nodeId=$nodeId, htmlUrl=$htmlUrl, ]';
  }

  AllOfrepoSearchResultItemLicense.fromJson(Map<String, dynamic> json) {
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

  static List<AllOfrepoSearchResultItemLicense> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfrepoSearchResultItemLicense>() : json.map((value) => new AllOfrepoSearchResultItemLicense.fromJson(value)).toList();
  }

  static Map<String, AllOfrepoSearchResultItemLicense> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfrepoSearchResultItemLicense>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfrepoSearchResultItemLicense.fromJson(value));
    }
    return map;
  }
}

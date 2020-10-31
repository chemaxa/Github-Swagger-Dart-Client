part of swagger.api;

class MinimalrepositoryLicense {
  
  String key = null;

  String name = null;

  String spdxId = null;

  String url = null;

  String nodeId = null;

  MinimalrepositoryLicense();

  @override
  String toString() {
    return 'MinimalrepositoryLicense[key=$key, name=$name, spdxId=$spdxId, url=$url, nodeId=$nodeId, ]';
  }

  MinimalrepositoryLicense.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    name = json['name'];
    spdxId = json['spdx_id'];
    url = json['url'];
    nodeId = json['node_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'name': name,
      'spdx_id': spdxId,
      'url': url,
      'node_id': nodeId
     };
  }

  static List<MinimalrepositoryLicense> listFromJson(List<dynamic> json) {
    return json == null ? new List<MinimalrepositoryLicense>() : json.map((value) => new MinimalrepositoryLicense.fromJson(value)).toList();
  }

  static Map<String, MinimalrepositoryLicense> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MinimalrepositoryLicense>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MinimalrepositoryLicense.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class PullrequestHeadRepoLicense {
  
  String key = null;

  String name = null;

  String url = null;

  String spdxId = null;

  String nodeId = null;

  PullrequestHeadRepoLicense();

  @override
  String toString() {
    return 'PullrequestHeadRepoLicense[key=$key, name=$name, url=$url, spdxId=$spdxId, nodeId=$nodeId, ]';
  }

  PullrequestHeadRepoLicense.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    name = json['name'];
    url = json['url'];
    spdxId = json['spdx_id'];
    nodeId = json['node_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'name': name,
      'url': url,
      'spdx_id': spdxId,
      'node_id': nodeId
     };
  }

  static List<PullrequestHeadRepoLicense> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestHeadRepoLicense>() : json.map((value) => new PullrequestHeadRepoLicense.fromJson(value)).toList();
  }

  static Map<String, PullrequestHeadRepoLicense> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestHeadRepoLicense>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestHeadRepoLicense.fromJson(value));
    }
    return map;
  }
}

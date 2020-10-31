part of swagger.api;

class License {
  
  String key = null;

  String name = null;

  String spdxId = null;

  String url = null;

  String nodeId = null;

  String htmlUrl = null;

  String description = null;

  String implementation = null;

  List<String> permissions = [];

  List<String> conditions = [];

  List<String> limitations = [];

  String body = null;

  bool featured = null;

  License();

  @override
  String toString() {
    return 'License[key=$key, name=$name, spdxId=$spdxId, url=$url, nodeId=$nodeId, htmlUrl=$htmlUrl, description=$description, implementation=$implementation, permissions=$permissions, conditions=$conditions, limitations=$limitations, body=$body, featured=$featured, ]';
  }

  License.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    name = json['name'];
    spdxId = json['spdx_id'];
    url = json['url'];
    nodeId = json['node_id'];
    htmlUrl = json['html_url'];
    description = json['description'];
    implementation = json['implementation'];
    permissions = (json['permissions'] as List).map((item) => item as String).toList();
    conditions = (json['conditions'] as List).map((item) => item as String).toList();
    limitations = (json['limitations'] as List).map((item) => item as String).toList();
    body = json['body'];
    featured = json['featured'];
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'name': name,
      'spdx_id': spdxId,
      'url': url,
      'node_id': nodeId,
      'html_url': htmlUrl,
      'description': description,
      'implementation': implementation,
      'permissions': permissions,
      'conditions': conditions,
      'limitations': limitations,
      'body': body,
      'featured': featured
     };
  }

  static List<License> listFromJson(List<dynamic> json) {
    return json == null ? new List<License>() : json.map((value) => new License.fromJson(value)).toList();
  }

  static Map<String, License> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, License>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new License.fromJson(value));
    }
    return map;
  }
}

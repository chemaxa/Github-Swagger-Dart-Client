part of swagger.api;

class BranchrestrictionpolicyApps {
  
  int id = null;

  String slug = null;

  String nodeId = null;

  BranchrestrictionpolicyOwner owner = null;

  String name = null;

  String description = null;

  String externalUrl = null;

  String htmlUrl = null;

  String createdAt = null;

  String updatedAt = null;

  BranchrestrictionpolicyPermissions permissions = null;

  List<String> events = [];

  BranchrestrictionpolicyApps();

  @override
  String toString() {
    return 'BranchrestrictionpolicyApps[id=$id, slug=$slug, nodeId=$nodeId, owner=$owner, name=$name, description=$description, externalUrl=$externalUrl, htmlUrl=$htmlUrl, createdAt=$createdAt, updatedAt=$updatedAt, permissions=$permissions, events=$events, ]';
  }

  BranchrestrictionpolicyApps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    slug = json['slug'];
    nodeId = json['node_id'];
    owner = new BranchrestrictionpolicyOwner.fromJson(json['owner']);
    name = json['name'];
    description = json['description'];
    externalUrl = json['external_url'];
    htmlUrl = json['html_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    permissions = new BranchrestrictionpolicyPermissions.fromJson(json['permissions']);
    events = (json['events'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'node_id': nodeId,
      'owner': owner,
      'name': name,
      'description': description,
      'external_url': externalUrl,
      'html_url': htmlUrl,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'permissions': permissions,
      'events': events
     };
  }

  static List<BranchrestrictionpolicyApps> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchrestrictionpolicyApps>() : json.map((value) => new BranchrestrictionpolicyApps.fromJson(value)).toList();
  }

  static Map<String, BranchrestrictionpolicyApps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchrestrictionpolicyApps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchrestrictionpolicyApps.fromJson(value));
    }
    return map;
  }
}

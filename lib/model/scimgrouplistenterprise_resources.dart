part of swagger.api;

class ScimgrouplistenterpriseResources {
  
  List<String> schemas = [];

  String id = null;

  String externalId = null;

  String displayName = null;

  List<ScimgrouplistenterpriseMembers> members = [];

  ScimgrouplistenterpriseMeta meta = null;

  ScimgrouplistenterpriseResources();

  @override
  String toString() {
    return 'ScimgrouplistenterpriseResources[schemas=$schemas, id=$id, externalId=$externalId, displayName=$displayName, members=$members, meta=$meta, ]';
  }

  ScimgrouplistenterpriseResources.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    id = json['id'];
    externalId = json['externalId'];
    displayName = json['displayName'];
    members = ScimgrouplistenterpriseMembers.listFromJson(json['members']);
    meta = new ScimgrouplistenterpriseMeta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'id': id,
      'externalId': externalId,
      'displayName': displayName,
      'members': members,
      'meta': meta
     };
  }

  static List<ScimgrouplistenterpriseResources> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimgrouplistenterpriseResources>() : json.map((value) => new ScimgrouplistenterpriseResources.fromJson(value)).toList();
  }

  static Map<String, ScimgrouplistenterpriseResources> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimgrouplistenterpriseResources>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimgrouplistenterpriseResources.fromJson(value));
    }
    return map;
  }
}

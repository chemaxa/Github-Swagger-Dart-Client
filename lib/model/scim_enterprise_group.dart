part of swagger.api;

class ScimEnterpriseGroup {
  
  List<String> schemas = [];

  String id = null;

  String externalId = null;

  String displayName = null;

  List<ScimgrouplistenterpriseMembers> members = [];

  ScimgrouplistenterpriseMeta meta = null;

  ScimEnterpriseGroup();

  @override
  String toString() {
    return 'ScimEnterpriseGroup[schemas=$schemas, id=$id, externalId=$externalId, displayName=$displayName, members=$members, meta=$meta, ]';
  }

  ScimEnterpriseGroup.fromJson(Map<String, dynamic> json) {
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

  static List<ScimEnterpriseGroup> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimEnterpriseGroup>() : json.map((value) => new ScimEnterpriseGroup.fromJson(value)).toList();
  }

  static Map<String, ScimEnterpriseGroup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimEnterpriseGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimEnterpriseGroup.fromJson(value));
    }
    return map;
  }
}

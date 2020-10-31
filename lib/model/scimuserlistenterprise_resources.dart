part of swagger.api;

class ScimuserlistenterpriseResources {
  
  List<String> schemas = [];

  String id = null;

  String externalId = null;

  String userName = null;

  ScimuserlistenterpriseName name = null;

  List<ScimuserlistenterpriseEmails> emails = [];

  List<Scimv2enterprisesenterpriseUsersGroups> groups = [];

  bool active = null;

  ScimgrouplistenterpriseMeta meta = null;

  ScimuserlistenterpriseResources();

  @override
  String toString() {
    return 'ScimuserlistenterpriseResources[schemas=$schemas, id=$id, externalId=$externalId, userName=$userName, name=$name, emails=$emails, groups=$groups, active=$active, meta=$meta, ]';
  }

  ScimuserlistenterpriseResources.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    id = json['id'];
    externalId = json['externalId'];
    userName = json['userName'];
    name = new ScimuserlistenterpriseName.fromJson(json['name']);
    emails = ScimuserlistenterpriseEmails.listFromJson(json['emails']);
    groups = Scimv2enterprisesenterpriseUsersGroups.listFromJson(json['groups']);
    active = json['active'];
    meta = new ScimgrouplistenterpriseMeta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'id': id,
      'externalId': externalId,
      'userName': userName,
      'name': name,
      'emails': emails,
      'groups': groups,
      'active': active,
      'meta': meta
     };
  }

  static List<ScimuserlistenterpriseResources> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimuserlistenterpriseResources>() : json.map((value) => new ScimuserlistenterpriseResources.fromJson(value)).toList();
  }

  static Map<String, ScimuserlistenterpriseResources> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimuserlistenterpriseResources>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimuserlistenterpriseResources.fromJson(value));
    }
    return map;
  }
}

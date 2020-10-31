part of swagger.api;

class ScimEnterpriseUser {
  
  List<String> schemas = [];

  String id = null;

  String externalId = null;

  String userName = null;

  ScimuserlistenterpriseName name = null;

  List<ScimenterpriseuserEmails> emails = [];

  List<Scimv2enterprisesenterpriseUsersGroups> groups = [];

  bool active = null;

  ScimgrouplistenterpriseMeta meta = null;

  ScimEnterpriseUser();

  @override
  String toString() {
    return 'ScimEnterpriseUser[schemas=$schemas, id=$id, externalId=$externalId, userName=$userName, name=$name, emails=$emails, groups=$groups, active=$active, meta=$meta, ]';
  }

  ScimEnterpriseUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    id = json['id'];
    externalId = json['externalId'];
    userName = json['userName'];
    name = new ScimuserlistenterpriseName.fromJson(json['name']);
    emails = ScimenterpriseuserEmails.listFromJson(json['emails']);
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

  static List<ScimEnterpriseUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimEnterpriseUser>() : json.map((value) => new ScimEnterpriseUser.fromJson(value)).toList();
  }

  static Map<String, ScimEnterpriseUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimEnterpriseUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimEnterpriseUser.fromJson(value));
    }
    return map;
  }
}

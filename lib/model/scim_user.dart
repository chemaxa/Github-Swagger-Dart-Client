part of swagger.api;

class ScimUser {
  /* SCIM schema used. */
  List<String> schemas = [];
/* Unique identifier of an external identity */
  String id = null;
/* The ID of the User. */
  String externalId = null;
/* Configured by the admin. Could be an email, login, or username */
  String userName = null;
/* The name of the user, suitable for display to end-users */
  String displayName = null;

  ScimuserName name = null;
/* user emails */
  List<ScimuserEmails> emails = [];
/* The active status of the User. */
  bool active = null;

  ScimuserMeta meta = null;
/* The ID of the organization. */
  int organizationId = null;
/* Set of operations to be performed */
  List<ScimuserOperations> operations = [];
/* associated groups */
  List<ScimuserGroups> groups = [];

  ScimUser();

  @override
  String toString() {
    return 'ScimUser[schemas=$schemas, id=$id, externalId=$externalId, userName=$userName, displayName=$displayName, name=$name, emails=$emails, active=$active, meta=$meta, organizationId=$organizationId, operations=$operations, groups=$groups, ]';
  }

  ScimUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    id = json['id'];
    externalId = json['externalId'];
    userName = json['userName'];
    displayName = json['displayName'];
    name = new ScimuserName.fromJson(json['name']);
    emails = ScimuserEmails.listFromJson(json['emails']);
    active = json['active'];
    meta = new ScimuserMeta.fromJson(json['meta']);
    organizationId = json['organization_id'];
    operations = ScimuserOperations.listFromJson(json['operations']);
    groups = ScimuserGroups.listFromJson(json['groups']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'id': id,
      'externalId': externalId,
      'userName': userName,
      'displayName': displayName,
      'name': name,
      'emails': emails,
      'active': active,
      'meta': meta,
      'organization_id': organizationId,
      'operations': operations,
      'groups': groups
     };
  }

  static List<ScimUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimUser>() : json.map((value) => new ScimUser.fromJson(value)).toList();
  }

  static Map<String, ScimUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimUser.fromJson(value));
    }
    return map;
  }
}

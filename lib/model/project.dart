part of swagger.api;

class Project {
  
  String ownerUrl = null;

  String url = null;

  String htmlUrl = null;

  String columnsUrl = null;

  int id = null;

  String nodeId = null;
/* Name of the project */
  String name = null;
/* Body of the project */
  String body = null;

  int number = null;
/* State of the project; either 'open' or 'closed' */
  String state = null;

  AllOfprojectCreator creator = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;
/* The baseline permission that all organization members have on this project */
  String organizationPermission = null;
  //enum organizationPermissionEnum {  read,  write,  admin,  none,  };
/* Whether or not this project can be seen by everyone. */
  bool private = null;

  String cardsUrl = null;

  ProjectPermissions permissions = null;

  Project();

  @override
  String toString() {
    return 'Project[ownerUrl=$ownerUrl, url=$url, htmlUrl=$htmlUrl, columnsUrl=$columnsUrl, id=$id, nodeId=$nodeId, name=$name, body=$body, number=$number, state=$state, creator=$creator, createdAt=$createdAt, updatedAt=$updatedAt, organizationPermission=$organizationPermission, private=$private, cardsUrl=$cardsUrl, permissions=$permissions, ]';
  }

  Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ownerUrl = json['owner_url'];
    url = json['url'];
    htmlUrl = json['html_url'];
    columnsUrl = json['columns_url'];
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    body = json['body'];
    number = json['number'];
    state = json['state'];
    creator = new AllOfprojectCreator.fromJson(json['creator']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    organizationPermission = json['organization_permission'];
    private = json['private'];
    cardsUrl = json['cards_url'];
    permissions = new ProjectPermissions.fromJson(json['permissions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'owner_url': ownerUrl,
      'url': url,
      'html_url': htmlUrl,
      'columns_url': columnsUrl,
      'id': id,
      'node_id': nodeId,
      'name': name,
      'body': body,
      'number': number,
      'state': state,
      'creator': creator,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'organization_permission': organizationPermission,
      'private': private,
      'cards_url': cardsUrl,
      'permissions': permissions
     };
  }

  static List<Project> listFromJson(List<dynamic> json) {
    return json == null ? new List<Project>() : json.map((value) => new Project.fromJson(value)).toList();
  }

  static Map<String, Project> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Project.fromJson(value));
    }
    return map;
  }
}

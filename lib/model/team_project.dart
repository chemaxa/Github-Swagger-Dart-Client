part of swagger.api;

class TeamProject {
  
  String ownerUrl = null;

  String url = null;

  String htmlUrl = null;

  String columnsUrl = null;

  int id = null;

  String nodeId = null;

  String name = null;

  String body = null;

  int number = null;

  String state = null;

  SimpleUser creator = null;

  String createdAt = null;

  String updatedAt = null;

  String organizationPermission = null;

  bool private = null;

  TeamprojectPermissions permissions = null;

  TeamProject();

  @override
  String toString() {
    return 'TeamProject[ownerUrl=$ownerUrl, url=$url, htmlUrl=$htmlUrl, columnsUrl=$columnsUrl, id=$id, nodeId=$nodeId, name=$name, body=$body, number=$number, state=$state, creator=$creator, createdAt=$createdAt, updatedAt=$updatedAt, organizationPermission=$organizationPermission, private=$private, permissions=$permissions, ]';
  }

  TeamProject.fromJson(Map<String, dynamic> json) {
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
    creator = new SimpleUser.fromJson(json['creator']);
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    organizationPermission = json['organization_permission'];
    private = json['private'];
    permissions = new TeamprojectPermissions.fromJson(json['permissions']);
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
      'created_at': createdAt,
      'updated_at': updatedAt,
      'organization_permission': organizationPermission,
      'private': private,
      'permissions': permissions
     };
  }

  static List<TeamProject> listFromJson(List<dynamic> json) {
    return json == null ? new List<TeamProject>() : json.map((value) => new TeamProject.fromJson(value)).toList();
  }

  static Map<String, TeamProject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TeamProject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TeamProject.fromJson(value));
    }
    return map;
  }
}

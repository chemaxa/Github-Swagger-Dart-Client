part of swagger.api;

class TeamFull {
  /* Unique identifier of the team */
  int id = null;

  String nodeId = null;
/* URL for the team */
  String url = null;

  String htmlUrl = null;
/* Name of the team */
  String name = null;

  String slug = null;

  String description = null;
/* The level of privacy this team should have */
  String privacy = null;
  //enum privacyEnum {  closed,  secret,  };
/* Permission that the team will have for its repositories */
  String permission = null;

  String membersUrl = null;

  String repositoriesUrl = null;

  AllOfteamFullParent parent = null;

  int membersCount = null;

  int reposCount = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  OrganizationFull organization = null;
/* Distinguished Name (DN) that team maps to within LDAP environment */
  String ldapDn = null;

  TeamFull();

  @override
  String toString() {
    return 'TeamFull[id=$id, nodeId=$nodeId, url=$url, htmlUrl=$htmlUrl, name=$name, slug=$slug, description=$description, privacy=$privacy, permission=$permission, membersUrl=$membersUrl, repositoriesUrl=$repositoriesUrl, parent=$parent, membersCount=$membersCount, reposCount=$reposCount, createdAt=$createdAt, updatedAt=$updatedAt, organization=$organization, ldapDn=$ldapDn, ]';
  }

  TeamFull.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    privacy = json['privacy'];
    permission = json['permission'];
    membersUrl = json['members_url'];
    repositoriesUrl = json['repositories_url'];
    parent = new AllOfteamFullParent.fromJson(json['parent']);
    membersCount = json['members_count'];
    reposCount = json['repos_count'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    organization = new OrganizationFull.fromJson(json['organization']);
    ldapDn = json['ldap_dn'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'html_url': htmlUrl,
      'name': name,
      'slug': slug,
      'description': description,
      'privacy': privacy,
      'permission': permission,
      'members_url': membersUrl,
      'repositories_url': repositoriesUrl,
      'parent': parent,
      'members_count': membersCount,
      'repos_count': reposCount,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'organization': organization,
      'ldap_dn': ldapDn
     };
  }

  static List<TeamFull> listFromJson(List<dynamic> json) {
    return json == null ? new List<TeamFull>() : json.map((value) => new TeamFull.fromJson(value)).toList();
  }

  static Map<String, TeamFull> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TeamFull>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TeamFull.fromJson(value));
    }
    return map;
  }
}

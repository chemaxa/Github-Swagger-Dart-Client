part of swagger.api;

class AllOfteamParent {
  /* Unique identifier of the team */
  int id = null;

  String nodeId = null;
/* URL for the team */
  String url = null;

  String membersUrl = null;
/* Name of the team */
  String name = null;
/* Description of the team */
  String description = null;
/* Permission that the team will have for its repositories */
  String permission = null;
/* The level of privacy this team should have */
  String privacy = null;

  String htmlUrl = null;

  String repositoriesUrl = null;

  String slug = null;
/* Distinguished Name (DN) that team maps to within LDAP environment */
  String ldapDn = null;

  AllOfteamParent();

  @override
  String toString() {
    return 'AllOfteamParent[id=$id, nodeId=$nodeId, url=$url, membersUrl=$membersUrl, name=$name, description=$description, permission=$permission, privacy=$privacy, htmlUrl=$htmlUrl, repositoriesUrl=$repositoriesUrl, slug=$slug, ldapDn=$ldapDn, ]';
  }

  AllOfteamParent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    membersUrl = json['members_url'];
    name = json['name'];
    description = json['description'];
    permission = json['permission'];
    privacy = json['privacy'];
    htmlUrl = json['html_url'];
    repositoriesUrl = json['repositories_url'];
    slug = json['slug'];
    ldapDn = json['ldap_dn'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'url': url,
      'members_url': membersUrl,
      'name': name,
      'description': description,
      'permission': permission,
      'privacy': privacy,
      'html_url': htmlUrl,
      'repositories_url': repositoriesUrl,
      'slug': slug,
      'ldap_dn': ldapDn
     };
  }

  static List<AllOfteamParent> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOfteamParent>() : json.map((value) => new AllOfteamParent.fromJson(value)).toList();
  }

  static Map<String, AllOfteamParent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOfteamParent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOfteamParent.fromJson(value));
    }
    return map;
  }
}

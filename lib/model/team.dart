part of swagger.api;

class Team {
  
  int id = null;

  String nodeId = null;

  String name = null;

  String slug = null;

  String description = null;

  String privacy = null;

  String permission = null;

  String url = null;

  String htmlUrl = null;

  String membersUrl = null;

  String repositoriesUrl = null;

  AllOfteamParent parent = null;

  Team();

  @override
  String toString() {
    return 'Team[id=$id, nodeId=$nodeId, name=$name, slug=$slug, description=$description, privacy=$privacy, permission=$permission, url=$url, htmlUrl=$htmlUrl, membersUrl=$membersUrl, repositoriesUrl=$repositoriesUrl, parent=$parent, ]';
  }

  Team.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    privacy = json['privacy'];
    permission = json['permission'];
    url = json['url'];
    htmlUrl = json['html_url'];
    membersUrl = json['members_url'];
    repositoriesUrl = json['repositories_url'];
    parent = new AllOfteamParent.fromJson(json['parent']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'slug': slug,
      'description': description,
      'privacy': privacy,
      'permission': permission,
      'url': url,
      'html_url': htmlUrl,
      'members_url': membersUrl,
      'repositories_url': repositoriesUrl,
      'parent': parent
     };
  }

  static List<Team> listFromJson(List<dynamic> json) {
    return json == null ? new List<Team>() : json.map((value) => new Team.fromJson(value)).toList();
  }

  static Map<String, Team> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Team>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Team.fromJson(value));
    }
    return map;
  }
}

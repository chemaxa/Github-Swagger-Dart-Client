part of swagger.api;

class BranchrestrictionpolicyTeams {
  
  int id = null;

  String nodeId = null;

  String url = null;

  String htmlUrl = null;

  String name = null;

  String slug = null;

  String description = null;

  String privacy = null;

  String permission = null;

  String membersUrl = null;

  String repositoriesUrl = null;

  String parent = null;

  BranchrestrictionpolicyTeams();

  @override
  String toString() {
    return 'BranchrestrictionpolicyTeams[id=$id, nodeId=$nodeId, url=$url, htmlUrl=$htmlUrl, name=$name, slug=$slug, description=$description, privacy=$privacy, permission=$permission, membersUrl=$membersUrl, repositoriesUrl=$repositoriesUrl, parent=$parent, ]';
  }

  BranchrestrictionpolicyTeams.fromJson(Map<String, dynamic> json) {
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
    parent = json['parent'];
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
      'parent': parent
     };
  }

  static List<BranchrestrictionpolicyTeams> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchrestrictionpolicyTeams>() : json.map((value) => new BranchrestrictionpolicyTeams.fromJson(value)).toList();
  }

  static Map<String, BranchrestrictionpolicyTeams> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchrestrictionpolicyTeams>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchrestrictionpolicyTeams.fromJson(value));
    }
    return map;
  }
}

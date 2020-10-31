part of swagger.api;

class OrganizationSimple {
  
  String login = null;

  int id = null;

  String nodeId = null;

  String url = null;

  String reposUrl = null;

  String eventsUrl = null;

  String hooksUrl = null;

  String issuesUrl = null;

  String membersUrl = null;

  String publicMembersUrl = null;

  String avatarUrl = null;

  String description = null;

  OrganizationSimple();

  @override
  String toString() {
    return 'OrganizationSimple[login=$login, id=$id, nodeId=$nodeId, url=$url, reposUrl=$reposUrl, eventsUrl=$eventsUrl, hooksUrl=$hooksUrl, issuesUrl=$issuesUrl, membersUrl=$membersUrl, publicMembersUrl=$publicMembersUrl, avatarUrl=$avatarUrl, description=$description, ]';
  }

  OrganizationSimple.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    url = json['url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    hooksUrl = json['hooks_url'];
    issuesUrl = json['issues_url'];
    membersUrl = json['members_url'];
    publicMembersUrl = json['public_members_url'];
    avatarUrl = json['avatar_url'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'id': id,
      'node_id': nodeId,
      'url': url,
      'repos_url': reposUrl,
      'events_url': eventsUrl,
      'hooks_url': hooksUrl,
      'issues_url': issuesUrl,
      'members_url': membersUrl,
      'public_members_url': publicMembersUrl,
      'avatar_url': avatarUrl,
      'description': description
     };
  }

  static List<OrganizationSimple> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrganizationSimple>() : json.map((value) => new OrganizationSimple.fromJson(value)).toList();
  }

  static Map<String, OrganizationSimple> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrganizationSimple>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrganizationSimple.fromJson(value));
    }
    return map;
  }
}

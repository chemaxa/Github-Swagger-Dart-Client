part of swagger.api;

class Collaborator {
  
  String login = null;

  int id = null;

  String nodeId = null;

  String avatarUrl = null;

  String gravatarId = null;

  String url = null;

  String htmlUrl = null;

  String followersUrl = null;

  String followingUrl = null;

  String gistsUrl = null;

  String starredUrl = null;

  String subscriptionsUrl = null;

  String organizationsUrl = null;

  String reposUrl = null;

  String eventsUrl = null;

  String receivedEventsUrl = null;

  String type = null;

  bool siteAdmin = null;

  CollaboratorPermissions permissions = null;

  Collaborator();

  @override
  String toString() {
    return 'Collaborator[login=$login, id=$id, nodeId=$nodeId, avatarUrl=$avatarUrl, gravatarId=$gravatarId, url=$url, htmlUrl=$htmlUrl, followersUrl=$followersUrl, followingUrl=$followingUrl, gistsUrl=$gistsUrl, starredUrl=$starredUrl, subscriptionsUrl=$subscriptionsUrl, organizationsUrl=$organizationsUrl, reposUrl=$reposUrl, eventsUrl=$eventsUrl, receivedEventsUrl=$receivedEventsUrl, type=$type, siteAdmin=$siteAdmin, permissions=$permissions, ]';
  }

  Collaborator.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
    permissions = new CollaboratorPermissions.fromJson(json['permissions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'id': id,
      'node_id': nodeId,
      'avatar_url': avatarUrl,
      'gravatar_id': gravatarId,
      'url': url,
      'html_url': htmlUrl,
      'followers_url': followersUrl,
      'following_url': followingUrl,
      'gists_url': gistsUrl,
      'starred_url': starredUrl,
      'subscriptions_url': subscriptionsUrl,
      'organizations_url': organizationsUrl,
      'repos_url': reposUrl,
      'events_url': eventsUrl,
      'received_events_url': receivedEventsUrl,
      'type': type,
      'site_admin': siteAdmin,
      'permissions': permissions
     };
  }

  static List<Collaborator> listFromJson(List<dynamic> json) {
    return json == null ? new List<Collaborator>() : json.map((value) => new Collaborator.fromJson(value)).toList();
  }

  static Map<String, Collaborator> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Collaborator>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Collaborator.fromJson(value));
    }
    return map;
  }
}

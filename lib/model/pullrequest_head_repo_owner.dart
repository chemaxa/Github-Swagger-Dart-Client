part of swagger.api;

class PullrequestHeadRepoOwner {
  
  String avatarUrl = null;

  String eventsUrl = null;

  String followersUrl = null;

  String followingUrl = null;

  String gistsUrl = null;

  String gravatarId = null;

  String htmlUrl = null;

  int id = null;

  String nodeId = null;

  String login = null;

  String organizationsUrl = null;

  String receivedEventsUrl = null;

  String reposUrl = null;

  bool siteAdmin = null;

  String starredUrl = null;

  String subscriptionsUrl = null;

  String type = null;

  String url = null;

  PullrequestHeadRepoOwner();

  @override
  String toString() {
    return 'PullrequestHeadRepoOwner[avatarUrl=$avatarUrl, eventsUrl=$eventsUrl, followersUrl=$followersUrl, followingUrl=$followingUrl, gistsUrl=$gistsUrl, gravatarId=$gravatarId, htmlUrl=$htmlUrl, id=$id, nodeId=$nodeId, login=$login, organizationsUrl=$organizationsUrl, receivedEventsUrl=$receivedEventsUrl, reposUrl=$reposUrl, siteAdmin=$siteAdmin, starredUrl=$starredUrl, subscriptionsUrl=$subscriptionsUrl, type=$type, url=$url, ]';
  }

  PullrequestHeadRepoOwner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    avatarUrl = json['avatar_url'];
    eventsUrl = json['events_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    gravatarId = json['gravatar_id'];
    htmlUrl = json['html_url'];
    id = json['id'];
    nodeId = json['node_id'];
    login = json['login'];
    organizationsUrl = json['organizations_url'];
    receivedEventsUrl = json['received_events_url'];
    reposUrl = json['repos_url'];
    siteAdmin = json['site_admin'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'avatar_url': avatarUrl,
      'events_url': eventsUrl,
      'followers_url': followersUrl,
      'following_url': followingUrl,
      'gists_url': gistsUrl,
      'gravatar_id': gravatarId,
      'html_url': htmlUrl,
      'id': id,
      'node_id': nodeId,
      'login': login,
      'organizations_url': organizationsUrl,
      'received_events_url': receivedEventsUrl,
      'repos_url': reposUrl,
      'site_admin': siteAdmin,
      'starred_url': starredUrl,
      'subscriptions_url': subscriptionsUrl,
      'type': type,
      'url': url
     };
  }

  static List<PullrequestHeadRepoOwner> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestHeadRepoOwner>() : json.map((value) => new PullrequestHeadRepoOwner.fromJson(value)).toList();
  }

  static Map<String, PullrequestHeadRepoOwner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestHeadRepoOwner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestHeadRepoOwner.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class BranchrestrictionpolicyOwner {
  
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

  String gravatarId = null;

  String htmlUrl = null;

  String followersUrl = null;

  String followingUrl = null;

  String gistsUrl = null;

  String starredUrl = null;

  String subscriptionsUrl = null;

  String organizationsUrl = null;

  String receivedEventsUrl = null;

  String type = null;

  BranchrestrictionpolicyOwner();

  @override
  String toString() {
    return 'BranchrestrictionpolicyOwner[login=$login, id=$id, nodeId=$nodeId, url=$url, reposUrl=$reposUrl, eventsUrl=$eventsUrl, hooksUrl=$hooksUrl, issuesUrl=$issuesUrl, membersUrl=$membersUrl, publicMembersUrl=$publicMembersUrl, avatarUrl=$avatarUrl, description=$description, gravatarId=$gravatarId, htmlUrl=$htmlUrl, followersUrl=$followersUrl, followingUrl=$followingUrl, gistsUrl=$gistsUrl, starredUrl=$starredUrl, subscriptionsUrl=$subscriptionsUrl, organizationsUrl=$organizationsUrl, receivedEventsUrl=$receivedEventsUrl, type=$type, ]';
  }

  BranchrestrictionpolicyOwner.fromJson(Map<String, dynamic> json) {
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
    gravatarId = json['gravatar_id'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
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
      'description': description,
      'gravatar_id': gravatarId,
      'html_url': htmlUrl,
      'followers_url': followersUrl,
      'following_url': followingUrl,
      'gists_url': gistsUrl,
      'starred_url': starredUrl,
      'subscriptions_url': subscriptionsUrl,
      'organizations_url': organizationsUrl,
      'received_events_url': receivedEventsUrl,
      'type': type
     };
  }

  static List<BranchrestrictionpolicyOwner> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchrestrictionpolicyOwner>() : json.map((value) => new BranchrestrictionpolicyOwner.fromJson(value)).toList();
  }

  static Map<String, BranchrestrictionpolicyOwner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchrestrictionpolicyOwner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchrestrictionpolicyOwner.fromJson(value));
    }
    return map;
  }
}

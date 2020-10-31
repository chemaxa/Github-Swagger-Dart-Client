part of swagger.api;

class UserSearchResultItem {
  
  String login = null;

  int id = null;

  String nodeId = null;

  String avatarUrl = null;

  String gravatarId = null;

  String url = null;

  String htmlUrl = null;

  String followersUrl = null;

  String subscriptionsUrl = null;

  String organizationsUrl = null;

  String reposUrl = null;

  String receivedEventsUrl = null;

  String type = null;

  int score = null;

  String followingUrl = null;

  String gistsUrl = null;

  String starredUrl = null;

  String eventsUrl = null;

  int publicRepos = null;

  int publicGists = null;

  int followers = null;

  int following = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String name = null;

  String bio = null;

  String email = null;

  String location = null;

  bool siteAdmin = null;

  bool hireable = null;

  SearchResultTextMatches textMatches = null;

  String blog = null;

  String company = null;

  DateTime suspendedAt = null;

  UserSearchResultItem();

  @override
  String toString() {
    return 'UserSearchResultItem[login=$login, id=$id, nodeId=$nodeId, avatarUrl=$avatarUrl, gravatarId=$gravatarId, url=$url, htmlUrl=$htmlUrl, followersUrl=$followersUrl, subscriptionsUrl=$subscriptionsUrl, organizationsUrl=$organizationsUrl, reposUrl=$reposUrl, receivedEventsUrl=$receivedEventsUrl, type=$type, score=$score, followingUrl=$followingUrl, gistsUrl=$gistsUrl, starredUrl=$starredUrl, eventsUrl=$eventsUrl, publicRepos=$publicRepos, publicGists=$publicGists, followers=$followers, following=$following, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, bio=$bio, email=$email, location=$location, siteAdmin=$siteAdmin, hireable=$hireable, textMatches=$textMatches, blog=$blog, company=$company, suspendedAt=$suspendedAt, ]';
  }

  UserSearchResultItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    score = json['score'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    eventsUrl = json['events_url'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    name = json['name'];
    bio = json['bio'];
    email = json['email'];
    location = json['location'];
    siteAdmin = json['site_admin'];
    hireable = json['hireable'];
    textMatches = new SearchResultTextMatches.fromJson(json['text_matches']);
    blog = json['blog'];
    company = json['company'];
    suspendedAt = json['suspended_at'] == null ? null : DateTime.parse(json['suspended_at']);
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
      'subscriptions_url': subscriptionsUrl,
      'organizations_url': organizationsUrl,
      'repos_url': reposUrl,
      'received_events_url': receivedEventsUrl,
      'type': type,
      'score': score,
      'following_url': followingUrl,
      'gists_url': gistsUrl,
      'starred_url': starredUrl,
      'events_url': eventsUrl,
      'public_repos': publicRepos,
      'public_gists': publicGists,
      'followers': followers,
      'following': following,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'name': name,
      'bio': bio,
      'email': email,
      'location': location,
      'site_admin': siteAdmin,
      'hireable': hireable,
      'text_matches': textMatches,
      'blog': blog,
      'company': company,
      'suspended_at': suspendedAt == null ? '' : suspendedAt.toUtc().toIso8601String()
     };
  }

  static List<UserSearchResultItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserSearchResultItem>() : json.map((value) => new UserSearchResultItem.fromJson(value)).toList();
  }

  static Map<String, UserSearchResultItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserSearchResultItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserSearchResultItem.fromJson(value));
    }
    return map;
  }
}

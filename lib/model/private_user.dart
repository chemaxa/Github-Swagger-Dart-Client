part of swagger.api;

class PrivateUser {
  
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

  String name = null;

  String company = null;

  String blog = null;

  String location = null;

  String email = null;

  bool hireable = null;

  String bio = null;

  String twitterUsername = null;

  int publicRepos = null;

  int publicGists = null;

  int followers = null;

  int following = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  int privateGists = null;

  int totalPrivateRepos = null;

  int ownedPrivateRepos = null;

  int diskUsage = null;

  int collaborators = null;

  bool twoFactorAuthentication = null;

  PrivateuserPlan plan = null;

  DateTime suspendedAt = null;

  bool businessPlus = null;

  String ldapDn = null;

  PrivateUser();

  @override
  String toString() {
    return 'PrivateUser[login=$login, id=$id, nodeId=$nodeId, avatarUrl=$avatarUrl, gravatarId=$gravatarId, url=$url, htmlUrl=$htmlUrl, followersUrl=$followersUrl, followingUrl=$followingUrl, gistsUrl=$gistsUrl, starredUrl=$starredUrl, subscriptionsUrl=$subscriptionsUrl, organizationsUrl=$organizationsUrl, reposUrl=$reposUrl, eventsUrl=$eventsUrl, receivedEventsUrl=$receivedEventsUrl, type=$type, siteAdmin=$siteAdmin, name=$name, company=$company, blog=$blog, location=$location, email=$email, hireable=$hireable, bio=$bio, twitterUsername=$twitterUsername, publicRepos=$publicRepos, publicGists=$publicGists, followers=$followers, following=$following, createdAt=$createdAt, updatedAt=$updatedAt, privateGists=$privateGists, totalPrivateRepos=$totalPrivateRepos, ownedPrivateRepos=$ownedPrivateRepos, diskUsage=$diskUsage, collaborators=$collaborators, twoFactorAuthentication=$twoFactorAuthentication, plan=$plan, suspendedAt=$suspendedAt, businessPlus=$businessPlus, ldapDn=$ldapDn, ]';
  }

  PrivateUser.fromJson(Map<String, dynamic> json) {
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
    name = json['name'];
    company = json['company'];
    blog = json['blog'];
    location = json['location'];
    email = json['email'];
    hireable = json['hireable'];
    bio = json['bio'];
    twitterUsername = json['twitter_username'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    privateGists = json['private_gists'];
    totalPrivateRepos = json['total_private_repos'];
    ownedPrivateRepos = json['owned_private_repos'];
    diskUsage = json['disk_usage'];
    collaborators = json['collaborators'];
    twoFactorAuthentication = json['two_factor_authentication'];
    plan = new PrivateuserPlan.fromJson(json['plan']);
    suspendedAt = json['suspended_at'] == null ? null : DateTime.parse(json['suspended_at']);
    businessPlus = json['business_plus'];
    ldapDn = json['ldap_dn'];
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
      'name': name,
      'company': company,
      'blog': blog,
      'location': location,
      'email': email,
      'hireable': hireable,
      'bio': bio,
      'twitter_username': twitterUsername,
      'public_repos': publicRepos,
      'public_gists': publicGists,
      'followers': followers,
      'following': following,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'private_gists': privateGists,
      'total_private_repos': totalPrivateRepos,
      'owned_private_repos': ownedPrivateRepos,
      'disk_usage': diskUsage,
      'collaborators': collaborators,
      'two_factor_authentication': twoFactorAuthentication,
      'plan': plan,
      'suspended_at': suspendedAt == null ? '' : suspendedAt.toUtc().toIso8601String(),
      'business_plus': businessPlus,
      'ldap_dn': ldapDn
     };
  }

  static List<PrivateUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<PrivateUser>() : json.map((value) => new PrivateUser.fromJson(value)).toList();
  }

  static Map<String, PrivateUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PrivateUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PrivateUser.fromJson(value));
    }
    return map;
  }
}

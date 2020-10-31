part of swagger.api;

class OrganizationFull {
  
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

  String name = null;

  String company = null;

  String blog = null;

  String location = null;

  String email = null;

  String twitterUsername = null;

  bool isVerified = null;

  bool hasOrganizationProjects = null;

  bool hasRepositoryProjects = null;

  int publicRepos = null;

  int publicGists = null;

  int followers = null;

  int following = null;

  String htmlUrl = null;

  DateTime createdAt = null;

  String type = null;

  int totalPrivateRepos = null;

  int ownedPrivateRepos = null;

  int privateGists = null;

  int diskUsage = null;

  int collaborators = null;

  String billingEmail = null;

  OrganizationfullPlan plan = null;

  String defaultRepositoryPermission = null;

  bool membersCanCreateRepositories = null;

  bool twoFactorRequirementEnabled = null;

  String membersAllowedRepositoryCreationType = null;

  bool membersCanCreatePublicRepositories = null;

  bool membersCanCreatePrivateRepositories = null;

  bool membersCanCreateInternalRepositories = null;

  bool membersCanCreatePages = null;

  DateTime updatedAt = null;

  OrganizationFull();

  @override
  String toString() {
    return 'OrganizationFull[login=$login, id=$id, nodeId=$nodeId, url=$url, reposUrl=$reposUrl, eventsUrl=$eventsUrl, hooksUrl=$hooksUrl, issuesUrl=$issuesUrl, membersUrl=$membersUrl, publicMembersUrl=$publicMembersUrl, avatarUrl=$avatarUrl, description=$description, name=$name, company=$company, blog=$blog, location=$location, email=$email, twitterUsername=$twitterUsername, isVerified=$isVerified, hasOrganizationProjects=$hasOrganizationProjects, hasRepositoryProjects=$hasRepositoryProjects, publicRepos=$publicRepos, publicGists=$publicGists, followers=$followers, following=$following, htmlUrl=$htmlUrl, createdAt=$createdAt, type=$type, totalPrivateRepos=$totalPrivateRepos, ownedPrivateRepos=$ownedPrivateRepos, privateGists=$privateGists, diskUsage=$diskUsage, collaborators=$collaborators, billingEmail=$billingEmail, plan=$plan, defaultRepositoryPermission=$defaultRepositoryPermission, membersCanCreateRepositories=$membersCanCreateRepositories, twoFactorRequirementEnabled=$twoFactorRequirementEnabled, membersAllowedRepositoryCreationType=$membersAllowedRepositoryCreationType, membersCanCreatePublicRepositories=$membersCanCreatePublicRepositories, membersCanCreatePrivateRepositories=$membersCanCreatePrivateRepositories, membersCanCreateInternalRepositories=$membersCanCreateInternalRepositories, membersCanCreatePages=$membersCanCreatePages, updatedAt=$updatedAt, ]';
  }

  OrganizationFull.fromJson(Map<String, dynamic> json) {
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
    name = json['name'];
    company = json['company'];
    blog = json['blog'];
    location = json['location'];
    email = json['email'];
    twitterUsername = json['twitter_username'];
    isVerified = json['is_verified'];
    hasOrganizationProjects = json['has_organization_projects'];
    hasRepositoryProjects = json['has_repository_projects'];
    publicRepos = json['public_repos'];
    publicGists = json['public_gists'];
    followers = json['followers'];
    following = json['following'];
    htmlUrl = json['html_url'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    type = json['type'];
    totalPrivateRepos = json['total_private_repos'];
    ownedPrivateRepos = json['owned_private_repos'];
    privateGists = json['private_gists'];
    diskUsage = json['disk_usage'];
    collaborators = json['collaborators'];
    billingEmail = json['billing_email'];
    plan = new OrganizationfullPlan.fromJson(json['plan']);
    defaultRepositoryPermission = json['default_repository_permission'];
    membersCanCreateRepositories = json['members_can_create_repositories'];
    twoFactorRequirementEnabled = json['two_factor_requirement_enabled'];
    membersAllowedRepositoryCreationType = json['members_allowed_repository_creation_type'];
    membersCanCreatePublicRepositories = json['members_can_create_public_repositories'];
    membersCanCreatePrivateRepositories = json['members_can_create_private_repositories'];
    membersCanCreateInternalRepositories = json['members_can_create_internal_repositories'];
    membersCanCreatePages = json['members_can_create_pages'];
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
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
      'name': name,
      'company': company,
      'blog': blog,
      'location': location,
      'email': email,
      'twitter_username': twitterUsername,
      'is_verified': isVerified,
      'has_organization_projects': hasOrganizationProjects,
      'has_repository_projects': hasRepositoryProjects,
      'public_repos': publicRepos,
      'public_gists': publicGists,
      'followers': followers,
      'following': following,
      'html_url': htmlUrl,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'type': type,
      'total_private_repos': totalPrivateRepos,
      'owned_private_repos': ownedPrivateRepos,
      'private_gists': privateGists,
      'disk_usage': diskUsage,
      'collaborators': collaborators,
      'billing_email': billingEmail,
      'plan': plan,
      'default_repository_permission': defaultRepositoryPermission,
      'members_can_create_repositories': membersCanCreateRepositories,
      'two_factor_requirement_enabled': twoFactorRequirementEnabled,
      'members_allowed_repository_creation_type': membersAllowedRepositoryCreationType,
      'members_can_create_public_repositories': membersCanCreatePublicRepositories,
      'members_can_create_private_repositories': membersCanCreatePrivateRepositories,
      'members_can_create_internal_repositories': membersCanCreateInternalRepositories,
      'members_can_create_pages': membersCanCreatePages,
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<OrganizationFull> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrganizationFull>() : json.map((value) => new OrganizationFull.fromJson(value)).toList();
  }

  static Map<String, OrganizationFull> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrganizationFull>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrganizationFull.fromJson(value));
    }
    return map;
  }
}

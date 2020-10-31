part of swagger.api;

class Body24 {
  /* Billing email address. This address is not publicized. */
  String billingEmail = null;
/* The company name. */
  String company = null;
/* The publicly visible email address. */
  String email = null;
/* The Twitter username of the company. */
  String twitterUsername = null;
/* The location. */
  String location = null;
/* The shorthand name of the company. */
  String name = null;
/* The description of the company. */
  String description = null;
/* Toggles whether an organization can use organization projects. */
  bool hasOrganizationProjects = null;
/* Toggles whether repositories that belong to the organization can use repository projects. */
  bool hasRepositoryProjects = null;
/* Default permission level members have for organization repositories:   \\* `read` - can pull, but not push to or administer this repository.   \\* `write` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push, and administer this repository.   \\* `none` - no permissions granted by default. */
  String defaultRepositoryPermission = DefaultRepositoryPermissionEnum.read_;
  //enum defaultRepositoryPermissionEnum {  read,  write,  admin,  none,  };
/* Toggles the ability of non-admin organization members to create repositories. Can be one of:   \\* `true` - all organization members can create repositories.   \\* `false` - only organization owners can create repositories.   Default: `true`   **Note:** A parameter can override this parameter. See `members_allowed_repository_creation_type` in this table for details. **Note:** A parameter can override this parameter. See `members_allowed_repository_creation_type` in this table for details. */
  bool membersCanCreateRepositories = true;
/* Toggles whether organization members can create internal repositories, which are visible to all enterprise members. You can only allow members to create internal repositories if your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+. Can be one of:   \\* `true` - all organization members can create internal repositories.   \\* `false` - only organization owners can create internal repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation. */
  bool membersCanCreateInternalRepositories = null;
/* Toggles whether organization members can create private repositories, which are visible to organization members with permission. Can be one of:   \\* `true` - all organization members can create private repositories.   \\* `false` - only organization owners can create private repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation. */
  bool membersCanCreatePrivateRepositories = null;
/* Toggles whether organization members can create public repositories, which are visible to anyone. Can be one of:   \\* `true` - all organization members can create public repositories.   \\* `false` - only organization owners can create public repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation. */
  bool membersCanCreatePublicRepositories = null;
/* Specifies which types of repositories non-admin organization members can create. Can be one of:   \\* `all` - all organization members can create public and private repositories.   \\* `private` - members can create private repositories. This option is only available to repositories that are part of an organization on GitHub Enterprise Cloud.   \\* `none` - only admin members can create repositories.   **Note:** This parameter is deprecated and will be removed in the future. Its return value ignores internal repositories. Using this parameter overrides values set in `members_can_create_repositories`. See [this note](https://developer.github.com/v3/orgs/#members_can_create_repositories) for details. */
  String membersAllowedRepositoryCreationType = null;
  //enum membersAllowedRepositoryCreationTypeEnum {  all,  private,  none,  };
/* Toggles whether organization members can create GitHub Pages sites. Can be one of:   \\* `true` - all organization members can create GitHub Pages sites.   \\* `false` - no organization members can create GitHub Pages sites. Existing published sites will not be impacted.   Default: `true`.  */
  bool membersCanCreatePages = null;

  String blog = null;

  Body24();

  @override
  String toString() {
    return 'Body24[billingEmail=$billingEmail, company=$company, email=$email, twitterUsername=$twitterUsername, location=$location, name=$name, description=$description, hasOrganizationProjects=$hasOrganizationProjects, hasRepositoryProjects=$hasRepositoryProjects, defaultRepositoryPermission=$defaultRepositoryPermission, membersCanCreateRepositories=$membersCanCreateRepositories, membersCanCreateInternalRepositories=$membersCanCreateInternalRepositories, membersCanCreatePrivateRepositories=$membersCanCreatePrivateRepositories, membersCanCreatePublicRepositories=$membersCanCreatePublicRepositories, membersAllowedRepositoryCreationType=$membersAllowedRepositoryCreationType, membersCanCreatePages=$membersCanCreatePages, blog=$blog, ]';
  }

  Body24.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    billingEmail = json['billing_email'];
    company = json['company'];
    email = json['email'];
    twitterUsername = json['twitter_username'];
    location = json['location'];
    name = json['name'];
    description = json['description'];
    hasOrganizationProjects = json['has_organization_projects'];
    hasRepositoryProjects = json['has_repository_projects'];
    defaultRepositoryPermission = json['default_repository_permission'];
    membersCanCreateRepositories = json['members_can_create_repositories'];
    membersCanCreateInternalRepositories = json['members_can_create_internal_repositories'];
    membersCanCreatePrivateRepositories = json['members_can_create_private_repositories'];
    membersCanCreatePublicRepositories = json['members_can_create_public_repositories'];
    membersAllowedRepositoryCreationType = json['members_allowed_repository_creation_type'];
    membersCanCreatePages = json['members_can_create_pages'];
    blog = json['blog'];
  }

  Map<String, dynamic> toJson() {
    return {
      'billing_email': billingEmail,
      'company': company,
      'email': email,
      'twitter_username': twitterUsername,
      'location': location,
      'name': name,
      'description': description,
      'has_organization_projects': hasOrganizationProjects,
      'has_repository_projects': hasRepositoryProjects,
      'default_repository_permission': defaultRepositoryPermission,
      'members_can_create_repositories': membersCanCreateRepositories,
      'members_can_create_internal_repositories': membersCanCreateInternalRepositories,
      'members_can_create_private_repositories': membersCanCreatePrivateRepositories,
      'members_can_create_public_repositories': membersCanCreatePublicRepositories,
      'members_allowed_repository_creation_type': membersAllowedRepositoryCreationType,
      'members_can_create_pages': membersCanCreatePages,
      'blog': blog
     };
  }

  static List<Body24> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body24>() : json.map((value) => new Body24.fromJson(value)).toList();
  }

  static Map<String, Body24> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body24>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body24.fromJson(value));
    }
    return map;
  }
}

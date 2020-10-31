part of swagger.api;

class Body172 {
  /* The name of the repository. */
  String name = null;
/* A short description of the repository. */
  String description = null;
/* A URL with more information about the repository. */
  String homepage = null;
/* Whether the repository is private or public. */
  bool private = false;
/* Whether issues are enabled. */
  bool hasIssues = true;
/* Whether projects are enabled. */
  bool hasProjects = true;
/* Whether the wiki is enabled. */
  bool hasWiki = true;
/* The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization. */
  int teamId = null;
/* Whether the repository is initialized with a minimal README. */
  bool autoInit = false;
/* The desired language or platform to apply to the .gitignore. */
  String gitignoreTemplate = null;
/* The license keyword of the open source license for this repository. */
  String licenseTemplate = null;
/* Whether to allow squash merges for pull requests. */
  bool allowSquashMerge = true;
/* Whether to allow merge commits for pull requests. */
  bool allowMergeCommit = true;
/* Whether to allow rebase merges for pull requests. */
  bool allowRebaseMerge = true;
/* Whether to delete head branches when pull requests are merged */
  bool deleteBranchOnMerge = false;
/* Whether downloads are enabled. */
  bool hasDownloads = true;
/* Whether this repository acts as a template that can be used to generate new repositories. */
  bool isTemplate = false;

  Body172();

  @override
  String toString() {
    return 'Body172[name=$name, description=$description, homepage=$homepage, private=$private, hasIssues=$hasIssues, hasProjects=$hasProjects, hasWiki=$hasWiki, teamId=$teamId, autoInit=$autoInit, gitignoreTemplate=$gitignoreTemplate, licenseTemplate=$licenseTemplate, allowSquashMerge=$allowSquashMerge, allowMergeCommit=$allowMergeCommit, allowRebaseMerge=$allowRebaseMerge, deleteBranchOnMerge=$deleteBranchOnMerge, hasDownloads=$hasDownloads, isTemplate=$isTemplate, ]';
  }

  Body172.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
    homepage = json['homepage'];
    private = json['private'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasWiki = json['has_wiki'];
    teamId = json['team_id'];
    autoInit = json['auto_init'];
    gitignoreTemplate = json['gitignore_template'];
    licenseTemplate = json['license_template'];
    allowSquashMerge = json['allow_squash_merge'];
    allowMergeCommit = json['allow_merge_commit'];
    allowRebaseMerge = json['allow_rebase_merge'];
    deleteBranchOnMerge = json['delete_branch_on_merge'];
    hasDownloads = json['has_downloads'];
    isTemplate = json['is_template'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'homepage': homepage,
      'private': private,
      'has_issues': hasIssues,
      'has_projects': hasProjects,
      'has_wiki': hasWiki,
      'team_id': teamId,
      'auto_init': autoInit,
      'gitignore_template': gitignoreTemplate,
      'license_template': licenseTemplate,
      'allow_squash_merge': allowSquashMerge,
      'allow_merge_commit': allowMergeCommit,
      'allow_rebase_merge': allowRebaseMerge,
      'delete_branch_on_merge': deleteBranchOnMerge,
      'has_downloads': hasDownloads,
      'is_template': isTemplate
     };
  }

  static List<Body172> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body172>() : json.map((value) => new Body172.fromJson(value)).toList();
  }

  static Map<String, Body172> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body172>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body172.fromJson(value));
    }
    return map;
  }
}

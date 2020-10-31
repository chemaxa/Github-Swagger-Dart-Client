part of swagger.api;

class Body41 {
  /* The name of the repository. */
  String name = null;
/* A short description of the repository. */
  String description = null;
/* A URL with more information about the repository. */
  String homepage = null;
/* Either `true` to create a private repository or `false` to create a public one. */
  bool private = false;
/* Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. For more information, see \"[Creating an internal repository](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/about-repository-visibility#about-internal-repositories)\" in the GitHub Help documentation.   The `visibility` parameter overrides the `private` parameter when you use both parameters with the `nebula-preview` preview header. */
  String visibility = null;
  //enum visibilityEnum {  public,  private,  visibility,  internal,  };
/* Either `true` to enable issues for this repository or `false` to disable them. */
  bool hasIssues = true;
/* Either `true` to enable projects for this repository or `false` to disable them. **Note:** If you're creating a repository in an organization that has disabled repository projects, the default is `false`, and if you pass `true`, the API returns an error. */
  bool hasProjects = true;
/* Either `true` to enable the wiki for this repository or `false` to disable it. */
  bool hasWiki = true;
/* Either `true` to make this repo available as a template repository or `false` to prevent it. */
  bool isTemplate = false;
/* The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization. */
  int teamId = null;
/* Pass `true` to create an initial commit with empty README. */
  bool autoInit = false;
/* Desired language or platform [.gitignore template](https://github.com/github/gitignore) to apply. Use the name of the template without the extension. For example, \"Haskell\". */
  String gitignoreTemplate = null;
/* Choose an [open source license template](https://choosealicense.com/) that best suits your needs, and then use the [license keyword](https://help.github.com/articles/licensing-a-repository/#searching-github-by-license-type) as the `license_template` string. For example, \"mit\" or \"mpl-2.0\". */
  String licenseTemplate = null;
/* Either `true` to allow squash-merging pull requests, or `false` to prevent squash-merging. */
  bool allowSquashMerge = true;
/* Either `true` to allow merging pull requests with a merge commit, or `false` to prevent merging pull requests with merge commits. */
  bool allowMergeCommit = true;
/* Either `true` to allow rebase-merging pull requests, or `false` to prevent rebase-merging. */
  bool allowRebaseMerge = true;
/* Either `true` to allow automatically deleting head branches when pull requests are merged, or `false` to prevent automatic deletion. */
  bool deleteBranchOnMerge = false;

  Body41();

  @override
  String toString() {
    return 'Body41[name=$name, description=$description, homepage=$homepage, private=$private, visibility=$visibility, hasIssues=$hasIssues, hasProjects=$hasProjects, hasWiki=$hasWiki, isTemplate=$isTemplate, teamId=$teamId, autoInit=$autoInit, gitignoreTemplate=$gitignoreTemplate, licenseTemplate=$licenseTemplate, allowSquashMerge=$allowSquashMerge, allowMergeCommit=$allowMergeCommit, allowRebaseMerge=$allowRebaseMerge, deleteBranchOnMerge=$deleteBranchOnMerge, ]';
  }

  Body41.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
    homepage = json['homepage'];
    private = json['private'];
    visibility = json['visibility'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasWiki = json['has_wiki'];
    isTemplate = json['is_template'];
    teamId = json['team_id'];
    autoInit = json['auto_init'];
    gitignoreTemplate = json['gitignore_template'];
    licenseTemplate = json['license_template'];
    allowSquashMerge = json['allow_squash_merge'];
    allowMergeCommit = json['allow_merge_commit'];
    allowRebaseMerge = json['allow_rebase_merge'];
    deleteBranchOnMerge = json['delete_branch_on_merge'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'homepage': homepage,
      'private': private,
      'visibility': visibility,
      'has_issues': hasIssues,
      'has_projects': hasProjects,
      'has_wiki': hasWiki,
      'is_template': isTemplate,
      'team_id': teamId,
      'auto_init': autoInit,
      'gitignore_template': gitignoreTemplate,
      'license_template': licenseTemplate,
      'allow_squash_merge': allowSquashMerge,
      'allow_merge_commit': allowMergeCommit,
      'allow_rebase_merge': allowRebaseMerge,
      'delete_branch_on_merge': deleteBranchOnMerge
     };
  }

  static List<Body41> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body41>() : json.map((value) => new Body41.fromJson(value)).toList();
  }

  static Map<String, Body41> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body41>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body41.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body62 {
  /* The name of the repository. */
  String name = null;
/* A short description of the repository. */
  String description = null;
/* A URL with more information about the repository. */
  String homepage = null;
/* Either `true` to make the repository private or `false` to make it public. Default: `false`.   **Note**: You will get a `422` error if the organization restricts [changing repository visibility](https://help.github.com/articles/repository-permission-levels-for-an-organization#changing-the-visibility-of-repositories) to organization owners and a non-owner tries to change the value of private. **Note**: You will get a `422` error if the organization restricts [changing repository visibility](https://help.github.com/articles/repository-permission-levels-for-an-organization#changing-the-visibility-of-repositories) to organization owners and a non-owner tries to change the value of private. */
  bool private = false;
/* Can be `public` or `private`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `visibility` can also be `internal`. The `visibility` parameter overrides the `private` parameter when you use both along with the `nebula-preview` preview header. */
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
/* Updates the default branch for this repository. */
  String defaultBranch = null;
/* Either `true` to allow squash-merging pull requests, or `false` to prevent squash-merging. */
  bool allowSquashMerge = true;
/* Either `true` to allow merging pull requests with a merge commit, or `false` to prevent merging pull requests with merge commits. */
  bool allowMergeCommit = true;
/* Either `true` to allow rebase-merging pull requests, or `false` to prevent rebase-merging. */
  bool allowRebaseMerge = true;
/* Either `true` to allow automatically deleting head branches when pull requests are merged, or `false` to prevent automatic deletion. */
  bool deleteBranchOnMerge = false;
/* `true` to archive this repository. **Note**: You cannot unarchive repositories through the API. */
  bool archived = false;

  Body62();

  @override
  String toString() {
    return 'Body62[name=$name, description=$description, homepage=$homepage, private=$private, visibility=$visibility, hasIssues=$hasIssues, hasProjects=$hasProjects, hasWiki=$hasWiki, isTemplate=$isTemplate, defaultBranch=$defaultBranch, allowSquashMerge=$allowSquashMerge, allowMergeCommit=$allowMergeCommit, allowRebaseMerge=$allowRebaseMerge, deleteBranchOnMerge=$deleteBranchOnMerge, archived=$archived, ]';
  }

  Body62.fromJson(Map<String, dynamic> json) {
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
    defaultBranch = json['default_branch'];
    allowSquashMerge = json['allow_squash_merge'];
    allowMergeCommit = json['allow_merge_commit'];
    allowRebaseMerge = json['allow_rebase_merge'];
    deleteBranchOnMerge = json['delete_branch_on_merge'];
    archived = json['archived'];
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
      'default_branch': defaultBranch,
      'allow_squash_merge': allowSquashMerge,
      'allow_merge_commit': allowMergeCommit,
      'allow_rebase_merge': allowRebaseMerge,
      'delete_branch_on_merge': deleteBranchOnMerge,
      'archived': archived
     };
  }

  static List<Body62> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body62>() : json.map((value) => new Body62.fromJson(value)).toList();
  }

  static Map<String, Body62> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body62>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body62.fromJson(value));
    }
    return map;
  }
}

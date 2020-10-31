part of swagger.api;

class AllOffullRepositoryTemplateRepository {
  /* Unique identifier of the repository */
  int id = null;

  String nodeId = null;
/* The name of the repository. */
  String name = null;

  String fullName = null;

  Object license = null;

  int forks = null;

  RepositoryPermissions permissions = null;

  Object owner = null;
/* Whether the repository is private or public. */
  bool private = false;

  String htmlUrl = null;

  String description = null;

  bool fork = null;

  String url = null;

  String archiveUrl = null;

  String assigneesUrl = null;

  String blobsUrl = null;

  String branchesUrl = null;

  String collaboratorsUrl = null;

  String commentsUrl = null;

  String commitsUrl = null;

  String compareUrl = null;

  String contentsUrl = null;

  String contributorsUrl = null;

  String deploymentsUrl = null;

  String downloadsUrl = null;

  String eventsUrl = null;

  String forksUrl = null;

  String gitCommitsUrl = null;

  String gitRefsUrl = null;

  String gitTagsUrl = null;

  String gitUrl = null;

  String issueCommentUrl = null;

  String issueEventsUrl = null;

  String issuesUrl = null;

  String keysUrl = null;

  String labelsUrl = null;

  String languagesUrl = null;

  String mergesUrl = null;

  String milestonesUrl = null;

  String notificationsUrl = null;

  String pullsUrl = null;

  String releasesUrl = null;

  String sshUrl = null;

  String stargazersUrl = null;

  String statusesUrl = null;

  String subscribersUrl = null;

  String subscriptionUrl = null;

  String tagsUrl = null;

  String teamsUrl = null;

  String treesUrl = null;

  String cloneUrl = null;

  String mirrorUrl = null;

  String hooksUrl = null;

  String svnUrl = null;

  String homepage = null;

  String language = null;

  int forksCount = null;

  int stargazersCount = null;

  int watchersCount = null;

  int size = null;
/* The default branch of the repository. */
  String defaultBranch = null;

  int openIssuesCount = null;
/* Whether this repository acts as a template that can be used to generate new repositories. */
  bool isTemplate = false;

  List<String> topics = [];
/* Whether issues are enabled. */
  bool hasIssues = true;
/* Whether projects are enabled. */
  bool hasProjects = true;
/* Whether the wiki is enabled. */
  bool hasWiki = true;

  bool hasPages = null;
/* Whether downloads are enabled. */
  bool hasDownloads = true;
/* Whether the repository is archived. */
  bool archived = false;
/* Returns whether or not this repository disabled. */
  bool disabled = null;
/* The repository visibility: public, private, or internal. */
  String visibility = "public";

  DateTime pushedAt = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;
/* Whether to allow rebase merges for pull requests. */
  bool allowRebaseMerge = true;

  RepositoryTemplateRepository templateRepository = null;

  String tempCloneToken = null;
/* Whether to allow squash merges for pull requests. */
  bool allowSquashMerge = true;
/* Whether to delete head branches when pull requests are merged */
  bool deleteBranchOnMerge = false;
/* Whether to allow merge commits for pull requests. */
  bool allowMergeCommit = true;

  int subscribersCount = null;

  int networkCount = null;

  int openIssues = null;

  int watchers = null;

  String masterBranch = null;

  String starredAt = null;

  AllOffullRepositoryTemplateRepository();

  @override
  String toString() {
    return 'AllOffullRepositoryTemplateRepository[id=$id, nodeId=$nodeId, name=$name, fullName=$fullName, license=$license, forks=$forks, permissions=$permissions, owner=$owner, private=$private, htmlUrl=$htmlUrl, description=$description, fork=$fork, url=$url, archiveUrl=$archiveUrl, assigneesUrl=$assigneesUrl, blobsUrl=$blobsUrl, branchesUrl=$branchesUrl, collaboratorsUrl=$collaboratorsUrl, commentsUrl=$commentsUrl, commitsUrl=$commitsUrl, compareUrl=$compareUrl, contentsUrl=$contentsUrl, contributorsUrl=$contributorsUrl, deploymentsUrl=$deploymentsUrl, downloadsUrl=$downloadsUrl, eventsUrl=$eventsUrl, forksUrl=$forksUrl, gitCommitsUrl=$gitCommitsUrl, gitRefsUrl=$gitRefsUrl, gitTagsUrl=$gitTagsUrl, gitUrl=$gitUrl, issueCommentUrl=$issueCommentUrl, issueEventsUrl=$issueEventsUrl, issuesUrl=$issuesUrl, keysUrl=$keysUrl, labelsUrl=$labelsUrl, languagesUrl=$languagesUrl, mergesUrl=$mergesUrl, milestonesUrl=$milestonesUrl, notificationsUrl=$notificationsUrl, pullsUrl=$pullsUrl, releasesUrl=$releasesUrl, sshUrl=$sshUrl, stargazersUrl=$stargazersUrl, statusesUrl=$statusesUrl, subscribersUrl=$subscribersUrl, subscriptionUrl=$subscriptionUrl, tagsUrl=$tagsUrl, teamsUrl=$teamsUrl, treesUrl=$treesUrl, cloneUrl=$cloneUrl, mirrorUrl=$mirrorUrl, hooksUrl=$hooksUrl, svnUrl=$svnUrl, homepage=$homepage, language=$language, forksCount=$forksCount, stargazersCount=$stargazersCount, watchersCount=$watchersCount, size=$size, defaultBranch=$defaultBranch, openIssuesCount=$openIssuesCount, isTemplate=$isTemplate, topics=$topics, hasIssues=$hasIssues, hasProjects=$hasProjects, hasWiki=$hasWiki, hasPages=$hasPages, hasDownloads=$hasDownloads, archived=$archived, disabled=$disabled, visibility=$visibility, pushedAt=$pushedAt, createdAt=$createdAt, updatedAt=$updatedAt, allowRebaseMerge=$allowRebaseMerge, templateRepository=$templateRepository, tempCloneToken=$tempCloneToken, allowSquashMerge=$allowSquashMerge, deleteBranchOnMerge=$deleteBranchOnMerge, allowMergeCommit=$allowMergeCommit, subscribersCount=$subscribersCount, networkCount=$networkCount, openIssues=$openIssues, watchers=$watchers, masterBranch=$masterBranch, starredAt=$starredAt, ]';
  }

  AllOffullRepositoryTemplateRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    license = new Object.fromJson(json['license']);
    forks = json['forks'];
    permissions = new RepositoryPermissions.fromJson(json['permissions']);
    owner = new Object.fromJson(json['owner']);
    private = json['private'];
    htmlUrl = json['html_url'];
    description = json['description'];
    fork = json['fork'];
    url = json['url'];
    archiveUrl = json['archive_url'];
    assigneesUrl = json['assignees_url'];
    blobsUrl = json['blobs_url'];
    branchesUrl = json['branches_url'];
    collaboratorsUrl = json['collaborators_url'];
    commentsUrl = json['comments_url'];
    commitsUrl = json['commits_url'];
    compareUrl = json['compare_url'];
    contentsUrl = json['contents_url'];
    contributorsUrl = json['contributors_url'];
    deploymentsUrl = json['deployments_url'];
    downloadsUrl = json['downloads_url'];
    eventsUrl = json['events_url'];
    forksUrl = json['forks_url'];
    gitCommitsUrl = json['git_commits_url'];
    gitRefsUrl = json['git_refs_url'];
    gitTagsUrl = json['git_tags_url'];
    gitUrl = json['git_url'];
    issueCommentUrl = json['issue_comment_url'];
    issueEventsUrl = json['issue_events_url'];
    issuesUrl = json['issues_url'];
    keysUrl = json['keys_url'];
    labelsUrl = json['labels_url'];
    languagesUrl = json['languages_url'];
    mergesUrl = json['merges_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    pullsUrl = json['pulls_url'];
    releasesUrl = json['releases_url'];
    sshUrl = json['ssh_url'];
    stargazersUrl = json['stargazers_url'];
    statusesUrl = json['statuses_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    tagsUrl = json['tags_url'];
    teamsUrl = json['teams_url'];
    treesUrl = json['trees_url'];
    cloneUrl = json['clone_url'];
    mirrorUrl = json['mirror_url'];
    hooksUrl = json['hooks_url'];
    svnUrl = json['svn_url'];
    homepage = json['homepage'];
    language = json['language'];
    forksCount = json['forks_count'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    size = json['size'];
    defaultBranch = json['default_branch'];
    openIssuesCount = json['open_issues_count'];
    isTemplate = json['is_template'];
    topics = (json['topics'] as List).map((item) => item as String).toList();
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasWiki = json['has_wiki'];
    hasPages = json['has_pages'];
    hasDownloads = json['has_downloads'];
    archived = json['archived'];
    disabled = json['disabled'];
    visibility = json['visibility'];
    pushedAt = json['pushed_at'] == null ? null : DateTime.parse(json['pushed_at']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    allowRebaseMerge = json['allow_rebase_merge'];
    templateRepository = new RepositoryTemplateRepository.fromJson(json['template_repository']);
    tempCloneToken = json['temp_clone_token'];
    allowSquashMerge = json['allow_squash_merge'];
    deleteBranchOnMerge = json['delete_branch_on_merge'];
    allowMergeCommit = json['allow_merge_commit'];
    subscribersCount = json['subscribers_count'];
    networkCount = json['network_count'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    masterBranch = json['master_branch'];
    starredAt = json['starred_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'full_name': fullName,
      'license': license,
      'forks': forks,
      'permissions': permissions,
      'owner': owner,
      'private': private,
      'html_url': htmlUrl,
      'description': description,
      'fork': fork,
      'url': url,
      'archive_url': archiveUrl,
      'assignees_url': assigneesUrl,
      'blobs_url': blobsUrl,
      'branches_url': branchesUrl,
      'collaborators_url': collaboratorsUrl,
      'comments_url': commentsUrl,
      'commits_url': commitsUrl,
      'compare_url': compareUrl,
      'contents_url': contentsUrl,
      'contributors_url': contributorsUrl,
      'deployments_url': deploymentsUrl,
      'downloads_url': downloadsUrl,
      'events_url': eventsUrl,
      'forks_url': forksUrl,
      'git_commits_url': gitCommitsUrl,
      'git_refs_url': gitRefsUrl,
      'git_tags_url': gitTagsUrl,
      'git_url': gitUrl,
      'issue_comment_url': issueCommentUrl,
      'issue_events_url': issueEventsUrl,
      'issues_url': issuesUrl,
      'keys_url': keysUrl,
      'labels_url': labelsUrl,
      'languages_url': languagesUrl,
      'merges_url': mergesUrl,
      'milestones_url': milestonesUrl,
      'notifications_url': notificationsUrl,
      'pulls_url': pullsUrl,
      'releases_url': releasesUrl,
      'ssh_url': sshUrl,
      'stargazers_url': stargazersUrl,
      'statuses_url': statusesUrl,
      'subscribers_url': subscribersUrl,
      'subscription_url': subscriptionUrl,
      'tags_url': tagsUrl,
      'teams_url': teamsUrl,
      'trees_url': treesUrl,
      'clone_url': cloneUrl,
      'mirror_url': mirrorUrl,
      'hooks_url': hooksUrl,
      'svn_url': svnUrl,
      'homepage': homepage,
      'language': language,
      'forks_count': forksCount,
      'stargazers_count': stargazersCount,
      'watchers_count': watchersCount,
      'size': size,
      'default_branch': defaultBranch,
      'open_issues_count': openIssuesCount,
      'is_template': isTemplate,
      'topics': topics,
      'has_issues': hasIssues,
      'has_projects': hasProjects,
      'has_wiki': hasWiki,
      'has_pages': hasPages,
      'has_downloads': hasDownloads,
      'archived': archived,
      'disabled': disabled,
      'visibility': visibility,
      'pushed_at': pushedAt == null ? '' : pushedAt.toUtc().toIso8601String(),
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'allow_rebase_merge': allowRebaseMerge,
      'template_repository': templateRepository,
      'temp_clone_token': tempCloneToken,
      'allow_squash_merge': allowSquashMerge,
      'delete_branch_on_merge': deleteBranchOnMerge,
      'allow_merge_commit': allowMergeCommit,
      'subscribers_count': subscribersCount,
      'network_count': networkCount,
      'open_issues': openIssues,
      'watchers': watchers,
      'master_branch': masterBranch,
      'starred_at': starredAt
     };
  }

  static List<AllOffullRepositoryTemplateRepository> listFromJson(List<dynamic> json) {
    return json == null ? new List<AllOffullRepositoryTemplateRepository>() : json.map((value) => new AllOffullRepositoryTemplateRepository.fromJson(value)).toList();
  }

  static Map<String, AllOffullRepositoryTemplateRepository> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllOffullRepositoryTemplateRepository>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllOffullRepositoryTemplateRepository.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class RepoSearchResultItem {
  
  int id = null;

  String nodeId = null;

  String name = null;

  String fullName = null;

  AllOfrepoSearchResultItemOwner owner = null;

  bool private = null;

  String htmlUrl = null;

  String description = null;

  bool fork = null;

  String url = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  DateTime pushedAt = null;

  String homepage = null;

  int size = null;

  int stargazersCount = null;

  int watchersCount = null;

  String language = null;

  int forksCount = null;

  int openIssuesCount = null;

  String masterBranch = null;

  String defaultBranch = null;

  int score = null;

  String forksUrl = null;

  String keysUrl = null;

  String collaboratorsUrl = null;

  String teamsUrl = null;

  String hooksUrl = null;

  String issueEventsUrl = null;

  String eventsUrl = null;

  String assigneesUrl = null;

  String branchesUrl = null;

  String tagsUrl = null;

  String blobsUrl = null;

  String gitTagsUrl = null;

  String gitRefsUrl = null;

  String treesUrl = null;

  String statusesUrl = null;

  String languagesUrl = null;

  String stargazersUrl = null;

  String contributorsUrl = null;

  String subscribersUrl = null;

  String subscriptionUrl = null;

  String commitsUrl = null;

  String gitCommitsUrl = null;

  String commentsUrl = null;

  String issueCommentUrl = null;

  String contentsUrl = null;

  String compareUrl = null;

  String mergesUrl = null;

  String archiveUrl = null;

  String downloadsUrl = null;

  String issuesUrl = null;

  String pullsUrl = null;

  String milestonesUrl = null;

  String notificationsUrl = null;

  String labelsUrl = null;

  String releasesUrl = null;

  String deploymentsUrl = null;

  String gitUrl = null;

  String sshUrl = null;

  String cloneUrl = null;

  String svnUrl = null;

  int forks = null;

  int openIssues = null;

  int watchers = null;

  List<String> topics = [];

  String mirrorUrl = null;

  bool hasIssues = null;

  bool hasProjects = null;

  bool hasPages = null;

  bool hasWiki = null;

  bool hasDownloads = null;

  bool archived = null;
/* Returns whether or not this repository disabled. */
  bool disabled = null;

  AllOfrepoSearchResultItemLicense license = null;

  FullrepositoryPermissions permissions = null;

  SearchResultTextMatches textMatches = null;

  String tempCloneToken = null;

  bool allowMergeCommit = null;

  bool allowSquashMerge = null;

  bool allowRebaseMerge = null;

  bool deleteBranchOnMerge = null;

  RepoSearchResultItem();

  @override
  String toString() {
    return 'RepoSearchResultItem[id=$id, nodeId=$nodeId, name=$name, fullName=$fullName, owner=$owner, private=$private, htmlUrl=$htmlUrl, description=$description, fork=$fork, url=$url, createdAt=$createdAt, updatedAt=$updatedAt, pushedAt=$pushedAt, homepage=$homepage, size=$size, stargazersCount=$stargazersCount, watchersCount=$watchersCount, language=$language, forksCount=$forksCount, openIssuesCount=$openIssuesCount, masterBranch=$masterBranch, defaultBranch=$defaultBranch, score=$score, forksUrl=$forksUrl, keysUrl=$keysUrl, collaboratorsUrl=$collaboratorsUrl, teamsUrl=$teamsUrl, hooksUrl=$hooksUrl, issueEventsUrl=$issueEventsUrl, eventsUrl=$eventsUrl, assigneesUrl=$assigneesUrl, branchesUrl=$branchesUrl, tagsUrl=$tagsUrl, blobsUrl=$blobsUrl, gitTagsUrl=$gitTagsUrl, gitRefsUrl=$gitRefsUrl, treesUrl=$treesUrl, statusesUrl=$statusesUrl, languagesUrl=$languagesUrl, stargazersUrl=$stargazersUrl, contributorsUrl=$contributorsUrl, subscribersUrl=$subscribersUrl, subscriptionUrl=$subscriptionUrl, commitsUrl=$commitsUrl, gitCommitsUrl=$gitCommitsUrl, commentsUrl=$commentsUrl, issueCommentUrl=$issueCommentUrl, contentsUrl=$contentsUrl, compareUrl=$compareUrl, mergesUrl=$mergesUrl, archiveUrl=$archiveUrl, downloadsUrl=$downloadsUrl, issuesUrl=$issuesUrl, pullsUrl=$pullsUrl, milestonesUrl=$milestonesUrl, notificationsUrl=$notificationsUrl, labelsUrl=$labelsUrl, releasesUrl=$releasesUrl, deploymentsUrl=$deploymentsUrl, gitUrl=$gitUrl, sshUrl=$sshUrl, cloneUrl=$cloneUrl, svnUrl=$svnUrl, forks=$forks, openIssues=$openIssues, watchers=$watchers, topics=$topics, mirrorUrl=$mirrorUrl, hasIssues=$hasIssues, hasProjects=$hasProjects, hasPages=$hasPages, hasWiki=$hasWiki, hasDownloads=$hasDownloads, archived=$archived, disabled=$disabled, license=$license, permissions=$permissions, textMatches=$textMatches, tempCloneToken=$tempCloneToken, allowMergeCommit=$allowMergeCommit, allowSquashMerge=$allowSquashMerge, allowRebaseMerge=$allowRebaseMerge, deleteBranchOnMerge=$deleteBranchOnMerge, ]';
  }

  RepoSearchResultItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    owner = new AllOfrepoSearchResultItemOwner.fromJson(json['owner']);
    private = json['private'];
    htmlUrl = json['html_url'];
    description = json['description'];
    fork = json['fork'];
    url = json['url'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    pushedAt = json['pushed_at'] == null ? null : DateTime.parse(json['pushed_at']);
    homepage = json['homepage'];
    size = json['size'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    language = json['language'];
    forksCount = json['forks_count'];
    openIssuesCount = json['open_issues_count'];
    masterBranch = json['master_branch'];
    defaultBranch = json['default_branch'];
    score = json['score'];
    forksUrl = json['forks_url'];
    keysUrl = json['keys_url'];
    collaboratorsUrl = json['collaborators_url'];
    teamsUrl = json['teams_url'];
    hooksUrl = json['hooks_url'];
    issueEventsUrl = json['issue_events_url'];
    eventsUrl = json['events_url'];
    assigneesUrl = json['assignees_url'];
    branchesUrl = json['branches_url'];
    tagsUrl = json['tags_url'];
    blobsUrl = json['blobs_url'];
    gitTagsUrl = json['git_tags_url'];
    gitRefsUrl = json['git_refs_url'];
    treesUrl = json['trees_url'];
    statusesUrl = json['statuses_url'];
    languagesUrl = json['languages_url'];
    stargazersUrl = json['stargazers_url'];
    contributorsUrl = json['contributors_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    commitsUrl = json['commits_url'];
    gitCommitsUrl = json['git_commits_url'];
    commentsUrl = json['comments_url'];
    issueCommentUrl = json['issue_comment_url'];
    contentsUrl = json['contents_url'];
    compareUrl = json['compare_url'];
    mergesUrl = json['merges_url'];
    archiveUrl = json['archive_url'];
    downloadsUrl = json['downloads_url'];
    issuesUrl = json['issues_url'];
    pullsUrl = json['pulls_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    labelsUrl = json['labels_url'];
    releasesUrl = json['releases_url'];
    deploymentsUrl = json['deployments_url'];
    gitUrl = json['git_url'];
    sshUrl = json['ssh_url'];
    cloneUrl = json['clone_url'];
    svnUrl = json['svn_url'];
    forks = json['forks'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    topics = (json['topics'] as List).map((item) => item as String).toList();
    mirrorUrl = json['mirror_url'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasPages = json['has_pages'];
    hasWiki = json['has_wiki'];
    hasDownloads = json['has_downloads'];
    archived = json['archived'];
    disabled = json['disabled'];
    license = new AllOfrepoSearchResultItemLicense.fromJson(json['license']);
    permissions = new FullrepositoryPermissions.fromJson(json['permissions']);
    textMatches = new SearchResultTextMatches.fromJson(json['text_matches']);
    tempCloneToken = json['temp_clone_token'];
    allowMergeCommit = json['allow_merge_commit'];
    allowSquashMerge = json['allow_squash_merge'];
    allowRebaseMerge = json['allow_rebase_merge'];
    deleteBranchOnMerge = json['delete_branch_on_merge'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'name': name,
      'full_name': fullName,
      'owner': owner,
      'private': private,
      'html_url': htmlUrl,
      'description': description,
      'fork': fork,
      'url': url,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'pushed_at': pushedAt == null ? '' : pushedAt.toUtc().toIso8601String(),
      'homepage': homepage,
      'size': size,
      'stargazers_count': stargazersCount,
      'watchers_count': watchersCount,
      'language': language,
      'forks_count': forksCount,
      'open_issues_count': openIssuesCount,
      'master_branch': masterBranch,
      'default_branch': defaultBranch,
      'score': score,
      'forks_url': forksUrl,
      'keys_url': keysUrl,
      'collaborators_url': collaboratorsUrl,
      'teams_url': teamsUrl,
      'hooks_url': hooksUrl,
      'issue_events_url': issueEventsUrl,
      'events_url': eventsUrl,
      'assignees_url': assigneesUrl,
      'branches_url': branchesUrl,
      'tags_url': tagsUrl,
      'blobs_url': blobsUrl,
      'git_tags_url': gitTagsUrl,
      'git_refs_url': gitRefsUrl,
      'trees_url': treesUrl,
      'statuses_url': statusesUrl,
      'languages_url': languagesUrl,
      'stargazers_url': stargazersUrl,
      'contributors_url': contributorsUrl,
      'subscribers_url': subscribersUrl,
      'subscription_url': subscriptionUrl,
      'commits_url': commitsUrl,
      'git_commits_url': gitCommitsUrl,
      'comments_url': commentsUrl,
      'issue_comment_url': issueCommentUrl,
      'contents_url': contentsUrl,
      'compare_url': compareUrl,
      'merges_url': mergesUrl,
      'archive_url': archiveUrl,
      'downloads_url': downloadsUrl,
      'issues_url': issuesUrl,
      'pulls_url': pullsUrl,
      'milestones_url': milestonesUrl,
      'notifications_url': notificationsUrl,
      'labels_url': labelsUrl,
      'releases_url': releasesUrl,
      'deployments_url': deploymentsUrl,
      'git_url': gitUrl,
      'ssh_url': sshUrl,
      'clone_url': cloneUrl,
      'svn_url': svnUrl,
      'forks': forks,
      'open_issues': openIssues,
      'watchers': watchers,
      'topics': topics,
      'mirror_url': mirrorUrl,
      'has_issues': hasIssues,
      'has_projects': hasProjects,
      'has_pages': hasPages,
      'has_wiki': hasWiki,
      'has_downloads': hasDownloads,
      'archived': archived,
      'disabled': disabled,
      'license': license,
      'permissions': permissions,
      'text_matches': textMatches,
      'temp_clone_token': tempCloneToken,
      'allow_merge_commit': allowMergeCommit,
      'allow_squash_merge': allowSquashMerge,
      'allow_rebase_merge': allowRebaseMerge,
      'delete_branch_on_merge': deleteBranchOnMerge
     };
  }

  static List<RepoSearchResultItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<RepoSearchResultItem>() : json.map((value) => new RepoSearchResultItem.fromJson(value)).toList();
  }

  static Map<String, RepoSearchResultItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepoSearchResultItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RepoSearchResultItem.fromJson(value));
    }
    return map;
  }
}

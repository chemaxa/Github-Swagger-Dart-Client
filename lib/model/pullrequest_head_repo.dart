part of swagger.api;

class PullrequestHeadRepo {
  
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

  String description = null;

  String downloadsUrl = null;

  String eventsUrl = null;

  bool fork = null;

  String forksUrl = null;

  String fullName = null;

  String gitCommitsUrl = null;

  String gitRefsUrl = null;

  String gitTagsUrl = null;

  String hooksUrl = null;

  String htmlUrl = null;

  int id = null;

  String nodeId = null;

  String issueCommentUrl = null;

  String issueEventsUrl = null;

  String issuesUrl = null;

  String keysUrl = null;

  String labelsUrl = null;

  String languagesUrl = null;

  String mergesUrl = null;

  String milestonesUrl = null;

  String name = null;

  String notificationsUrl = null;

  PullrequestHeadRepoOwner owner = null;

  bool private = null;

  String pullsUrl = null;

  String releasesUrl = null;

  String stargazersUrl = null;

  String statusesUrl = null;

  String subscribersUrl = null;

  String subscriptionUrl = null;

  String tagsUrl = null;

  String teamsUrl = null;

  String treesUrl = null;

  String url = null;

  String cloneUrl = null;

  String defaultBranch = null;

  int forks = null;

  int forksCount = null;

  String gitUrl = null;

  bool hasDownloads = null;

  bool hasIssues = null;

  bool hasProjects = null;

  bool hasWiki = null;

  bool hasPages = null;

  String homepage = null;

  String language = null;

  String masterBranch = null;

  bool archived = null;

  bool disabled = null;

  String mirrorUrl = null;

  int openIssues = null;

  int openIssuesCount = null;

  FullrepositoryPermissions permissions = null;

  String tempCloneToken = null;

  bool allowMergeCommit = null;

  bool allowSquashMerge = null;

  bool allowRebaseMerge = null;

  PullrequestHeadRepoLicense license = null;

  DateTime pushedAt = null;

  int size = null;

  String sshUrl = null;

  int stargazersCount = null;

  String svnUrl = null;

  List<String> topics = [];

  int watchers = null;

  int watchersCount = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  PullrequestHeadRepo();

  @override
  String toString() {
    return 'PullrequestHeadRepo[archiveUrl=$archiveUrl, assigneesUrl=$assigneesUrl, blobsUrl=$blobsUrl, branchesUrl=$branchesUrl, collaboratorsUrl=$collaboratorsUrl, commentsUrl=$commentsUrl, commitsUrl=$commitsUrl, compareUrl=$compareUrl, contentsUrl=$contentsUrl, contributorsUrl=$contributorsUrl, deploymentsUrl=$deploymentsUrl, description=$description, downloadsUrl=$downloadsUrl, eventsUrl=$eventsUrl, fork=$fork, forksUrl=$forksUrl, fullName=$fullName, gitCommitsUrl=$gitCommitsUrl, gitRefsUrl=$gitRefsUrl, gitTagsUrl=$gitTagsUrl, hooksUrl=$hooksUrl, htmlUrl=$htmlUrl, id=$id, nodeId=$nodeId, issueCommentUrl=$issueCommentUrl, issueEventsUrl=$issueEventsUrl, issuesUrl=$issuesUrl, keysUrl=$keysUrl, labelsUrl=$labelsUrl, languagesUrl=$languagesUrl, mergesUrl=$mergesUrl, milestonesUrl=$milestonesUrl, name=$name, notificationsUrl=$notificationsUrl, owner=$owner, private=$private, pullsUrl=$pullsUrl, releasesUrl=$releasesUrl, stargazersUrl=$stargazersUrl, statusesUrl=$statusesUrl, subscribersUrl=$subscribersUrl, subscriptionUrl=$subscriptionUrl, tagsUrl=$tagsUrl, teamsUrl=$teamsUrl, treesUrl=$treesUrl, url=$url, cloneUrl=$cloneUrl, defaultBranch=$defaultBranch, forks=$forks, forksCount=$forksCount, gitUrl=$gitUrl, hasDownloads=$hasDownloads, hasIssues=$hasIssues, hasProjects=$hasProjects, hasWiki=$hasWiki, hasPages=$hasPages, homepage=$homepage, language=$language, masterBranch=$masterBranch, archived=$archived, disabled=$disabled, mirrorUrl=$mirrorUrl, openIssues=$openIssues, openIssuesCount=$openIssuesCount, permissions=$permissions, tempCloneToken=$tempCloneToken, allowMergeCommit=$allowMergeCommit, allowSquashMerge=$allowSquashMerge, allowRebaseMerge=$allowRebaseMerge, license=$license, pushedAt=$pushedAt, size=$size, sshUrl=$sshUrl, stargazersCount=$stargazersCount, svnUrl=$svnUrl, topics=$topics, watchers=$watchers, watchersCount=$watchersCount, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  PullrequestHeadRepo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    description = json['description'];
    downloadsUrl = json['downloads_url'];
    eventsUrl = json['events_url'];
    fork = json['fork'];
    forksUrl = json['forks_url'];
    fullName = json['full_name'];
    gitCommitsUrl = json['git_commits_url'];
    gitRefsUrl = json['git_refs_url'];
    gitTagsUrl = json['git_tags_url'];
    hooksUrl = json['hooks_url'];
    htmlUrl = json['html_url'];
    id = json['id'];
    nodeId = json['node_id'];
    issueCommentUrl = json['issue_comment_url'];
    issueEventsUrl = json['issue_events_url'];
    issuesUrl = json['issues_url'];
    keysUrl = json['keys_url'];
    labelsUrl = json['labels_url'];
    languagesUrl = json['languages_url'];
    mergesUrl = json['merges_url'];
    milestonesUrl = json['milestones_url'];
    name = json['name'];
    notificationsUrl = json['notifications_url'];
    owner = new PullrequestHeadRepoOwner.fromJson(json['owner']);
    private = json['private'];
    pullsUrl = json['pulls_url'];
    releasesUrl = json['releases_url'];
    stargazersUrl = json['stargazers_url'];
    statusesUrl = json['statuses_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    tagsUrl = json['tags_url'];
    teamsUrl = json['teams_url'];
    treesUrl = json['trees_url'];
    url = json['url'];
    cloneUrl = json['clone_url'];
    defaultBranch = json['default_branch'];
    forks = json['forks'];
    forksCount = json['forks_count'];
    gitUrl = json['git_url'];
    hasDownloads = json['has_downloads'];
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasWiki = json['has_wiki'];
    hasPages = json['has_pages'];
    homepage = json['homepage'];
    language = json['language'];
    masterBranch = json['master_branch'];
    archived = json['archived'];
    disabled = json['disabled'];
    mirrorUrl = json['mirror_url'];
    openIssues = json['open_issues'];
    openIssuesCount = json['open_issues_count'];
    permissions = new FullrepositoryPermissions.fromJson(json['permissions']);
    tempCloneToken = json['temp_clone_token'];
    allowMergeCommit = json['allow_merge_commit'];
    allowSquashMerge = json['allow_squash_merge'];
    allowRebaseMerge = json['allow_rebase_merge'];
    license = new PullrequestHeadRepoLicense.fromJson(json['license']);
    pushedAt = json['pushed_at'] == null ? null : DateTime.parse(json['pushed_at']);
    size = json['size'];
    sshUrl = json['ssh_url'];
    stargazersCount = json['stargazers_count'];
    svnUrl = json['svn_url'];
    topics = (json['topics'] as List).map((item) => item as String).toList();
    watchers = json['watchers'];
    watchersCount = json['watchers_count'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
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
      'description': description,
      'downloads_url': downloadsUrl,
      'events_url': eventsUrl,
      'fork': fork,
      'forks_url': forksUrl,
      'full_name': fullName,
      'git_commits_url': gitCommitsUrl,
      'git_refs_url': gitRefsUrl,
      'git_tags_url': gitTagsUrl,
      'hooks_url': hooksUrl,
      'html_url': htmlUrl,
      'id': id,
      'node_id': nodeId,
      'issue_comment_url': issueCommentUrl,
      'issue_events_url': issueEventsUrl,
      'issues_url': issuesUrl,
      'keys_url': keysUrl,
      'labels_url': labelsUrl,
      'languages_url': languagesUrl,
      'merges_url': mergesUrl,
      'milestones_url': milestonesUrl,
      'name': name,
      'notifications_url': notificationsUrl,
      'owner': owner,
      'private': private,
      'pulls_url': pullsUrl,
      'releases_url': releasesUrl,
      'stargazers_url': stargazersUrl,
      'statuses_url': statusesUrl,
      'subscribers_url': subscribersUrl,
      'subscription_url': subscriptionUrl,
      'tags_url': tagsUrl,
      'teams_url': teamsUrl,
      'trees_url': treesUrl,
      'url': url,
      'clone_url': cloneUrl,
      'default_branch': defaultBranch,
      'forks': forks,
      'forks_count': forksCount,
      'git_url': gitUrl,
      'has_downloads': hasDownloads,
      'has_issues': hasIssues,
      'has_projects': hasProjects,
      'has_wiki': hasWiki,
      'has_pages': hasPages,
      'homepage': homepage,
      'language': language,
      'master_branch': masterBranch,
      'archived': archived,
      'disabled': disabled,
      'mirror_url': mirrorUrl,
      'open_issues': openIssues,
      'open_issues_count': openIssuesCount,
      'permissions': permissions,
      'temp_clone_token': tempCloneToken,
      'allow_merge_commit': allowMergeCommit,
      'allow_squash_merge': allowSquashMerge,
      'allow_rebase_merge': allowRebaseMerge,
      'license': license,
      'pushed_at': pushedAt == null ? '' : pushedAt.toUtc().toIso8601String(),
      'size': size,
      'ssh_url': sshUrl,
      'stargazers_count': stargazersCount,
      'svn_url': svnUrl,
      'topics': topics,
      'watchers': watchers,
      'watchers_count': watchersCount,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<PullrequestHeadRepo> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestHeadRepo>() : json.map((value) => new PullrequestHeadRepo.fromJson(value)).toList();
  }

  static Map<String, PullrequestHeadRepo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestHeadRepo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestHeadRepo.fromJson(value));
    }
    return map;
  }
}

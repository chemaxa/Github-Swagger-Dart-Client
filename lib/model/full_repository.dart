part of swagger.api;

class FullRepository {
  
  int id = null;

  String nodeId = null;

  String name = null;

  String fullName = null;

  AllOffullRepositoryOwner owner = null;

  bool private = null;

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

  String defaultBranch = null;

  int openIssuesCount = null;

  bool isTemplate = null;

  List<String> topics = [];

  bool hasIssues = null;

  bool hasProjects = null;

  bool hasWiki = null;

  bool hasPages = null;

  bool hasDownloads = null;

  bool archived = null;
/* Returns whether or not this repository disabled. */
  bool disabled = null;
/* The repository visibility: public, private, or internal. */
  String visibility = null;

  DateTime pushedAt = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  FullrepositoryPermissions permissions = null;

  bool allowRebaseMerge = null;

  AllOffullRepositoryTemplateRepository templateRepository = null;

  String tempCloneToken = null;

  bool allowSquashMerge = null;

  bool deleteBranchOnMerge = null;

  bool allowMergeCommit = null;

  int subscribersCount = null;

  int networkCount = null;

  AllOffullRepositoryLicense license = null;

  AllOffullRepositoryOrganization organization = null;

  Repository parent = null;

  Repository source = null;

  int forks = null;

  String masterBranch = null;

  int openIssues = null;

  int watchers = null;
/* Whether anonymous git access is allowed. */
  bool anonymousAccessEnabled = true;

  FullRepository();

  @override
  String toString() {
    return 'FullRepository[id=$id, nodeId=$nodeId, name=$name, fullName=$fullName, owner=$owner, private=$private, htmlUrl=$htmlUrl, description=$description, fork=$fork, url=$url, archiveUrl=$archiveUrl, assigneesUrl=$assigneesUrl, blobsUrl=$blobsUrl, branchesUrl=$branchesUrl, collaboratorsUrl=$collaboratorsUrl, commentsUrl=$commentsUrl, commitsUrl=$commitsUrl, compareUrl=$compareUrl, contentsUrl=$contentsUrl, contributorsUrl=$contributorsUrl, deploymentsUrl=$deploymentsUrl, downloadsUrl=$downloadsUrl, eventsUrl=$eventsUrl, forksUrl=$forksUrl, gitCommitsUrl=$gitCommitsUrl, gitRefsUrl=$gitRefsUrl, gitTagsUrl=$gitTagsUrl, gitUrl=$gitUrl, issueCommentUrl=$issueCommentUrl, issueEventsUrl=$issueEventsUrl, issuesUrl=$issuesUrl, keysUrl=$keysUrl, labelsUrl=$labelsUrl, languagesUrl=$languagesUrl, mergesUrl=$mergesUrl, milestonesUrl=$milestonesUrl, notificationsUrl=$notificationsUrl, pullsUrl=$pullsUrl, releasesUrl=$releasesUrl, sshUrl=$sshUrl, stargazersUrl=$stargazersUrl, statusesUrl=$statusesUrl, subscribersUrl=$subscribersUrl, subscriptionUrl=$subscriptionUrl, tagsUrl=$tagsUrl, teamsUrl=$teamsUrl, treesUrl=$treesUrl, cloneUrl=$cloneUrl, mirrorUrl=$mirrorUrl, hooksUrl=$hooksUrl, svnUrl=$svnUrl, homepage=$homepage, language=$language, forksCount=$forksCount, stargazersCount=$stargazersCount, watchersCount=$watchersCount, size=$size, defaultBranch=$defaultBranch, openIssuesCount=$openIssuesCount, isTemplate=$isTemplate, topics=$topics, hasIssues=$hasIssues, hasProjects=$hasProjects, hasWiki=$hasWiki, hasPages=$hasPages, hasDownloads=$hasDownloads, archived=$archived, disabled=$disabled, visibility=$visibility, pushedAt=$pushedAt, createdAt=$createdAt, updatedAt=$updatedAt, permissions=$permissions, allowRebaseMerge=$allowRebaseMerge, templateRepository=$templateRepository, tempCloneToken=$tempCloneToken, allowSquashMerge=$allowSquashMerge, deleteBranchOnMerge=$deleteBranchOnMerge, allowMergeCommit=$allowMergeCommit, subscribersCount=$subscribersCount, networkCount=$networkCount, license=$license, organization=$organization, parent=$parent, source=$source, forks=$forks, masterBranch=$masterBranch, openIssues=$openIssues, watchers=$watchers, anonymousAccessEnabled=$anonymousAccessEnabled, ]';
  }

  FullRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    owner = new AllOffullRepositoryOwner.fromJson(json['owner']);
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
    permissions = new FullrepositoryPermissions.fromJson(json['permissions']);
    allowRebaseMerge = json['allow_rebase_merge'];
    templateRepository = new AllOffullRepositoryTemplateRepository.fromJson(json['template_repository']);
    tempCloneToken = json['temp_clone_token'];
    allowSquashMerge = json['allow_squash_merge'];
    deleteBranchOnMerge = json['delete_branch_on_merge'];
    allowMergeCommit = json['allow_merge_commit'];
    subscribersCount = json['subscribers_count'];
    networkCount = json['network_count'];
    license = new AllOffullRepositoryLicense.fromJson(json['license']);
    organization = new AllOffullRepositoryOrganization.fromJson(json['organization']);
    parent = new Repository.fromJson(json['parent']);
    source = new Repository.fromJson(json['source']);
    forks = json['forks'];
    masterBranch = json['master_branch'];
    openIssues = json['open_issues'];
    watchers = json['watchers'];
    anonymousAccessEnabled = json['anonymous_access_enabled'];
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
      'permissions': permissions,
      'allow_rebase_merge': allowRebaseMerge,
      'template_repository': templateRepository,
      'temp_clone_token': tempCloneToken,
      'allow_squash_merge': allowSquashMerge,
      'delete_branch_on_merge': deleteBranchOnMerge,
      'allow_merge_commit': allowMergeCommit,
      'subscribers_count': subscribersCount,
      'network_count': networkCount,
      'license': license,
      'organization': organization,
      'parent': parent,
      'source': source,
      'forks': forks,
      'master_branch': masterBranch,
      'open_issues': openIssues,
      'watchers': watchers,
      'anonymous_access_enabled': anonymousAccessEnabled
     };
  }

  static List<FullRepository> listFromJson(List<dynamic> json) {
    return json == null ? new List<FullRepository>() : json.map((value) => new FullRepository.fromJson(value)).toList();
  }

  static Map<String, FullRepository> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FullRepository>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FullRepository.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class GistFull {
  
  String url = null;

  String forksUrl = null;

  String commitsUrl = null;

  String id = null;

  String nodeId = null;

  String gitPullUrl = null;

  String gitPushUrl = null;

  String htmlUrl = null;

  Map<String, GistsimpleFiles> files = {};

  bool public = null;

  String createdAt = null;

  String updatedAt = null;

  String description = null;

  int comments = null;

  String user = null;

  String commentsUrl = null;

  SimpleUser owner = null;

  bool truncated = null;

  List<GistfullForks> forks = [];

  List<GistfullHistory> history = [];

  Object forkOf = null;

  GistFull();

  @override
  String toString() {
    return 'GistFull[url=$url, forksUrl=$forksUrl, commitsUrl=$commitsUrl, id=$id, nodeId=$nodeId, gitPullUrl=$gitPullUrl, gitPushUrl=$gitPushUrl, htmlUrl=$htmlUrl, files=$files, public=$public, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, comments=$comments, user=$user, commentsUrl=$commentsUrl, owner=$owner, truncated=$truncated, forks=$forks, history=$history, forkOf=$forkOf, ]';
  }

  GistFull.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    forksUrl = json['forks_url'];
    commitsUrl = json['commits_url'];
    id = json['id'];
    nodeId = json['node_id'];
    gitPullUrl = json['git_pull_url'];
    gitPushUrl = json['git_push_url'];
    htmlUrl = json['html_url'];
    files = GistsimpleFiles.mapFromJson(json['files']);
    public = json['public'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    description = json['description'];
    comments = json['comments'];
    user = json['user'];
    commentsUrl = json['comments_url'];
    owner = new SimpleUser.fromJson(json['owner']);
    truncated = json['truncated'];
    forks = GistfullForks.listFromJson(json['forks']);
    history = GistfullHistory.listFromJson(json['history']);
    forkOf = new Object.fromJson(json['fork_of']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'forks_url': forksUrl,
      'commits_url': commitsUrl,
      'id': id,
      'node_id': nodeId,
      'git_pull_url': gitPullUrl,
      'git_push_url': gitPushUrl,
      'html_url': htmlUrl,
      'files': files,
      'public': public,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'description': description,
      'comments': comments,
      'user': user,
      'comments_url': commentsUrl,
      'owner': owner,
      'truncated': truncated,
      'forks': forks,
      'history': history,
      'fork_of': forkOf
     };
  }

  static List<GistFull> listFromJson(List<dynamic> json) {
    return json == null ? new List<GistFull>() : json.map((value) => new GistFull.fromJson(value)).toList();
  }

  static Map<String, GistFull> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GistFull>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GistFull.fromJson(value));
    }
    return map;
  }
}

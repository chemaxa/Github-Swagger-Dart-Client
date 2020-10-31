part of swagger.api;

class BaseGist {
  
  String url = null;

  String forksUrl = null;

  String commitsUrl = null;

  String id = null;

  String nodeId = null;

  String gitPullUrl = null;

  String gitPushUrl = null;

  String htmlUrl = null;

  Map<String, BasegistFiles> files = {};

  bool public = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String description = null;

  int comments = null;

  AllOfbaseGistUser user = null;

  String commentsUrl = null;

  AllOfbaseGistOwner owner = null;

  bool truncated = null;

  List<Object> forks = [];

  List<Object> history = [];

  BaseGist();

  @override
  String toString() {
    return 'BaseGist[url=$url, forksUrl=$forksUrl, commitsUrl=$commitsUrl, id=$id, nodeId=$nodeId, gitPullUrl=$gitPullUrl, gitPushUrl=$gitPushUrl, htmlUrl=$htmlUrl, files=$files, public=$public, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, comments=$comments, user=$user, commentsUrl=$commentsUrl, owner=$owner, truncated=$truncated, forks=$forks, history=$history, ]';
  }

  BaseGist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    forksUrl = json['forks_url'];
    commitsUrl = json['commits_url'];
    id = json['id'];
    nodeId = json['node_id'];
    gitPullUrl = json['git_pull_url'];
    gitPushUrl = json['git_push_url'];
    htmlUrl = json['html_url'];
    files = BasegistFiles.mapFromJson(json['files']);
    public = json['public'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    description = json['description'];
    comments = json['comments'];
    user = new AllOfbaseGistUser.fromJson(json['user']);
    commentsUrl = json['comments_url'];
    owner = new AllOfbaseGistOwner.fromJson(json['owner']);
    truncated = json['truncated'];
    forks = Object.listFromJson(json['forks']);
    history = Object.listFromJson(json['history']);
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
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'description': description,
      'comments': comments,
      'user': user,
      'comments_url': commentsUrl,
      'owner': owner,
      'truncated': truncated,
      'forks': forks,
      'history': history
     };
  }

  static List<BaseGist> listFromJson(List<dynamic> json) {
    return json == null ? new List<BaseGist>() : json.map((value) => new BaseGist.fromJson(value)).toList();
  }

  static Map<String, BaseGist> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BaseGist>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BaseGist.fromJson(value));
    }
    return map;
  }
}

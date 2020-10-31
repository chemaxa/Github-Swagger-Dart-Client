part of swagger.api;

class Deployment {
  
  String url = null;
/* Unique identifier of the deployment */
  int id = null;

  String nodeId = null;

  String sha = null;
/* The ref to deploy. This can be a branch, tag, or sha. */
  String ref = null;
/* Parameter to specify a task to execute */
  String task = null;

  Object payload = null;

  String originalEnvironment = null;
/* Name for the target deployment environment. */
  String environment = null;

  String description = null;

  AllOfdeploymentCreator creator = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String statusesUrl = null;

  String repositoryUrl = null;
/* Specifies if the given environment is will no longer exist at some point in the future. Default: false. */
  bool transientEnvironment = null;
/* Specifies if the given environment is one that end-users directly interact with. Default: false. */
  bool productionEnvironment = null;

  AllOfdeploymentPerformedViaGithubApp performedViaGithubApp = null;

  Deployment();

  @override
  String toString() {
    return 'Deployment[url=$url, id=$id, nodeId=$nodeId, sha=$sha, ref=$ref, task=$task, payload=$payload, originalEnvironment=$originalEnvironment, environment=$environment, description=$description, creator=$creator, createdAt=$createdAt, updatedAt=$updatedAt, statusesUrl=$statusesUrl, repositoryUrl=$repositoryUrl, transientEnvironment=$transientEnvironment, productionEnvironment=$productionEnvironment, performedViaGithubApp=$performedViaGithubApp, ]';
  }

  Deployment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    id = json['id'];
    nodeId = json['node_id'];
    sha = json['sha'];
    ref = json['ref'];
    task = json['task'];
    payload = new Object.fromJson(json['payload']);
    originalEnvironment = json['original_environment'];
    environment = json['environment'];
    description = json['description'];
    creator = new AllOfdeploymentCreator.fromJson(json['creator']);
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    statusesUrl = json['statuses_url'];
    repositoryUrl = json['repository_url'];
    transientEnvironment = json['transient_environment'];
    productionEnvironment = json['production_environment'];
    performedViaGithubApp = new AllOfdeploymentPerformedViaGithubApp.fromJson(json['performed_via_github_app']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'id': id,
      'node_id': nodeId,
      'sha': sha,
      'ref': ref,
      'task': task,
      'payload': payload,
      'original_environment': originalEnvironment,
      'environment': environment,
      'description': description,
      'creator': creator,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'statuses_url': statusesUrl,
      'repository_url': repositoryUrl,
      'transient_environment': transientEnvironment,
      'production_environment': productionEnvironment,
      'performed_via_github_app': performedViaGithubApp
     };
  }

  static List<Deployment> listFromJson(List<dynamic> json) {
    return json == null ? new List<Deployment>() : json.map((value) => new Deployment.fromJson(value)).toList();
  }

  static Map<String, Deployment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Deployment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Deployment.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class DeploymentStatus {
  
  String url = null;

  int id = null;

  String nodeId = null;
/* The state of the status. */
  String state = null;
  //enum stateEnum {  error,  failure,  inactive,  pending,  success,  queued,  in_progress,  };

  AllOfdeploymentStatusCreator creator = null;
/* A short description of the status. */
  String description = "";
/* The environment of the deployment that the status is for. */
  String environment = "";
/* Deprecated: the URL to associate with this status. */
  String targetUrl = "";

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String deploymentUrl = null;

  String repositoryUrl = null;
/* The URL for accessing your environment. */
  String environmentUrl = "";
/* The URL to associate with this status. */
  String logUrl = "";

  AllOfdeploymentStatusPerformedViaGithubApp performedViaGithubApp = null;

  DeploymentStatus();

  @override
  String toString() {
    return 'DeploymentStatus[url=$url, id=$id, nodeId=$nodeId, state=$state, creator=$creator, description=$description, environment=$environment, targetUrl=$targetUrl, createdAt=$createdAt, updatedAt=$updatedAt, deploymentUrl=$deploymentUrl, repositoryUrl=$repositoryUrl, environmentUrl=$environmentUrl, logUrl=$logUrl, performedViaGithubApp=$performedViaGithubApp, ]';
  }

  DeploymentStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    id = json['id'];
    nodeId = json['node_id'];
    state = json['state'];
    creator = new AllOfdeploymentStatusCreator.fromJson(json['creator']);
    description = json['description'];
    environment = json['environment'];
    targetUrl = json['target_url'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    deploymentUrl = json['deployment_url'];
    repositoryUrl = json['repository_url'];
    environmentUrl = json['environment_url'];
    logUrl = json['log_url'];
    performedViaGithubApp = new AllOfdeploymentStatusPerformedViaGithubApp.fromJson(json['performed_via_github_app']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'id': id,
      'node_id': nodeId,
      'state': state,
      'creator': creator,
      'description': description,
      'environment': environment,
      'target_url': targetUrl,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'deployment_url': deploymentUrl,
      'repository_url': repositoryUrl,
      'environment_url': environmentUrl,
      'log_url': logUrl,
      'performed_via_github_app': performedViaGithubApp
     };
  }

  static List<DeploymentStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeploymentStatus>() : json.map((value) => new DeploymentStatus.fromJson(value)).toList();
  }

  static Map<String, DeploymentStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeploymentStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeploymentStatus.fromJson(value));
    }
    return map;
  }
}

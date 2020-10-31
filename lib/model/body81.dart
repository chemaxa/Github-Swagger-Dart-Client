part of swagger.api;

class Body81 {
  /* The ref to deploy. This can be a branch, tag, or SHA. */
  String ref = null;
/* Specifies a task to execute (e.g., `deploy` or `deploy:migrations`). */
  String task = "deploy";
/* Attempts to automatically merge the default branch into the requested ref, if it's behind the default branch. */
  bool autoMerge = true;
/* The [status](https://developer.github.com/v3/repos/statuses/) contexts to verify against commit status checks. If you omit this parameter, GitHub verifies all unique contexts before creating a deployment. To bypass checking entirely, pass an empty array. Defaults to all unique contexts. */
  List<String> requiredContexts = [];
/* JSON payload with extra information about the deployment. */
  String payload = "";
/* Name for the target deployment environment (e.g., `production`, `staging`, `qa`). */
  String environment = "production";
/* Short description of the deployment. */
  String description = "";
/* Specifies if the given environment is specific to the deployment and will no longer exist at some point in the future. Default: `false`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. */
  bool transientEnvironment = false;
/* Specifies if the given environment is one that end-users directly interact with. Default: `true` when `environment` is `production` and `false` otherwise.   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. */
  bool productionEnvironment = null;

  String createdAt = null;

  Body81();

  @override
  String toString() {
    return 'Body81[ref=$ref, task=$task, autoMerge=$autoMerge, requiredContexts=$requiredContexts, payload=$payload, environment=$environment, description=$description, transientEnvironment=$transientEnvironment, productionEnvironment=$productionEnvironment, createdAt=$createdAt, ]';
  }

  Body81.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ref = json['ref'];
    task = json['task'];
    autoMerge = json['auto_merge'];
    requiredContexts = (json['required_contexts'] as List).map((item) => item as String).toList();
    payload = json['payload'];
    environment = json['environment'];
    description = json['description'];
    transientEnvironment = json['transient_environment'];
    productionEnvironment = json['production_environment'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ref': ref,
      'task': task,
      'auto_merge': autoMerge,
      'required_contexts': requiredContexts,
      'payload': payload,
      'environment': environment,
      'description': description,
      'transient_environment': transientEnvironment,
      'production_environment': productionEnvironment,
      'created_at': createdAt
     };
  }

  static List<Body81> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body81>() : json.map((value) => new Body81.fromJson(value)).toList();
  }

  static Map<String, Body81> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body81>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body81.fromJson(value));
    }
    return map;
  }
}

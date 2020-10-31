part of swagger.api;

class Body82 {
  /* The state of the status. Can be one of `error`, `failure`, `inactive`, `in_progress`, `queued` `pending`, or `success`. **Note:** To use the `inactive` state, you must provide the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. To use the `in_progress` and `queued` states, you must provide the [`application/vnd.github.flash-preview+json`](https://developer.github.com/v3/previews/#deployment-statuses) custom media type. When you set a transient deployment to `inactive`, the deployment will be shown as `destroyed` in GitHub. */
  String state = null;
  //enum stateEnum {  error,  failure,  inactive,  in_progress,  queued,  pending,  success,  };
/* The target URL to associate with this status. This URL should contain output to keep the user updated while the task is running or serve as historical information for what happened in the deployment. **Note:** It's recommended to use the `log_url` parameter, which replaces `target_url`. */
  String targetUrl = "";
/* The full URL of the deployment's output. This parameter replaces `target_url`. We will continue to accept `target_url` to support legacy uses, but we recommend replacing `target_url` with `log_url`. Setting `log_url` will automatically set `target_url` to the same value. Default: `\"\"`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. */
  String logUrl = "";
/* A short description of the status. The maximum description length is 140 characters. */
  String description = "";
/* Name for the target deployment environment, which can be changed when setting a deploy status. For example, `production`, `staging`, or `qa`. **Note:** This parameter requires you to use the [`application/vnd.github.flash-preview+json`](https://developer.github.com/v3/previews/#deployment-statuses) custom media type. */
  String environment = null;
  //enum environmentEnum {  production,  staging,  qa,  };
/* Sets the URL for accessing your environment. Default: `\"\"`   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. */
  String environmentUrl = "";
/* Adds a new `inactive` status to all prior non-transient, non-production environment deployments with the same repository and `environment` name as the created status's deployment. An `inactive` status is only added to deployments that had a `success` state. Default: `true`   **Note:** To add an `inactive` status to `production` environments, you must use the [`application/vnd.github.flash-preview+json`](https://developer.github.com/v3/previews/#deployment-statuses) custom media type.   **Note:** This parameter requires you to use the [`application/vnd.github.ant-man-preview+json`](https://developer.github.com/v3/previews/#enhanced-deployments) custom media type. */
  bool autoInactive = null;

  Body82();

  @override
  String toString() {
    return 'Body82[state=$state, targetUrl=$targetUrl, logUrl=$logUrl, description=$description, environment=$environment, environmentUrl=$environmentUrl, autoInactive=$autoInactive, ]';
  }

  Body82.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['state'];
    targetUrl = json['target_url'];
    logUrl = json['log_url'];
    description = json['description'];
    environment = json['environment'];
    environmentUrl = json['environment_url'];
    autoInactive = json['auto_inactive'];
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'target_url': targetUrl,
      'log_url': logUrl,
      'description': description,
      'environment': environment,
      'environment_url': environmentUrl,
      'auto_inactive': autoInactive
     };
  }

  static List<Body82> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body82>() : json.map((value) => new Body82.fromJson(value)).toList();
  }

  static Map<String, Body82> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body82>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body82.fromJson(value));
    }
    return map;
  }
}

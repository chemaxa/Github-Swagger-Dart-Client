part of swagger.api;

class Body69 {
  /* The name of the check. For example, \"code-coverage\". */
  String name = null;
/* The SHA of the commit. */
  String headSha = null;
/* The URL of the integrator's site that has the full details of the check. If the integrator does not provide this, then the homepage of the GitHub app is used. */
  String detailsUrl = null;
/* A reference for the run on the integrator's system. */
  String externalId = null;
/* The current status. Can be one of `queued`, `in_progress`, or `completed`. */
  String status = StatusEnum.queued_;
  //enum statusEnum {  queued,  in_progress,  completed,  };
/* The time that the check run began. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  String startedAt = null;
/* **Required if you provide `completed_at` or a `status` of `completed`**. The final conclusion of the check. Can be one of `success`, `failure`, `neutral`, `cancelled`, `skipped`, `timed_out`, or `action_required`. When the conclusion is `action_required`, additional details should be provided on the site specified by `details_url`.   **Note:** Providing `conclusion` will automatically set the `status` parameter to `completed`. Only GitHub can change a check run conclusion to `stale`. */
  String conclusion = null;
  //enum conclusionEnum {  success,  failure,  neutral,  cancelled,  skipped,  timed_out,  action_required,  };
/* The time the check completed. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  String completedAt = null;

  ReposownerrepocheckrunsOutput output = null;
/* Displays a button on GitHub that can be clicked to alert your app to do additional tasks. For example, a code linting app can display a button that automatically fixes detected errors. The button created in this object is displayed after the check run completes. When a user clicks the button, GitHub sends the [`check_run.requested_action` webhook](https://developer.github.com/webhooks/event-payloads/#check_run) to your app. Each action includes a `label`, `identifier` and `description`. A maximum of three actions are accepted. See the [`actions` object](https://developer.github.com/v3/checks/runs/#actions-object) description. To learn more about check runs and requested actions, see \"[Check runs and requested actions](https://developer.github.com/v3/checks/runs/#check-runs-and-requested-actions).\" To learn more about check runs and requested actions, see \"[Check runs and requested actions](https://developer.github.com/v3/checks/runs/#check-runs-and-requested-actions).\" */
  List<ReposownerrepocheckrunsActions> actions = [];

  Body69();

  @override
  String toString() {
    return 'Body69[name=$name, headSha=$headSha, detailsUrl=$detailsUrl, externalId=$externalId, status=$status, startedAt=$startedAt, conclusion=$conclusion, completedAt=$completedAt, output=$output, actions=$actions, ]';
  }

  Body69.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    headSha = json['head_sha'];
    detailsUrl = json['details_url'];
    externalId = json['external_id'];
    status = json['status'];
    startedAt = json['started_at'];
    conclusion = json['conclusion'];
    completedAt = json['completed_at'];
    output = new ReposownerrepocheckrunsOutput.fromJson(json['output']);
    actions = ReposownerrepocheckrunsActions.listFromJson(json['actions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'head_sha': headSha,
      'details_url': detailsUrl,
      'external_id': externalId,
      'status': status,
      'started_at': startedAt,
      'conclusion': conclusion,
      'completed_at': completedAt,
      'output': output,
      'actions': actions
     };
  }

  static List<Body69> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body69>() : json.map((value) => new Body69.fromJson(value)).toList();
  }

  static Map<String, Body69> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body69>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body69.fromJson(value));
    }
    return map;
  }
}

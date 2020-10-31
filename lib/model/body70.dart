part of swagger.api;

class Body70 {
  /* The name of the check. For example, \"code-coverage\". */
  String name = null;
/* The URL of the integrator's site that has the full details of the check. */
  String detailsUrl = null;
/* A reference for the run on the integrator's system. */
  String externalId = null;
/* This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  String startedAt = null;
/* The current status. Can be one of `queued`, `in_progress`, or `completed`. */
  String status = null;
  //enum statusEnum {  queued,  in_progress,  completed,  };
/* **Required if you provide `completed_at` or a `status` of `completed`**. The final conclusion of the check. Can be one of `success`, `failure`, `neutral`, `cancelled`, `skipped`, `timed_out`, or `action_required`.   **Note:** Providing `conclusion` will automatically set the `status` parameter to `completed`. Only GitHub can change a check run conclusion to `stale`. */
  String conclusion = null;
  //enum conclusionEnum {  success,  failure,  neutral,  cancelled,  skipped,  timed_out,  action_required,  };
/* The time the check completed. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. */
  String completedAt = null;

  ReposownerrepocheckrunscheckRunIdOutput output = null;
/* Possible further actions the integrator can perform, which a user may trigger. Each action includes a `label`, `identifier` and `description`. A maximum of three actions are accepted. See the [`actions` object](https://developer.github.com/v3/checks/runs/#actions-object) description. To learn more about check runs and requested actions, see \"[Check runs and requested actions](https://developer.github.com/v3/checks/runs/#check-runs-and-requested-actions).\" */
  List<ReposownerrepocheckrunsActions> actions = [];

  Body70();

  @override
  String toString() {
    return 'Body70[name=$name, detailsUrl=$detailsUrl, externalId=$externalId, startedAt=$startedAt, status=$status, conclusion=$conclusion, completedAt=$completedAt, output=$output, actions=$actions, ]';
  }

  Body70.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    detailsUrl = json['details_url'];
    externalId = json['external_id'];
    startedAt = json['started_at'];
    status = json['status'];
    conclusion = json['conclusion'];
    completedAt = json['completed_at'];
    output = new ReposownerrepocheckrunscheckRunIdOutput.fromJson(json['output']);
    actions = ReposownerrepocheckrunsActions.listFromJson(json['actions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'details_url': detailsUrl,
      'external_id': externalId,
      'started_at': startedAt,
      'status': status,
      'conclusion': conclusion,
      'completed_at': completedAt,
      'output': output,
      'actions': actions
     };
  }

  static List<Body70> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body70>() : json.map((value) => new Body70.fromJson(value)).toList();
  }

  static Map<String, Body70> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body70>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body70.fromJson(value));
    }
    return map;
  }
}

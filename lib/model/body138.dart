part of swagger.api;

class Body138 {
  /* The state of the status. Can be one of `error`, `failure`, `pending`, or `success`. */
  String state = null;
  //enum stateEnum {  error,  failure,  pending,  success,  };
/* The target URL to associate with this status. This URL will be linked from the GitHub UI to allow users to easily see the source of the status.   For example, if your continuous integration system is posting build status, you would want to provide the deep link for the build output for this specific SHA:   `http://ci.example.com/user/repo/build/sha` */
  String targetUrl = null;
/* A short description of the status. */
  String description = null;
/* A string label to differentiate this status from the status of other systems. */
  String context = "default";

  Body138();

  @override
  String toString() {
    return 'Body138[state=$state, targetUrl=$targetUrl, description=$description, context=$context, ]';
  }

  Body138.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['state'];
    targetUrl = json['target_url'];
    description = json['description'];
    context = json['context'];
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'target_url': targetUrl,
      'description': description,
      'context': context
     };
  }

  static List<Body138> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body138>() : json.map((value) => new Body138.fromJson(value)).toList();
  }

  static Map<String, Body138> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body138>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body138.fromJson(value));
    }
    return map;
  }
}

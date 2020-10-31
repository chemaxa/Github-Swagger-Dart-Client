part of swagger.api;

class Body134 {
  /* The expected SHA of the pull request's HEAD ref. This is the most recent commit on the pull request's branch. If the expected SHA does not match the pull request's HEAD, you will receive a `422 Unprocessable Entity` status. You can use the \"[List commits](https://developer.github.com/v3/repos/commits/#list-commits)\" endpoint to find the most recent commit SHA. Default: SHA of the pull request's current HEAD ref. */
  String expectedHeadSha = null;

  Body134();

  @override
  String toString() {
    return 'Body134[expectedHeadSha=$expectedHeadSha, ]';
  }

  Body134.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    expectedHeadSha = json['expected_head_sha'];
  }

  Map<String, dynamic> toJson() {
    return {
      'expected_head_sha': expectedHeadSha
     };
  }

  static List<Body134> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body134>() : json.map((value) => new Body134.fromJson(value)).toList();
  }

  static Map<String, Body134> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body134>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body134.fromJson(value));
    }
    return map;
  }
}

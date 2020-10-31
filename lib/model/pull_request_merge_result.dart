part of swagger.api;

class PullRequestMergeResult {
  
  String sha = null;

  bool merged = null;

  String message = null;

  PullRequestMergeResult();

  @override
  String toString() {
    return 'PullRequestMergeResult[sha=$sha, merged=$merged, message=$message, ]';
  }

  PullRequestMergeResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    merged = json['merged'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'merged': merged,
      'message': message
     };
  }

  static List<PullRequestMergeResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullRequestMergeResult>() : json.map((value) => new PullRequestMergeResult.fromJson(value)).toList();
  }

  static Map<String, PullRequestMergeResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullRequestMergeResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullRequestMergeResult.fromJson(value));
    }
    return map;
  }
}

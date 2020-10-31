part of swagger.api;

class IssuesimplePullRequest {
  
  DateTime mergedAt = null;

  String diffUrl = null;

  String htmlUrl = null;

  String patchUrl = null;

  String url = null;

  IssuesimplePullRequest();

  @override
  String toString() {
    return 'IssuesimplePullRequest[mergedAt=$mergedAt, diffUrl=$diffUrl, htmlUrl=$htmlUrl, patchUrl=$patchUrl, url=$url, ]';
  }

  IssuesimplePullRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mergedAt = json['merged_at'] == null ? null : DateTime.parse(json['merged_at']);
    diffUrl = json['diff_url'];
    htmlUrl = json['html_url'];
    patchUrl = json['patch_url'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'merged_at': mergedAt == null ? '' : mergedAt.toUtc().toIso8601String(),
      'diff_url': diffUrl,
      'html_url': htmlUrl,
      'patch_url': patchUrl,
      'url': url
     };
  }

  static List<IssuesimplePullRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssuesimplePullRequest>() : json.map((value) => new IssuesimplePullRequest.fromJson(value)).toList();
  }

  static Map<String, IssuesimplePullRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssuesimplePullRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssuesimplePullRequest.fromJson(value));
    }
    return map;
  }
}

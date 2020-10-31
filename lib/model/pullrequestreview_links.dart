part of swagger.api;

class PullrequestreviewLinks {
  
  PullrequestreviewLinksHtml html = null;

  PullrequestreviewLinksHtml pullRequest = null;

  PullrequestreviewLinks();

  @override
  String toString() {
    return 'PullrequestreviewLinks[html=$html, pullRequest=$pullRequest, ]';
  }

  PullrequestreviewLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    html = new PullrequestreviewLinksHtml.fromJson(json['html']);
    pullRequest = new PullrequestreviewLinksHtml.fromJson(json['pull_request']);
  }

  Map<String, dynamic> toJson() {
    return {
      'html': html,
      'pull_request': pullRequest
     };
  }

  static List<PullrequestreviewLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestreviewLinks>() : json.map((value) => new PullrequestreviewLinks.fromJson(value)).toList();
  }

  static Map<String, PullrequestreviewLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestreviewLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestreviewLinks.fromJson(value));
    }
    return map;
  }
}

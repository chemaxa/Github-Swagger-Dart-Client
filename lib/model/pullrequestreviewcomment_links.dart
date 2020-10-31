part of swagger.api;

class PullrequestreviewcommentLinks {
  
  PullrequestreviewcommentLinksSelf self = null;

  PullrequestreviewcommentLinksHtml html = null;

  PullrequestreviewcommentLinksPullRequest pullRequest = null;

  PullrequestreviewcommentLinks();

  @override
  String toString() {
    return 'PullrequestreviewcommentLinks[self=$self, html=$html, pullRequest=$pullRequest, ]';
  }

  PullrequestreviewcommentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = new PullrequestreviewcommentLinksSelf.fromJson(json['self']);
    html = new PullrequestreviewcommentLinksHtml.fromJson(json['html']);
    pullRequest = new PullrequestreviewcommentLinksPullRequest.fromJson(json['pull_request']);
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'html': html,
      'pull_request': pullRequest
     };
  }

  static List<PullrequestreviewcommentLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestreviewcommentLinks>() : json.map((value) => new PullrequestreviewcommentLinks.fromJson(value)).toList();
  }

  static Map<String, PullrequestreviewcommentLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestreviewcommentLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestreviewcommentLinks.fromJson(value));
    }
    return map;
  }
}

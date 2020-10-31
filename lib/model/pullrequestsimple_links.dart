part of swagger.api;

class PullrequestsimpleLinks {
  
  Link comments = null;

  Link commits = null;

  Link statuses = null;

  Link html = null;

  Link issue = null;

  Link reviewComments = null;

  Link reviewComment = null;

  Link self = null;

  PullrequestsimpleLinks();

  @override
  String toString() {
    return 'PullrequestsimpleLinks[comments=$comments, commits=$commits, statuses=$statuses, html=$html, issue=$issue, reviewComments=$reviewComments, reviewComment=$reviewComment, self=$self, ]';
  }

  PullrequestsimpleLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    comments = new Link.fromJson(json['comments']);
    commits = new Link.fromJson(json['commits']);
    statuses = new Link.fromJson(json['statuses']);
    html = new Link.fromJson(json['html']);
    issue = new Link.fromJson(json['issue']);
    reviewComments = new Link.fromJson(json['review_comments']);
    reviewComment = new Link.fromJson(json['review_comment']);
    self = new Link.fromJson(json['self']);
  }

  Map<String, dynamic> toJson() {
    return {
      'comments': comments,
      'commits': commits,
      'statuses': statuses,
      'html': html,
      'issue': issue,
      'review_comments': reviewComments,
      'review_comment': reviewComment,
      'self': self
     };
  }

  static List<PullrequestsimpleLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestsimpleLinks>() : json.map((value) => new PullrequestsimpleLinks.fromJson(value)).toList();
  }

  static Map<String, PullrequestsimpleLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestsimpleLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestsimpleLinks.fromJson(value));
    }
    return map;
  }
}

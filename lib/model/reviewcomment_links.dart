part of swagger.api;

class ReviewcommentLinks {
  
  Link self = null;

  Link html = null;

  Link pullRequest = null;

  ReviewcommentLinks();

  @override
  String toString() {
    return 'ReviewcommentLinks[self=$self, html=$html, pullRequest=$pullRequest, ]';
  }

  ReviewcommentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = new Link.fromJson(json['self']);
    html = new Link.fromJson(json['html']);
    pullRequest = new Link.fromJson(json['pull_request']);
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'html': html,
      'pull_request': pullRequest
     };
  }

  static List<ReviewcommentLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReviewcommentLinks>() : json.map((value) => new ReviewcommentLinks.fromJson(value)).toList();
  }

  static Map<String, ReviewcommentLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReviewcommentLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReviewcommentLinks.fromJson(value));
    }
    return map;
  }
}

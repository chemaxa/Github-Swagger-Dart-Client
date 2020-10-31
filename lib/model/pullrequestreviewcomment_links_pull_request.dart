part of swagger.api;

class PullrequestreviewcommentLinksPullRequest {
  
  String href = null;

  PullrequestreviewcommentLinksPullRequest();

  @override
  String toString() {
    return 'PullrequestreviewcommentLinksPullRequest[href=$href, ]';
  }

  PullrequestreviewcommentLinksPullRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href
     };
  }

  static List<PullrequestreviewcommentLinksPullRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestreviewcommentLinksPullRequest>() : json.map((value) => new PullrequestreviewcommentLinksPullRequest.fromJson(value)).toList();
  }

  static Map<String, PullrequestreviewcommentLinksPullRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestreviewcommentLinksPullRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestreviewcommentLinksPullRequest.fromJson(value));
    }
    return map;
  }
}

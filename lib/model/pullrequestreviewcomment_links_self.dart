part of swagger.api;

class PullrequestreviewcommentLinksSelf {
  
  String href = null;

  PullrequestreviewcommentLinksSelf();

  @override
  String toString() {
    return 'PullrequestreviewcommentLinksSelf[href=$href, ]';
  }

  PullrequestreviewcommentLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href
     };
  }

  static List<PullrequestreviewcommentLinksSelf> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestreviewcommentLinksSelf>() : json.map((value) => new PullrequestreviewcommentLinksSelf.fromJson(value)).toList();
  }

  static Map<String, PullrequestreviewcommentLinksSelf> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestreviewcommentLinksSelf>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestreviewcommentLinksSelf.fromJson(value));
    }
    return map;
  }
}

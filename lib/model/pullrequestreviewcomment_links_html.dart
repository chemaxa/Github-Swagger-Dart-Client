part of swagger.api;

class PullrequestreviewcommentLinksHtml {
  
  String href = null;

  PullrequestreviewcommentLinksHtml();

  @override
  String toString() {
    return 'PullrequestreviewcommentLinksHtml[href=$href, ]';
  }

  PullrequestreviewcommentLinksHtml.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href
     };
  }

  static List<PullrequestreviewcommentLinksHtml> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestreviewcommentLinksHtml>() : json.map((value) => new PullrequestreviewcommentLinksHtml.fromJson(value)).toList();
  }

  static Map<String, PullrequestreviewcommentLinksHtml> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestreviewcommentLinksHtml>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestreviewcommentLinksHtml.fromJson(value));
    }
    return map;
  }
}

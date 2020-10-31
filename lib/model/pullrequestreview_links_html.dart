part of swagger.api;

class PullrequestreviewLinksHtml {
  
  String href = null;

  PullrequestreviewLinksHtml();

  @override
  String toString() {
    return 'PullrequestreviewLinksHtml[href=$href, ]';
  }

  PullrequestreviewLinksHtml.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href
     };
  }

  static List<PullrequestreviewLinksHtml> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestreviewLinksHtml>() : json.map((value) => new PullrequestreviewLinksHtml.fromJson(value)).toList();
  }

  static Map<String, PullrequestreviewLinksHtml> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestreviewLinksHtml>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestreviewLinksHtml.fromJson(value));
    }
    return map;
  }
}

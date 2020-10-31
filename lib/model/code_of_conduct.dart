part of swagger.api;

class CodeOfConduct {
  
  String key = null;

  String name = null;

  String url = null;

  String body = null;

  String htmlUrl = null;

  CodeOfConduct();

  @override
  String toString() {
    return 'CodeOfConduct[key=$key, name=$name, url=$url, body=$body, htmlUrl=$htmlUrl, ]';
  }

  CodeOfConduct.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key = json['key'];
    name = json['name'];
    url = json['url'];
    body = json['body'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'name': name,
      'url': url,
      'body': body,
      'html_url': htmlUrl
     };
  }

  static List<CodeOfConduct> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeOfConduct>() : json.map((value) => new CodeOfConduct.fromJson(value)).toList();
  }

  static Map<String, CodeOfConduct> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeOfConduct>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeOfConduct.fromJson(value));
    }
    return map;
  }
}

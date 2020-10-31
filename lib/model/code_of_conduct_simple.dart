part of swagger.api;

class CodeOfConductSimple {
  
  String url = null;

  String key = null;

  String name = null;

  String htmlUrl = null;

  CodeOfConductSimple();

  @override
  String toString() {
    return 'CodeOfConductSimple[url=$url, key=$key, name=$name, htmlUrl=$htmlUrl, ]';
  }

  CodeOfConductSimple.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    key = json['key'];
    name = json['name'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'key': key,
      'name': name,
      'html_url': htmlUrl
     };
  }

  static List<CodeOfConductSimple> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeOfConductSimple>() : json.map((value) => new CodeOfConductSimple.fromJson(value)).toList();
  }

  static Map<String, CodeOfConductSimple> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeOfConductSimple>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeOfConductSimple.fromJson(value));
    }
    return map;
  }
}

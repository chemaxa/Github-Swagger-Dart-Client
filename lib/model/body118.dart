part of swagger.api;

class Body118 {
  /* Specify a custom domain for the repository. Sending a `null` value will remove the custom domain. For more about custom domains, see \"[Using a custom domain with GitHub Pages](https://help.github.com/articles/using-a-custom-domain-with-github-pages/).\" */
  String cname = null;

  AnyOfbody118Source source = null;

  Body118();

  @override
  String toString() {
    return 'Body118[cname=$cname, source=$source, ]';
  }

  Body118.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    cname = json['cname'];
    source = new AnyOfbody118Source.fromJson(json['source']);
  }

  Map<String, dynamic> toJson() {
    return {
      'cname': cname,
      'source': source
     };
  }

  static List<Body118> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body118>() : json.map((value) => new Body118.fromJson(value)).toList();
  }

  static Map<String, Body118> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body118>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body118.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body119 {
  
  ReposownerrepopagesSource source = null;

  Body119();

  @override
  String toString() {
    return 'Body119[source=$source, ]';
  }

  Body119.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    source = new ReposownerrepopagesSource.fromJson(json['source']);
  }

  Map<String, dynamic> toJson() {
    return {
      'source': source
     };
  }

  static List<Body119> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body119>() : json.map((value) => new Body119.fromJson(value)).toList();
  }

  static Map<String, Body119> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body119>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body119.fromJson(value));
    }
    return map;
  }
}

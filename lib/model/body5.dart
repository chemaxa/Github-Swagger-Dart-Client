part of swagger.api;

class Body5 {
  /* The access_token of the OAuth application. */
  String accessToken = null;

  Body5();

  @override
  String toString() {
    return 'Body5[accessToken=$accessToken, ]';
  }

  Body5.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken
     };
  }

  static List<Body5> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body5>() : json.map((value) => new Body5.fromJson(value)).toList();
  }

  static Map<String, Body5> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body5>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body5.fromJson(value));
    }
    return map;
  }
}

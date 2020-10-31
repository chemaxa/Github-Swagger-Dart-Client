part of swagger.api;

class Body2 {
  /* The OAuth access token used to authenticate to the GitHub API. */
  String accessToken = null;

  Body2();

  @override
  String toString() {
    return 'Body2[accessToken=$accessToken, ]';
  }

  Body2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken
     };
  }

  static List<Body2> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body2>() : json.map((value) => new Body2.fromJson(value)).toList();
  }

  static Map<String, Body2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body2.fromJson(value));
    }
    return map;
  }
}

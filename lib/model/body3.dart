part of swagger.api;

class Body3 {
  /* The access_token of the OAuth application. */
  String accessToken = null;

  Body3();

  @override
  String toString() {
    return 'Body3[accessToken=$accessToken, ]';
  }

  Body3.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken
     };
  }

  static List<Body3> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body3>() : json.map((value) => new Body3.fromJson(value)).toList();
  }

  static Map<String, Body3> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body3>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body3.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body84 {
  /* Optional parameter to specify the organization name if forking into an organization. */
  String organization = null;

  Body84();

  @override
  String toString() {
    return 'Body84[organization=$organization, ]';
  }

  Body84.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    organization = json['organization'];
  }

  Map<String, dynamic> toJson() {
    return {
      'organization': organization
     };
  }

  static List<Body84> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body84>() : json.map((value) => new Body84.fromJson(value)).toList();
  }

  static Map<String, Body84> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body84>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body84.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body71 {
  /* The sha of the head commit. */
  String headSha = null;

  Body71();

  @override
  String toString() {
    return 'Body71[headSha=$headSha, ]';
  }

  Body71.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    headSha = json['head_sha'];
  }

  Map<String, dynamic> toJson() {
    return {
      'head_sha': headSha
     };
  }

  static List<Body71> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body71>() : json.map((value) => new Body71.fromJson(value)).toList();
  }

  static Map<String, Body71> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body71>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body71.fromJson(value));
    }
    return map;
  }
}

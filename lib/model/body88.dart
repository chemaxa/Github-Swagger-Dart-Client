part of swagger.api;

class Body88 {
  /* The SHA1 value to set this reference to */
  String sha = null;
/* Indicates whether to force the update or to make sure the update is a fast-forward update. Leaving this out or setting it to `false` will make sure you're not overwriting work. */
  bool force = false;

  Body88();

  @override
  String toString() {
    return 'Body88[sha=$sha, force=$force, ]';
  }

  Body88.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    force = json['force'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'force': force
     };
  }

  static List<Body88> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body88>() : json.map((value) => new Body88.fromJson(value)).toList();
  }

  static Map<String, Body88> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body88>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body88.fromJson(value));
    }
    return map;
  }
}

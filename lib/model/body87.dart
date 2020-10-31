part of swagger.api;

class Body87 {
  /* The name of the fully qualified reference (ie: `refs/heads/master`). If it doesn't start with 'refs' and have at least two slashes, it will be rejected. */
  String ref = null;
/* The SHA1 value for this reference. */
  String sha = null;

  String key = null;

  Body87();

  @override
  String toString() {
    return 'Body87[ref=$ref, sha=$sha, key=$key, ]';
  }

  Body87.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ref = json['ref'];
    sha = json['sha'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ref': ref,
      'sha': sha,
      'key': key
     };
  }

  static List<Body87> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body87>() : json.map((value) => new Body87.fromJson(value)).toList();
  }

  static Map<String, Body87> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body87>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body87.fromJson(value));
    }
    return map;
  }
}

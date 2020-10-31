part of swagger.api;

class Body36 {
  /* Specifies the group of GitHub users who can comment, open issues, or create pull requests in public repositories for the given organization. Must be one of: `existing_users`, `contributors_only`, or `collaborators_only`. */
  String limit = null;
  //enum limitEnum {  existing_users,  contributors_only,  collaborators_only,  };

  Body36();

  @override
  String toString() {
    return 'Body36[limit=$limit, ]';
  }

  Body36.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'limit': limit
     };
  }

  static List<Body36> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body36>() : json.map((value) => new Body36.fromJson(value)).toList();
  }

  static Map<String, Body36> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body36>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body36.fromJson(value));
    }
    return map;
  }
}

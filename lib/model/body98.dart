part of swagger.api;

class Body98 {
  /* Specifies the group of GitHub users who can comment, open issues, or create pull requests for the given repository. Must be one of: `existing_users`, `contributors_only`, or `collaborators_only`. */
  String limit = null;
  //enum limitEnum {  existing_users,  contributors_only,  collaborators_only,  };

  Body98();

  @override
  String toString() {
    return 'Body98[limit=$limit, ]';
  }

  Body98.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'limit': limit
     };
  }

  static List<Body98> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body98>() : json.map((value) => new Body98.fromJson(value)).toList();
  }

  static Map<String, Body98> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body98>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body98.fromJson(value));
    }
    return map;
  }
}

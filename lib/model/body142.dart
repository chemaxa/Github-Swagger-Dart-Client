part of swagger.api;

class Body142 {
  /* The organization or person who will own the new repository. To create a new repository in an organization, the authenticated user must be a member of the specified organization. */
  String owner = null;
/* The name of the new repository. */
  String name = null;
/* A short description of the new repository. */
  String description = null;
/* Either `true` to create a new private repository or `false` to create a new public one. */
  bool private = false;

  Body142();

  @override
  String toString() {
    return 'Body142[owner=$owner, name=$name, description=$description, private=$private, ]';
  }

  Body142.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    owner = json['owner'];
    name = json['name'];
    description = json['description'];
    private = json['private'];
  }

  Map<String, dynamic> toJson() {
    return {
      'owner': owner,
      'name': name,
      'description': description,
      'private': private
     };
  }

  static List<Body142> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body142>() : json.map((value) => new Body142.fromJson(value)).toList();
  }

  static Map<String, Body142> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body142>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body142.fromJson(value));
    }
    return map;
  }
}

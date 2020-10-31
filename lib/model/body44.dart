part of swagger.api;

class Body44 {
  /* The discussion post's title. */
  String title = null;
/* The discussion post's body text. */
  String body = null;
/* Private posts are only visible to team members, organization owners, and team maintainers. Public posts are visible to all members of the organization. Set to `true` to create a private post. */
  bool private = false;

  Body44();

  @override
  String toString() {
    return 'Body44[title=$title, body=$body, private=$private, ]';
  }

  Body44.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    body = json['body'];
    private = json['private'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'private': private
     };
  }

  static List<Body44> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body44>() : json.map((value) => new Body44.fromJson(value)).toList();
  }

  static Map<String, Body44> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body44>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body44.fromJson(value));
    }
    return map;
  }
}

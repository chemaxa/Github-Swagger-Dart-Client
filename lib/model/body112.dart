part of swagger.api;

class Body112 {
  /* The name of the label. Emoji can be added to label names, using either native emoji or colon-style markup. For example, typing `:strawberry:` will render the emoji ![:strawberry:](https://github.githubassets.com/images/icons/emoji/unicode/1f353.png \":strawberry:\"). For a full list of available emoji and codes, see [emoji-cheat-sheet.com](http://emoji-cheat-sheet.com/). */
  String name = null;
/* The [hexadecimal color code](http://www.color-hex.com/) for the label, without the leading `#`. */
  String color = null;
/* A short description of the label. */
  String description = null;

  Body112();

  @override
  String toString() {
    return 'Body112[name=$name, color=$color, description=$description, ]';
  }

  Body112.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    color = json['color'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color,
      'description': description
     };
  }

  static List<Body112> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body112>() : json.map((value) => new Body112.fromJson(value)).toList();
  }

  static Map<String, Body112> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body112>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body112.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body113 {
  /* The new name of the label. Emoji can be added to label names, using either native emoji or colon-style markup. For example, typing `:strawberry:` will render the emoji ![:strawberry:](https://github.githubassets.com/images/icons/emoji/unicode/1f353.png \":strawberry:\"). For a full list of available emoji and codes, see [emoji-cheat-sheet.com](http://emoji-cheat-sheet.com/). */
  String newName = null;
/* The [hexadecimal color code](http://www.color-hex.com/) for the label, without the leading `#`. */
  String color = null;
/* A short description of the label. */
  String description = null;

  Body113();

  @override
  String toString() {
    return 'Body113[newName=$newName, color=$color, description=$description, ]';
  }

  Body113.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    newName = json['new_name'];
    color = json['color'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'new_name': newName,
      'color': color,
      'description': description
     };
  }

  static List<Body113> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body113>() : json.map((value) => new Body113.fromJson(value)).toList();
  }

  static Map<String, Body113> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body113>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body113.fromJson(value));
    }
    return map;
  }
}

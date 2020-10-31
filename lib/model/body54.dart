part of swagger.api;

class Body54 {
  /* The project card's note */
  String note = null;
/* Whether or not the card is archived */
  bool archived = null;

  Body54();

  @override
  String toString() {
    return 'Body54[note=$note, archived=$archived, ]';
  }

  Body54.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    note = json['note'];
    archived = json['archived'];
  }

  Map<String, dynamic> toJson() {
    return {
      'note': note,
      'archived': archived
     };
  }

  static List<Body54> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body54>() : json.map((value) => new Body54.fromJson(value)).toList();
  }

  static Map<String, Body54> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body54>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body54.fromJson(value));
    }
    return map;
  }
}

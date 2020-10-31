part of swagger.api;

class Body55 {
  /* The position of the card in a column */
  String position = null;
/* The unique identifier of the column the card should be moved to */
  int columnId = null;

  Body55();

  @override
  String toString() {
    return 'Body55[position=$position, columnId=$columnId, ]';
  }

  Body55.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    position = json['position'];
    columnId = json['column_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'position': position,
      'column_id': columnId
     };
  }

  static List<Body55> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body55>() : json.map((value) => new Body55.fromJson(value)).toList();
  }

  static Map<String, Body55> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body55>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body55.fromJson(value));
    }
    return map;
  }
}

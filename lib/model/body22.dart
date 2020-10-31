part of swagger.api;

class Body22 {
  /* Describes the last point that notifications were checked. */
  DateTime lastReadAt = null;
/* Whether the notification has been read. */
  bool read = null;

  Body22();

  @override
  String toString() {
    return 'Body22[lastReadAt=$lastReadAt, read=$read, ]';
  }

  Body22.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lastReadAt = json['last_read_at'] == null ? null : DateTime.parse(json['last_read_at']);
    read = json['read'];
  }

  Map<String, dynamic> toJson() {
    return {
      'last_read_at': lastReadAt == null ? '' : lastReadAt.toUtc().toIso8601String(),
      'read': read
     };
  }

  static List<Body22> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body22>() : json.map((value) => new Body22.fromJson(value)).toList();
  }

  static Map<String, Body22> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body22>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body22.fromJson(value));
    }
    return map;
  }
}

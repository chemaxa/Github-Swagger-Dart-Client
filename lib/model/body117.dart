part of swagger.api;

class Body117 {
  /* Describes the last point that notifications were checked. Anything updated since this time will not be marked as read. If you omit this parameter, all notifications are marked as read. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. Default: The current timestamp. */
  String lastReadAt = null;

  Body117();

  @override
  String toString() {
    return 'Body117[lastReadAt=$lastReadAt, ]';
  }

  Body117.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lastReadAt = json['last_read_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'last_read_at': lastReadAt
     };
  }

  static List<Body117> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body117>() : json.map((value) => new Body117.fromJson(value)).toList();
  }

  static Map<String, Body117> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body117>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body117.fromJson(value));
    }
    return map;
  }
}

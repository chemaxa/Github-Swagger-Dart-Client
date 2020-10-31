part of swagger.api;

class Body108 {
  /* The name of the label to add to the issue. Must contain at least one label. **Note:** Alternatively, you can pass a single label as a `string` or an `array` of labels directly, but GitHub recommends passing an object with the `labels` key. */
  List<String> labels = [];

  Body108();

  @override
  String toString() {
    return 'Body108[labels=$labels, ]';
  }

  Body108.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    labels = (json['labels'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'labels': labels
     };
  }

  static List<Body108> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body108>() : json.map((value) => new Body108.fromJson(value)).toList();
  }

  static Map<String, Body108> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body108>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body108.fromJson(value));
    }
    return map;
  }
}

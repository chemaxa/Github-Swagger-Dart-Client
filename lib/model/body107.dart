part of swagger.api;

class Body107 {
  /* The names of the labels to add to the issue. You can pass an empty array to remove all labels. **Note:** Alternatively, you can pass a single label as a `string` or an `array` of labels directly, but GitHub recommends passing an object with the `labels` key. */
  List<String> labels = [];

  Body107();

  @override
  String toString() {
    return 'Body107[labels=$labels, ]';
  }

  Body107.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    labels = (json['labels'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'labels': labels
     };
  }

  static List<Body107> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body107>() : json.map((value) => new Body107.fromJson(value)).toList();
  }

  static Map<String, Body107> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body107>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body107.fromJson(value));
    }
    return map;
  }
}

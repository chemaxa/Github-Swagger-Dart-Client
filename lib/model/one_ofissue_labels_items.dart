part of swagger.api;

class OneOfissueLabelsItems {
  
  OneOfissueLabelsItems();

  @override
  String toString() {
    return 'OneOfissueLabelsItems[]';
  }

  OneOfissueLabelsItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfissueLabelsItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfissueLabelsItems>() : json.map((value) => new OneOfissueLabelsItems.fromJson(value)).toList();
  }

  static Map<String, OneOfissueLabelsItems> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfissueLabelsItems>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfissueLabelsItems.fromJson(value));
    }
    return map;
  }
}

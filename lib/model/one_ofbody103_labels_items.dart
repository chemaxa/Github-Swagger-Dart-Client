part of swagger.api;

class OneOfbody103LabelsItems {
  
  OneOfbody103LabelsItems();

  @override
  String toString() {
    return 'OneOfbody103LabelsItems[]';
  }

  OneOfbody103LabelsItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfbody103LabelsItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfbody103LabelsItems>() : json.map((value) => new OneOfbody103LabelsItems.fromJson(value)).toList();
  }

  static Map<String, OneOfbody103LabelsItems> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfbody103LabelsItems>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfbody103LabelsItems.fromJson(value));
    }
    return map;
  }
}

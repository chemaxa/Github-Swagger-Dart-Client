part of swagger.api;

class OneOfbody100LabelsItems {
  
  OneOfbody100LabelsItems();

  @override
  String toString() {
    return 'OneOfbody100LabelsItems[]';
  }

  OneOfbody100LabelsItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfbody100LabelsItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfbody100LabelsItems>() : json.map((value) => new OneOfbody100LabelsItems.fromJson(value)).toList();
  }

  static Map<String, OneOfbody100LabelsItems> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfbody100LabelsItems>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfbody100LabelsItems.fromJson(value));
    }
    return map;
  }
}

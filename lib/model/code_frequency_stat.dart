part of swagger.api;

class CodeFrequencyStat {
  
  CodeFrequencyStat();

  @override
  String toString() {
    return 'CodeFrequencyStat[]';
  }

  CodeFrequencyStat.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CodeFrequencyStat> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeFrequencyStat>() : json.map((value) => new CodeFrequencyStat.fromJson(value)).toList();
  }

  static Map<String, CodeFrequencyStat> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeFrequencyStat>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeFrequencyStat.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class ScimuserGroups {
  
  String value = null;

  String display = null;

  ScimuserGroups();

  @override
  String toString() {
    return 'ScimuserGroups[value=$value, display=$display, ]';
  }

  ScimuserGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = json['value'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'display': display
     };
  }

  static List<ScimuserGroups> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimuserGroups>() : json.map((value) => new ScimuserGroups.fromJson(value)).toList();
  }

  static Map<String, ScimuserGroups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimuserGroups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimuserGroups.fromJson(value));
    }
    return map;
  }
}

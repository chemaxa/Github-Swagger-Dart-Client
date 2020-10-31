part of swagger.api;

class ScimgrouplistenterpriseMembers {
  
  String value = null;

  String $Ref = null;

  String display = null;

  ScimgrouplistenterpriseMembers();

  @override
  String toString() {
    return 'ScimgrouplistenterpriseMembers[value=$value, $Ref=$$Ref, display=$display, ]';
  }

  ScimgrouplistenterpriseMembers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value = json['value'];
    $Ref = json['$ref'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      '$ref': $Ref,
      'display': display
     };
  }

  static List<ScimgrouplistenterpriseMembers> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimgrouplistenterpriseMembers>() : json.map((value) => new ScimgrouplistenterpriseMembers.fromJson(value)).toList();
  }

  static Map<String, ScimgrouplistenterpriseMembers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimgrouplistenterpriseMembers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimgrouplistenterpriseMembers.fromJson(value));
    }
    return map;
  }
}

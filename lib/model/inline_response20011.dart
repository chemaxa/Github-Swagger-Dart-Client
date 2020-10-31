part of swagger.api;

class InlineResponse20011 {
  
  int totalCount = null;

  List<Installation> installations = [];

  InlineResponse20011();

  @override
  String toString() {
    return 'InlineResponse20011[totalCount=$totalCount, installations=$installations, ]';
  }

  InlineResponse20011.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    installations = Installation.listFromJson(json['installations']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'installations': installations
     };
  }

  static List<InlineResponse20011> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20011>() : json.map((value) => new InlineResponse20011.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20011> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20011>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20011.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class InlineResponse2002 {
  
  double totalCount = null;

  List<OrganizationSimple> organizations = [];

  InlineResponse2002();

  @override
  String toString() {
    return 'InlineResponse2002[totalCount=$totalCount, organizations=$organizations, ]';
  }

  InlineResponse2002.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    organizations = OrganizationSimple.listFromJson(json['organizations']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'organizations': organizations
     };
  }

  static List<InlineResponse2002> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2002>() : json.map((value) => new InlineResponse2002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2002> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2002>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2002.fromJson(value));
    }
    return map;
  }
}

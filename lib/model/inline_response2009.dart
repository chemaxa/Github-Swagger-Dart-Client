part of swagger.api;

class InlineResponse2009 {
  
  int totalCount = null;

  List<OrganizationActionsSecret> secrets = [];

  InlineResponse2009();

  @override
  String toString() {
    return 'InlineResponse2009[totalCount=$totalCount, secrets=$secrets, ]';
  }

  InlineResponse2009.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    secrets = OrganizationActionsSecret.listFromJson(json['secrets']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'secrets': secrets
     };
  }

  static List<InlineResponse2009> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2009>() : json.map((value) => new InlineResponse2009.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2009> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2009>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2009.fromJson(value));
    }
    return map;
  }
}

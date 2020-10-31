part of swagger.api;

class InlineResponse20026 {
  
  int totalCount = null;

  bool incompleteResults = null;

  List<UserSearchResultItem> items = [];

  InlineResponse20026();

  @override
  String toString() {
    return 'InlineResponse20026[totalCount=$totalCount, incompleteResults=$incompleteResults, items=$items, ]';
  }

  InlineResponse20026.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    items = UserSearchResultItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'incomplete_results': incompleteResults,
      'items': items
     };
  }

  static List<InlineResponse20026> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20026>() : json.map((value) => new InlineResponse20026.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20026> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20026>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20026.fromJson(value));
    }
    return map;
  }
}

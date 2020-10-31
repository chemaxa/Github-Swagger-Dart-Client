part of swagger.api;

class InlineResponse20024 {
  
  int totalCount = null;

  bool incompleteResults = null;

  List<RepoSearchResultItem> items = [];

  InlineResponse20024();

  @override
  String toString() {
    return 'InlineResponse20024[totalCount=$totalCount, incompleteResults=$incompleteResults, items=$items, ]';
  }

  InlineResponse20024.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    items = RepoSearchResultItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'incomplete_results': incompleteResults,
      'items': items
     };
  }

  static List<InlineResponse20024> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20024>() : json.map((value) => new InlineResponse20024.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20024> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20024>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20024.fromJson(value));
    }
    return map;
  }
}

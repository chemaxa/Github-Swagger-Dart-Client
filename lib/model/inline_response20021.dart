part of swagger.api;

class InlineResponse20021 {
  
  int totalCount = null;

  bool incompleteResults = null;

  List<CommitSearchResultItem> items = [];

  InlineResponse20021();

  @override
  String toString() {
    return 'InlineResponse20021[totalCount=$totalCount, incompleteResults=$incompleteResults, items=$items, ]';
  }

  InlineResponse20021.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    items = CommitSearchResultItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'incomplete_results': incompleteResults,
      'items': items
     };
  }

  static List<InlineResponse20021> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20021>() : json.map((value) => new InlineResponse20021.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20021> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20021>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20021.fromJson(value));
    }
    return map;
  }
}

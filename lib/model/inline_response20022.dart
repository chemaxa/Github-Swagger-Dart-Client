part of swagger.api;

class InlineResponse20022 {
  
  int totalCount = null;

  bool incompleteResults = null;

  List<IssueSearchResultItem> items = [];

  InlineResponse20022();

  @override
  String toString() {
    return 'InlineResponse20022[totalCount=$totalCount, incompleteResults=$incompleteResults, items=$items, ]';
  }

  InlineResponse20022.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    items = IssueSearchResultItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'incomplete_results': incompleteResults,
      'items': items
     };
  }

  static List<InlineResponse20022> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20022>() : json.map((value) => new InlineResponse20022.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20022> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20022>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20022.fromJson(value));
    }
    return map;
  }
}

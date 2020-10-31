part of swagger.api;

class InlineResponse20020 {
  
  int totalCount = null;

  bool incompleteResults = null;

  List<CodeSearchResultItem> items = [];

  InlineResponse20020();

  @override
  String toString() {
    return 'InlineResponse20020[totalCount=$totalCount, incompleteResults=$incompleteResults, items=$items, ]';
  }

  InlineResponse20020.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    items = CodeSearchResultItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'incomplete_results': incompleteResults,
      'items': items
     };
  }

  static List<InlineResponse20020> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20020>() : json.map((value) => new InlineResponse20020.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20020> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20020>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20020.fromJson(value));
    }
    return map;
  }
}

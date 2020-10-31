part of swagger.api;

class InlineResponse20023 {
  
  int totalCount = null;

  bool incompleteResults = null;

  List<LabelSearchResultItem> items = [];

  InlineResponse20023();

  @override
  String toString() {
    return 'InlineResponse20023[totalCount=$totalCount, incompleteResults=$incompleteResults, items=$items, ]';
  }

  InlineResponse20023.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    incompleteResults = json['incomplete_results'];
    items = LabelSearchResultItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'incomplete_results': incompleteResults,
      'items': items
     };
  }

  static List<InlineResponse20023> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20023>() : json.map((value) => new InlineResponse20023.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20023> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20023>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20023.fromJson(value));
    }
    return map;
  }
}

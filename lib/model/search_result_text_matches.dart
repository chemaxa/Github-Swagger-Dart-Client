part of swagger.api;

class SearchResultTextMatches {
  
  SearchResultTextMatches();

  @override
  String toString() {
    return 'SearchResultTextMatches[]';
  }

  SearchResultTextMatches.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<SearchResultTextMatches> listFromJson(List<dynamic> json) {
    return json == null ? new List<SearchResultTextMatches>() : json.map((value) => new SearchResultTextMatches.fromJson(value)).toList();
  }

  static Map<String, SearchResultTextMatches> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SearchResultTextMatches>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SearchResultTextMatches.fromJson(value));
    }
    return map;
  }
}

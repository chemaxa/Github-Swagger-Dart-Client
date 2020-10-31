part of swagger.api;

class SearchresulttextmatchesInner {
  
  String objectUrl = null;

  String objectType = null;

  String property = null;

  String fragment = null;

  List<Object> matches = [];

  SearchresulttextmatchesInner();

  @override
  String toString() {
    return 'SearchresulttextmatchesInner[objectUrl=$objectUrl, objectType=$objectType, property=$property, fragment=$fragment, matches=$matches, ]';
  }

  SearchresulttextmatchesInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objectUrl = json['object_url'];
    objectType = json['object_type'];
    property = json['property'];
    fragment = json['fragment'];
    matches = Object.listFromJson(json['matches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'object_url': objectUrl,
      'object_type': objectType,
      'property': property,
      'fragment': fragment,
      'matches': matches
     };
  }

  static List<SearchresulttextmatchesInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<SearchresulttextmatchesInner>() : json.map((value) => new SearchresulttextmatchesInner.fromJson(value)).toList();
  }

  static Map<String, SearchresulttextmatchesInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SearchresulttextmatchesInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SearchresulttextmatchesInner.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class InlineResponse2005 {
  
  int totalCount = null;

  List<Repository> repositories = [];

  String repositorySelection = null;

  InlineResponse2005();

  @override
  String toString() {
    return 'InlineResponse2005[totalCount=$totalCount, repositories=$repositories, repositorySelection=$repositorySelection, ]';
  }

  InlineResponse2005.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    repositories = Repository.listFromJson(json['repositories']);
    repositorySelection = json['repository_selection'];
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'repositories': repositories,
      'repository_selection': repositorySelection
     };
  }

  static List<InlineResponse2005> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2005>() : json.map((value) => new InlineResponse2005.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2005> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2005>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2005.fromJson(value));
    }
    return map;
  }
}

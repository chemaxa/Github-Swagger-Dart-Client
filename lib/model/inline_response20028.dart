part of swagger.api;

class InlineResponse20028 {
  
  int totalCount = null;

  String repositorySelection = null;

  List<Repository> repositories = [];

  InlineResponse20028();

  @override
  String toString() {
    return 'InlineResponse20028[totalCount=$totalCount, repositorySelection=$repositorySelection, repositories=$repositories, ]';
  }

  InlineResponse20028.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount = json['total_count'];
    repositorySelection = json['repository_selection'];
    repositories = Repository.listFromJson(json['repositories']);
  }

  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'repository_selection': repositorySelection,
      'repositories': repositories
     };
  }

  static List<InlineResponse20028> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20028>() : json.map((value) => new InlineResponse20028.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20028> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20028>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20028.fromJson(value));
    }
    return map;
  }
}

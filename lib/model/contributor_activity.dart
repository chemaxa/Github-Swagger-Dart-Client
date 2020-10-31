part of swagger.api;

class ContributorActivity {
  
  AllOfcontributorActivityAuthor author = null;

  int total = null;

  List<ContributoractivityWeeks> weeks = [];

  ContributorActivity();

  @override
  String toString() {
    return 'ContributorActivity[author=$author, total=$total, weeks=$weeks, ]';
  }

  ContributorActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    author = new AllOfcontributorActivityAuthor.fromJson(json['author']);
    total = json['total'];
    weeks = ContributoractivityWeeks.listFromJson(json['weeks']);
  }

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'total': total,
      'weeks': weeks
     };
  }

  static List<ContributorActivity> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContributorActivity>() : json.map((value) => new ContributorActivity.fromJson(value)).toList();
  }

  static Map<String, ContributorActivity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContributorActivity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContributorActivity.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body129 {
  /* An array of user `login`s that will be removed. */
  List<String> reviewers = [];
/* An array of team `slug`s that will be removed. */
  List<String> teamReviewers = [];

  Body129();

  @override
  String toString() {
    return 'Body129[reviewers=$reviewers, teamReviewers=$teamReviewers, ]';
  }

  Body129.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    reviewers = (json['reviewers'] as List).map((item) => item as String).toList();
    teamReviewers = (json['team_reviewers'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'reviewers': reviewers,
      'team_reviewers': teamReviewers
     };
  }

  static List<Body129> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body129>() : json.map((value) => new Body129.fromJson(value)).toList();
  }

  static Map<String, Body129> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body129>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body129.fromJson(value));
    }
    return map;
  }
}

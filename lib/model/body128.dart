part of swagger.api;

class Body128 {
  /* An array of user `login`s that will be requested. */
  List<String> reviewers = [];
/* An array of team `slug`s that will be requested. */
  List<String> teamReviewers = [];

  Body128();

  @override
  String toString() {
    return 'Body128[reviewers=$reviewers, teamReviewers=$teamReviewers, ]';
  }

  Body128.fromJson(Map<String, dynamic> json) {
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

  static List<Body128> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body128>() : json.map((value) => new Body128.fromJson(value)).toList();
  }

  static Map<String, Body128> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body128>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body128.fromJson(value));
    }
    return map;
  }
}

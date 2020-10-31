part of swagger.api;

class PullRequestReviewRequest {
  
  List<RepositoryTemplateRepositoryOwner> users = [];

  List<BranchrestrictionpolicyTeams> teams = [];

  PullRequestReviewRequest();

  @override
  String toString() {
    return 'PullRequestReviewRequest[users=$users, teams=$teams, ]';
  }

  PullRequestReviewRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    users = RepositoryTemplateRepositoryOwner.listFromJson(json['users']);
    teams = BranchrestrictionpolicyTeams.listFromJson(json['teams']);
  }

  Map<String, dynamic> toJson() {
    return {
      'users': users,
      'teams': teams
     };
  }

  static List<PullRequestReviewRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullRequestReviewRequest>() : json.map((value) => new PullRequestReviewRequest.fromJson(value)).toList();
  }

  static Map<String, PullRequestReviewRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullRequestReviewRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullRequestReviewRequest.fromJson(value));
    }
    return map;
  }
}

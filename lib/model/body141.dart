part of swagger.api;

class Body141 {
  /* **Required:** The username or organization name the repository will be transferred to. */
  String newOwner = null;
/* ID of the team or teams to add to the repository. Teams can only be added to organization-owned repositories. */
  List<int> teamIds = [];

  Body141();

  @override
  String toString() {
    return 'Body141[newOwner=$newOwner, teamIds=$teamIds, ]';
  }

  Body141.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    newOwner = json['new_owner'];
    teamIds = (json['team_ids'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'new_owner': newOwner,
      'team_ids': teamIds
     };
  }

  static List<Body141> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body141>() : json.map((value) => new Body141.fromJson(value)).toList();
  }

  static Map<String, Body141> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body141>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body141.fromJson(value));
    }
    return map;
  }
}

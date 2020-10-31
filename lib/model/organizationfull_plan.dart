part of swagger.api;

class OrganizationfullPlan {
  
  String name = null;

  int space = null;

  int privateRepos = null;

  int filledSeats = null;

  int seats = null;

  OrganizationfullPlan();

  @override
  String toString() {
    return 'OrganizationfullPlan[name=$name, space=$space, privateRepos=$privateRepos, filledSeats=$filledSeats, seats=$seats, ]';
  }

  OrganizationfullPlan.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    space = json['space'];
    privateRepos = json['private_repos'];
    filledSeats = json['filled_seats'];
    seats = json['seats'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'space': space,
      'private_repos': privateRepos,
      'filled_seats': filledSeats,
      'seats': seats
     };
  }

  static List<OrganizationfullPlan> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrganizationfullPlan>() : json.map((value) => new OrganizationfullPlan.fromJson(value)).toList();
  }

  static Map<String, OrganizationfullPlan> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrganizationfullPlan>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrganizationfullPlan.fromJson(value));
    }
    return map;
  }
}

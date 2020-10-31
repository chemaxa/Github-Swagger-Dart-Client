part of swagger.api;

class PrivateuserPlan {
  
  int collaborators = null;

  String name = null;

  int space = null;

  int privateRepos = null;

  PrivateuserPlan();

  @override
  String toString() {
    return 'PrivateuserPlan[collaborators=$collaborators, name=$name, space=$space, privateRepos=$privateRepos, ]';
  }

  PrivateuserPlan.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    collaborators = json['collaborators'];
    name = json['name'];
    space = json['space'];
    privateRepos = json['private_repos'];
  }

  Map<String, dynamic> toJson() {
    return {
      'collaborators': collaborators,
      'name': name,
      'space': space,
      'private_repos': privateRepos
     };
  }

  static List<PrivateuserPlan> listFromJson(List<dynamic> json) {
    return json == null ? new List<PrivateuserPlan>() : json.map((value) => new PrivateuserPlan.fromJson(value)).toList();
  }

  static Map<String, PrivateuserPlan> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PrivateuserPlan>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PrivateuserPlan.fromJson(value));
    }
    return map;
  }
}

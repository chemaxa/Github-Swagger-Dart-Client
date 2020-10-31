part of swagger.api;

class Body95 {
  /* The username to provide to the originating repository. */
  String vcsUsername = null;
/* The password to provide to the originating repository. */
  String vcsPassword = null;

  String vcs = null;

  String tfvcProject = null;

  Body95();

  @override
  String toString() {
    return 'Body95[vcsUsername=$vcsUsername, vcsPassword=$vcsPassword, vcs=$vcs, tfvcProject=$tfvcProject, ]';
  }

  Body95.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vcsUsername = json['vcs_username'];
    vcsPassword = json['vcs_password'];
    vcs = json['vcs'];
    tfvcProject = json['tfvc_project'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vcs_username': vcsUsername,
      'vcs_password': vcsPassword,
      'vcs': vcs,
      'tfvc_project': tfvcProject
     };
  }

  static List<Body95> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body95>() : json.map((value) => new Body95.fromJson(value)).toList();
  }

  static Map<String, Body95> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body95>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body95.fromJson(value));
    }
    return map;
  }
}

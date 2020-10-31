part of swagger.api;

class Body94 {
  /* The URL of the originating repository. */
  String vcsUrl = null;
/* The originating VCS type. Can be one of `subversion`, `git`, `mercurial`, or `tfvc`. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response. */
  String vcs = null;
  //enum vcsEnum {  subversion,  git,  mercurial,  tfvc,  };
/* If authentication is required, the username to provide to `vcs_url`. */
  String vcsUsername = null;
/* If authentication is required, the password to provide to `vcs_url`. */
  String vcsPassword = null;
/* For a tfvc import, the name of the project that is being imported. */
  String tfvcProject = null;

  Body94();

  @override
  String toString() {
    return 'Body94[vcsUrl=$vcsUrl, vcs=$vcs, vcsUsername=$vcsUsername, vcsPassword=$vcsPassword, tfvcProject=$tfvcProject, ]';
  }

  Body94.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vcsUrl = json['vcs_url'];
    vcs = json['vcs'];
    vcsUsername = json['vcs_username'];
    vcsPassword = json['vcs_password'];
    tfvcProject = json['tfvc_project'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vcs_url': vcsUrl,
      'vcs': vcs,
      'vcs_username': vcsUsername,
      'vcs_password': vcsPassword,
      'tfvc_project': tfvcProject
     };
  }

  static List<Body94> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body94>() : json.map((value) => new Body94.fromJson(value)).toList();
  }

  static Map<String, Body94> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body94>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body94.fromJson(value));
    }
    return map;
  }
}

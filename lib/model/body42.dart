part of swagger.api;

class Body42 {
  /* The name of the team. */
  String name = null;
/* The description of the team. */
  String description = null;
/* List GitHub IDs for organization members who will become team maintainers. */
  List<String> maintainers = [];
/* The full name (e.g., \"organization-name/repository-name\") of repositories to add the team to. */
  List<String> repoNames = [];
/* The level of privacy this team should have. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   Default: `secret`   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.   Default for child team: `closed` */
  String privacy = null;
  //enum privacyEnum {  secret,  closed,  };
/* **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories. */
  String permission = PermissionEnum.pull_;
  //enum permissionEnum {  pull,  push,  admin,  };
/* The ID of a team to set as the parent team. */
  int parentTeamId = null;

  Body42();

  @override
  String toString() {
    return 'Body42[name=$name, description=$description, maintainers=$maintainers, repoNames=$repoNames, privacy=$privacy, permission=$permission, parentTeamId=$parentTeamId, ]';
  }

  Body42.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
    maintainers = (json['maintainers'] as List).map((item) => item as String).toList();
    repoNames = (json['repo_names'] as List).map((item) => item as String).toList();
    privacy = json['privacy'];
    permission = json['permission'];
    parentTeamId = json['parent_team_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'maintainers': maintainers,
      'repo_names': repoNames,
      'privacy': privacy,
      'permission': permission,
      'parent_team_id': parentTeamId
     };
  }

  static List<Body42> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body42>() : json.map((value) => new Body42.fromJson(value)).toList();
  }

  static Map<String, Body42> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body42>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body42.fromJson(value));
    }
    return map;
  }
}

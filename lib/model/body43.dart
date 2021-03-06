part of swagger.api;

class Body43 {
  /* The name of the team. */
  String name = null;
/* The description of the team. */
  String description = null;
/* The level of privacy this team should have. Editing teams without specifying this parameter leaves `privacy` intact. When a team is nested, the `privacy` for parent teams cannot be `secret`. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   **For a parent or child team:**   \\* `closed` - visible to all members of this organization. */
  String privacy = null;
  //enum privacyEnum {  secret,  closed,  };
/* **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories. */
  String permission = PermissionEnum.pull_;
  //enum permissionEnum {  pull,  push,  admin,  };
/* The ID of a team to set as the parent team. */
  int parentTeamId = null;

  Body43();

  @override
  String toString() {
    return 'Body43[name=$name, description=$description, privacy=$privacy, permission=$permission, parentTeamId=$parentTeamId, ]';
  }

  Body43.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
    privacy = json['privacy'];
    permission = json['permission'];
    parentTeamId = json['parent_team_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'privacy': privacy,
      'permission': permission,
      'parent_team_id': parentTeamId
     };
  }

  static List<Body43> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body43>() : json.map((value) => new Body43.fromJson(value)).toList();
  }

  static Map<String, Body43> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body43>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body43.fromJson(value));
    }
    return map;
  }
}

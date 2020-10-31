part of swagger.api;

class OrganizationInvitation {
  
  int id = null;

  String login = null;

  String email = null;

  String role = null;

  String createdAt = null;

  SimpleUser inviter = null;

  int teamCount = null;

  String invitationTeamUrl = null;

  String nodeId = null;

  String invitationTeamsUrl = null;

  OrganizationInvitation();

  @override
  String toString() {
    return 'OrganizationInvitation[id=$id, login=$login, email=$email, role=$role, createdAt=$createdAt, inviter=$inviter, teamCount=$teamCount, invitationTeamUrl=$invitationTeamUrl, nodeId=$nodeId, invitationTeamsUrl=$invitationTeamsUrl, ]';
  }

  OrganizationInvitation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    login = json['login'];
    email = json['email'];
    role = json['role'];
    createdAt = json['created_at'];
    inviter = new SimpleUser.fromJson(json['inviter']);
    teamCount = json['team_count'];
    invitationTeamUrl = json['invitation_team_url'];
    nodeId = json['node_id'];
    invitationTeamsUrl = json['invitation_teams_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'login': login,
      'email': email,
      'role': role,
      'created_at': createdAt,
      'inviter': inviter,
      'team_count': teamCount,
      'invitation_team_url': invitationTeamUrl,
      'node_id': nodeId,
      'invitation_teams_url': invitationTeamsUrl
     };
  }

  static List<OrganizationInvitation> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrganizationInvitation>() : json.map((value) => new OrganizationInvitation.fromJson(value)).toList();
  }

  static Map<String, OrganizationInvitation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrganizationInvitation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrganizationInvitation.fromJson(value));
    }
    return map;
  }
}

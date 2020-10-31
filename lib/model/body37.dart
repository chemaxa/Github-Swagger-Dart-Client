part of swagger.api;

class Body37 {
  /* **Required unless you provide `email`**. GitHub user ID for the person you are inviting. */
  int inviteeId = null;
/* **Required unless you provide `invitee_id`**. Email address of the person you are inviting, which can be an existing GitHub user. */
  String email = null;
/* Specify role for new member. Can be one of:   \\* `admin` - Organization owners with full administrative rights to the organization and complete access to all repositories and teams.   \\* `direct_member` - Non-owner organization members with ability to see other members and join teams by invitation.   \\* `billing_manager` - Non-owner organization members with ability to manage the billing settings of your organization. */
  String role = RoleEnum.directMember_;
  //enum roleEnum {  admin,  direct_member,  billing_manager,  };
/* Specify IDs for the teams you want to invite new members to. */
  List<int> teamIds = [];

  Body37();

  @override
  String toString() {
    return 'Body37[inviteeId=$inviteeId, email=$email, role=$role, teamIds=$teamIds, ]';
  }

  Body37.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    inviteeId = json['invitee_id'];
    email = json['email'];
    role = json['role'];
    teamIds = (json['team_ids'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'invitee_id': inviteeId,
      'email': email,
      'role': role,
      'team_ids': teamIds
     };
  }

  static List<Body37> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body37>() : json.map((value) => new Body37.fromJson(value)).toList();
  }

  static Map<String, Body37> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body37>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body37.fromJson(value));
    }
    return map;
  }
}

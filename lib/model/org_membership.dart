part of swagger.api;

class OrgMembership {
  
  String url = null;

  String state = null;

  String role = null;

  String organizationUrl = null;

  OrganizationSimple organization = null;

  AllOforgMembershipUser user = null;

  OrgmembershipPermissions permissions = null;

  OrgMembership();

  @override
  String toString() {
    return 'OrgMembership[url=$url, state=$state, role=$role, organizationUrl=$organizationUrl, organization=$organization, user=$user, permissions=$permissions, ]';
  }

  OrgMembership.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    state = json['state'];
    role = json['role'];
    organizationUrl = json['organization_url'];
    organization = new OrganizationSimple.fromJson(json['organization']);
    user = new AllOforgMembershipUser.fromJson(json['user']);
    permissions = new OrgmembershipPermissions.fromJson(json['permissions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'state': state,
      'role': role,
      'organization_url': organizationUrl,
      'organization': organization,
      'user': user,
      'permissions': permissions
     };
  }

  static List<OrgMembership> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrgMembership>() : json.map((value) => new OrgMembership.fromJson(value)).toList();
  }

  static Map<String, OrgMembership> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrgMembership>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrgMembership.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class OrgmembershipPermissions {
  
  bool canCreateRepository = null;

  OrgmembershipPermissions();

  @override
  String toString() {
    return 'OrgmembershipPermissions[canCreateRepository=$canCreateRepository, ]';
  }

  OrgmembershipPermissions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canCreateRepository = json['can_create_repository'];
  }

  Map<String, dynamic> toJson() {
    return {
      'can_create_repository': canCreateRepository
     };
  }

  static List<OrgmembershipPermissions> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrgmembershipPermissions>() : json.map((value) => new OrgmembershipPermissions.fromJson(value)).toList();
  }

  static Map<String, OrgmembershipPermissions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrgmembershipPermissions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrgmembershipPermissions.fromJson(value));
    }
    return map;
  }
}

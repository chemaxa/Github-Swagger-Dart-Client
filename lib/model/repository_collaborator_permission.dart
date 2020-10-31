part of swagger.api;

class RepositoryCollaboratorPermission {
  
  String permission = null;

  AllOfrepositoryCollaboratorPermissionUser user = null;

  RepositoryCollaboratorPermission();

  @override
  String toString() {
    return 'RepositoryCollaboratorPermission[permission=$permission, user=$user, ]';
  }

  RepositoryCollaboratorPermission.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permission = json['permission'];
    user = new AllOfrepositoryCollaboratorPermissionUser.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    return {
      'permission': permission,
      'user': user
     };
  }

  static List<RepositoryCollaboratorPermission> listFromJson(List<dynamic> json) {
    return json == null ? new List<RepositoryCollaboratorPermission>() : json.map((value) => new RepositoryCollaboratorPermission.fromJson(value)).toList();
  }

  static Map<String, RepositoryCollaboratorPermission> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepositoryCollaboratorPermission>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RepositoryCollaboratorPermission.fromJson(value));
    }
    return map;
  }
}

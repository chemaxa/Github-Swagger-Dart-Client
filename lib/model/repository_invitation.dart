part of swagger.api;

class RepositoryInvitation {
  /* Unique identifier of the repository invitation. */
  int id = null;

  MinimalRepository repository = null;

  AllOfrepositoryInvitationInvitee invitee = null;

  AllOfrepositoryInvitationInviter inviter = null;
/* The permission associated with the invitation. */
  String permissions = null;
  //enum permissionsEnum {  read,  write,  admin,  };

  DateTime createdAt = null;
/* URL for the repository invitation */
  String url = null;

  String htmlUrl = null;

  String nodeId = null;

  RepositoryInvitation();

  @override
  String toString() {
    return 'RepositoryInvitation[id=$id, repository=$repository, invitee=$invitee, inviter=$inviter, permissions=$permissions, createdAt=$createdAt, url=$url, htmlUrl=$htmlUrl, nodeId=$nodeId, ]';
  }

  RepositoryInvitation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    repository = new MinimalRepository.fromJson(json['repository']);
    invitee = new AllOfrepositoryInvitationInvitee.fromJson(json['invitee']);
    inviter = new AllOfrepositoryInvitationInviter.fromJson(json['inviter']);
    permissions = json['permissions'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    url = json['url'];
    htmlUrl = json['html_url'];
    nodeId = json['node_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'repository': repository,
      'invitee': invitee,
      'inviter': inviter,
      'permissions': permissions,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'url': url,
      'html_url': htmlUrl,
      'node_id': nodeId
     };
  }

  static List<RepositoryInvitation> listFromJson(List<dynamic> json) {
    return json == null ? new List<RepositoryInvitation>() : json.map((value) => new RepositoryInvitation.fromJson(value)).toList();
  }

  static Map<String, RepositoryInvitation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepositoryInvitation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RepositoryInvitation.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Installation {
  /* The ID of the installation. */
  int id = null;

  AnyOfinstallationAccount account = null;
/* Describe whether all repositories have been selected or there's a selection involved */
  String repositorySelection = null;
  //enum repositorySelectionEnum {  all,  selected,  };

  String accessTokensUrl = null;

  String repositoriesUrl = null;

  String htmlUrl = null;

  int appId = null;
/* The ID of the user or organization this token is being scoped to. */
  int targetId = null;

  String targetType = null;

  InstallationPermissions permissions = null;

  List<String> events = [];

  DateTime createdAt = null;

  DateTime updatedAt = null;

  String singleFileName = null;

  String appSlug = null;

  AllOfinstallationSuspendedBy suspendedBy = null;

  DateTime suspendedAt = null;

  String contactEmail = null;

  Installation();

  @override
  String toString() {
    return 'Installation[id=$id, account=$account, repositorySelection=$repositorySelection, accessTokensUrl=$accessTokensUrl, repositoriesUrl=$repositoriesUrl, htmlUrl=$htmlUrl, appId=$appId, targetId=$targetId, targetType=$targetType, permissions=$permissions, events=$events, createdAt=$createdAt, updatedAt=$updatedAt, singleFileName=$singleFileName, appSlug=$appSlug, suspendedBy=$suspendedBy, suspendedAt=$suspendedAt, contactEmail=$contactEmail, ]';
  }

  Installation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    account = new AnyOfinstallationAccount.fromJson(json['account']);
    repositorySelection = json['repository_selection'];
    accessTokensUrl = json['access_tokens_url'];
    repositoriesUrl = json['repositories_url'];
    htmlUrl = json['html_url'];
    appId = json['app_id'];
    targetId = json['target_id'];
    targetType = json['target_type'];
    permissions = new InstallationPermissions.fromJson(json['permissions']);
    events = (json['events'] as List).map((item) => item as String).toList();
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    singleFileName = json['single_file_name'];
    appSlug = json['app_slug'];
    suspendedBy = new AllOfinstallationSuspendedBy.fromJson(json['suspended_by']);
    suspendedAt = json['suspended_at'] == null ? null : DateTime.parse(json['suspended_at']);
    contactEmail = json['contact_email'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'account': account,
      'repository_selection': repositorySelection,
      'access_tokens_url': accessTokensUrl,
      'repositories_url': repositoriesUrl,
      'html_url': htmlUrl,
      'app_id': appId,
      'target_id': targetId,
      'target_type': targetType,
      'permissions': permissions,
      'events': events,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'single_file_name': singleFileName,
      'app_slug': appSlug,
      'suspended_by': suspendedBy,
      'suspended_at': suspendedAt == null ? '' : suspendedAt.toUtc().toIso8601String(),
      'contact_email': contactEmail
     };
  }

  static List<Installation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Installation>() : json.map((value) => new Installation.fromJson(value)).toList();
  }

  static Map<String, Installation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Installation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Installation.fromJson(value));
    }
    return map;
  }
}

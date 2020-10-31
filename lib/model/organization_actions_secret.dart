part of swagger.api;

class OrganizationActionsSecret {
  /* The name of the secret. */
  String name = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;
/* Visibility of a secret */
  String visibility = null;
  //enum visibilityEnum {  all,  private,  selected,  };

  String selectedRepositoriesUrl = null;

  OrganizationActionsSecret();

  @override
  String toString() {
    return 'OrganizationActionsSecret[name=$name, createdAt=$createdAt, updatedAt=$updatedAt, visibility=$visibility, selectedRepositoriesUrl=$selectedRepositoriesUrl, ]';
  }

  OrganizationActionsSecret.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    visibility = json['visibility'];
    selectedRepositoriesUrl = json['selected_repositories_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'visibility': visibility,
      'selected_repositories_url': selectedRepositoriesUrl
     };
  }

  static List<OrganizationActionsSecret> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrganizationActionsSecret>() : json.map((value) => new OrganizationActionsSecret.fromJson(value)).toList();
  }

  static Map<String, OrganizationActionsSecret> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrganizationActionsSecret>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrganizationActionsSecret.fromJson(value));
    }
    return map;
  }
}

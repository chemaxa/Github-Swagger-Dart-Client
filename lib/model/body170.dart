part of swagger.api;

class Body170 {
  /* Lock the repositories being migrated at the start of the migration */
  bool lockRepositories = null;
/* Do not include attachments in the migration */
  bool excludeAttachments = null;
/* Exclude attributes from the API response to improve performance */
  List<String> exclude = [];
  //enum excludeEnum {  repositories,  };

  List<String> repositories = [];

  Body170();

  @override
  String toString() {
    return 'Body170[lockRepositories=$lockRepositories, excludeAttachments=$excludeAttachments, exclude=$exclude, repositories=$repositories, ]';
  }

  Body170.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lockRepositories = json['lock_repositories'];
    excludeAttachments = json['exclude_attachments'];
    exclude = (json['exclude'] as List).map((item) => item as String).toList();
    repositories = (json['repositories'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'lock_repositories': lockRepositories,
      'exclude_attachments': excludeAttachments,
      'exclude': exclude,
      'repositories': repositories
     };
  }

  static List<Body170> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body170>() : json.map((value) => new Body170.fromJson(value)).toList();
  }

  static Map<String, Body170> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body170>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body170.fromJson(value));
    }
    return map;
  }
}

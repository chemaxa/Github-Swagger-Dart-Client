part of swagger.api;

class Body39 {
  /* A list of arrays indicating which repositories should be migrated. */
  List<String> repositories = [];
/* Indicates whether repositories should be locked (to prevent manipulation) while migrating data. */
  bool lockRepositories = false;
/* Indicates whether attachments should be excluded from the migration (to reduce migration archive file size). */
  bool excludeAttachments = false;

  List<String> exclude = [];

  Body39();

  @override
  String toString() {
    return 'Body39[repositories=$repositories, lockRepositories=$lockRepositories, excludeAttachments=$excludeAttachments, exclude=$exclude, ]';
  }

  Body39.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    repositories = (json['repositories'] as List).map((item) => item as String).toList();
    lockRepositories = json['lock_repositories'];
    excludeAttachments = json['exclude_attachments'];
    exclude = (json['exclude'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'repositories': repositories,
      'lock_repositories': lockRepositories,
      'exclude_attachments': excludeAttachments,
      'exclude': exclude
     };
  }

  static List<Body39> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body39>() : json.map((value) => new Body39.fromJson(value)).toList();
  }

  static Map<String, Body39> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body39>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body39.fromJson(value));
    }
    return map;
  }
}

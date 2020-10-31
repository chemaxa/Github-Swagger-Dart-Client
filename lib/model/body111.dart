part of swagger.api;

class Body111 {
  /* A name for the key. */
  String title = null;
/* The contents of the key. */
  String key = null;
/* If `true`, the key will only be able to read repository contents. Otherwise, the key will be able to read and write.      Deploy keys with write access can perform the same actions as an organization member with admin access, or a collaborator on a personal repository. For more information, see \"[Repository permission levels for an organization](https://help.github.com/articles/repository-permission-levels-for-an-organization/)\" and \"[Permission levels for a user account repository](https://help.github.com/articles/permission-levels-for-a-user-account-repository/).\" */
  bool readOnly = null;

  Body111();

  @override
  String toString() {
    return 'Body111[title=$title, key=$key, readOnly=$readOnly, ]';
  }

  Body111.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    key = json['key'];
    readOnly = json['read_only'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'key': key,
      'read_only': readOnly
     };
  }

  static List<Body111> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body111>() : json.map((value) => new Body111.fromJson(value)).toList();
  }

  static Map<String, Body111> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body111>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body111.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body96 {
  /* The new Git author email. */
  String email = null;
/* The new Git author name. */
  String name = null;

  String remoteId = null;

  Body96();

  @override
  String toString() {
    return 'Body96[email=$email, name=$name, remoteId=$remoteId, ]';
  }

  Body96.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    name = json['name'];
    remoteId = json['remote_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'remote_id': remoteId
     };
  }

  static List<Body96> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body96>() : json.map((value) => new Body96.fromJson(value)).toList();
  }

  static Map<String, Body96> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body96>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body96.fromJson(value));
    }
    return map;
  }
}

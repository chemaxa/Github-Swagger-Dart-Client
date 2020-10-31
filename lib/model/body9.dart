part of swagger.api;

class Body9 {
  /* A list of scopes that this authorization is in. */
  List<String> scopes = [];
/* A list of scopes to add to this authorization. */
  List<String> addScopes = [];
/* A list of scopes to remove from this authorization. */
  List<String> removeScopes = [];
/* A note to remind you what the OAuth token is for. */
  String note = null;
/* A URL to remind you what app the OAuth token is for. */
  String noteUrl = null;
/* A unique string to distinguish an authorization from others created for the same client ID and user. */
  String fingerprint = null;

  Body9();

  @override
  String toString() {
    return 'Body9[scopes=$scopes, addScopes=$addScopes, removeScopes=$removeScopes, note=$note, noteUrl=$noteUrl, fingerprint=$fingerprint, ]';
  }

  Body9.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    scopes = (json['scopes'] as List).map((item) => item as String).toList();
    addScopes = (json['add_scopes'] as List).map((item) => item as String).toList();
    removeScopes = (json['remove_scopes'] as List).map((item) => item as String).toList();
    note = json['note'];
    noteUrl = json['note_url'];
    fingerprint = json['fingerprint'];
  }

  Map<String, dynamic> toJson() {
    return {
      'scopes': scopes,
      'add_scopes': addScopes,
      'remove_scopes': removeScopes,
      'note': note,
      'note_url': noteUrl,
      'fingerprint': fingerprint
     };
  }

  static List<Body9> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body9>() : json.map((value) => new Body9.fromJson(value)).toList();
  }

  static Map<String, Body9> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body9>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body9.fromJson(value));
    }
    return map;
  }
}

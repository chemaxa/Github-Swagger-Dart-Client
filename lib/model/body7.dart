part of swagger.api;

class Body7 {
  /* The OAuth app client secret for which to create the token. */
  String clientSecret = null;
/* A list of scopes that this authorization is in. */
  List<String> scopes = [];
/* A note to remind you what the OAuth token is for. */
  String note = null;
/* A URL to remind you what app the OAuth token is for. */
  String noteUrl = null;
/* A unique string to distinguish an authorization from others created for the same client ID and user. */
  String fingerprint = null;

  Body7();

  @override
  String toString() {
    return 'Body7[clientSecret=$clientSecret, scopes=$scopes, note=$note, noteUrl=$noteUrl, fingerprint=$fingerprint, ]';
  }

  Body7.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clientSecret = json['client_secret'];
    scopes = (json['scopes'] as List).map((item) => item as String).toList();
    note = json['note'];
    noteUrl = json['note_url'];
    fingerprint = json['fingerprint'];
  }

  Map<String, dynamic> toJson() {
    return {
      'client_secret': clientSecret,
      'scopes': scopes,
      'note': note,
      'note_url': noteUrl,
      'fingerprint': fingerprint
     };
  }

  static List<Body7> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body7>() : json.map((value) => new Body7.fromJson(value)).toList();
  }

  static Map<String, Body7> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body7>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body7.fromJson(value));
    }
    return map;
  }
}

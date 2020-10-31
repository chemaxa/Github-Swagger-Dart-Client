part of swagger.api;

class Body6 {
  /* A list of scopes that this authorization is in. */
  List<String> scopes = [];
/* A note to remind you what the OAuth token is for. */
  String note = null;
/* A URL to remind you what app the OAuth token is for. */
  String noteUrl = null;
/* The OAuth app client key for which to create the token. */
  String clientId = null;
/* The OAuth app client secret for which to create the token. */
  String clientSecret = null;
/* A unique string to distinguish an authorization from others created for the same client ID and user. */
  String fingerprint = null;

  Body6();

  @override
  String toString() {
    return 'Body6[scopes=$scopes, note=$note, noteUrl=$noteUrl, clientId=$clientId, clientSecret=$clientSecret, fingerprint=$fingerprint, ]';
  }

  Body6.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    scopes = (json['scopes'] as List).map((item) => item as String).toList();
    note = json['note'];
    noteUrl = json['note_url'];
    clientId = json['client_id'];
    clientSecret = json['client_secret'];
    fingerprint = json['fingerprint'];
  }

  Map<String, dynamic> toJson() {
    return {
      'scopes': scopes,
      'note': note,
      'note_url': noteUrl,
      'client_id': clientId,
      'client_secret': clientSecret,
      'fingerprint': fingerprint
     };
  }

  static List<Body6> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body6>() : json.map((value) => new Body6.fromJson(value)).toList();
  }

  static Map<String, Body6> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body6>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body6.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body8 {
  /* The OAuth app client secret for which to create the token. */
  String clientSecret = null;
/* A list of scopes that this authorization is in. */
  List<String> scopes = [];
/* A note to remind you what the OAuth token is for. */
  String note = null;
/* A URL to remind you what app the OAuth token is for. */
  String noteUrl = null;

  Body8();

  @override
  String toString() {
    return 'Body8[clientSecret=$clientSecret, scopes=$scopes, note=$note, noteUrl=$noteUrl, ]';
  }

  Body8.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clientSecret = json['client_secret'];
    scopes = (json['scopes'] as List).map((item) => item as String).toList();
    note = json['note'];
    noteUrl = json['note_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'client_secret': clientSecret,
      'scopes': scopes,
      'note': note,
      'note_url': noteUrl
     };
  }

  static List<Body8> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body8>() : json.map((value) => new Body8.fromJson(value)).toList();
  }

  static Map<String, Body8> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body8>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body8.fromJson(value));
    }
    return map;
  }
}

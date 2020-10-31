part of swagger.api;

class Body164 {
  /* An email address associated with the GitHub user account to manage. */
  String email = null;
/* Denotes whether an email is publically visible. */
  String visibility = null;
  //enum visibilityEnum {  public,  private,  };

  Body164();

  @override
  String toString() {
    return 'Body164[email=$email, visibility=$visibility, ]';
  }

  Body164.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    visibility = json['visibility'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'visibility': visibility
     };
  }

  static List<Body164> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body164>() : json.map((value) => new Body164.fromJson(value)).toList();
  }

  static Map<String, Body164> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body164>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body164.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body59 {
  /* Name of the project */
  String name = null;
/* Body of the project */
  String body = null;
/* State of the project; either 'open' or 'closed' */
  String state = null;
/* The baseline permission that all organization members have on this project */
  String organizationPermission = null;
  //enum organizationPermissionEnum {  read,  write,  admin,  none,  };
/* Whether or not this project can be seen by everyone. */
  bool private = null;

  Body59();

  @override
  String toString() {
    return 'Body59[name=$name, body=$body, state=$state, organizationPermission=$organizationPermission, private=$private, ]';
  }

  Body59.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    body = json['body'];
    state = json['state'];
    organizationPermission = json['organization_permission'];
    private = json['private'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'body': body,
      'state': state,
      'organization_permission': organizationPermission,
      'private': private
     };
  }

  static List<Body59> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body59>() : json.map((value) => new Body59.fromJson(value)).toList();
  }

  static Map<String, Body59> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body59>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body59.fromJson(value));
    }
    return map;
  }
}

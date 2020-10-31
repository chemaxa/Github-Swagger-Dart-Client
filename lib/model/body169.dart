part of swagger.api;

class Body169 {
  /* The state that the membership should be in. Only `\"active\"` will be accepted. */
  String state = null;
  //enum stateEnum {  active,  };

  Body169();

  @override
  String toString() {
    return 'Body169[state=$state, ]';
  }

  Body169.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state
     };
  }

  static List<Body169> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body169>() : json.map((value) => new Body169.fromJson(value)).toList();
  }

  static Map<String, Body169> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body169>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body169.fromJson(value));
    }
    return map;
  }
}

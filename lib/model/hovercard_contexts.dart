part of swagger.api;

class HovercardContexts {
  
  String message = null;

  String octicon = null;

  HovercardContexts();

  @override
  String toString() {
    return 'HovercardContexts[message=$message, octicon=$octicon, ]';
  }

  HovercardContexts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    octicon = json['octicon'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'octicon': octicon
     };
  }

  static List<HovercardContexts> listFromJson(List<dynamic> json) {
    return json == null ? new List<HovercardContexts>() : json.map((value) => new HovercardContexts.fromJson(value)).toList();
  }

  static Map<String, HovercardContexts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HovercardContexts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HovercardContexts.fromJson(value));
    }
    return map;
  }
}

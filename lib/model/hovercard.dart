part of swagger.api;

class Hovercard {
  
  List<HovercardContexts> contexts = [];

  Hovercard();

  @override
  String toString() {
    return 'Hovercard[contexts=$contexts, ]';
  }

  Hovercard.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contexts = HovercardContexts.listFromJson(json['contexts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'contexts': contexts
     };
  }

  static List<Hovercard> listFromJson(List<dynamic> json) {
    return json == null ? new List<Hovercard>() : json.map((value) => new Hovercard.fromJson(value)).toList();
  }

  static Map<String, Hovercard> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Hovercard>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Hovercard.fromJson(value));
    }
    return map;
  }
}

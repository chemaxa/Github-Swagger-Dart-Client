part of swagger.api;

class ReactionRollup {
  
  String url = null;

  int totalCount = null;

  int +1 = null;

  int n1 = null;

  int laugh = null;

  int confused = null;

  int heart = null;

  int hooray = null;

  int eyes = null;

  int rocket = null;

  ReactionRollup();

  @override
  String toString() {
    return 'ReactionRollup[url=$url, totalCount=$totalCount, +1=$+1, n1=$n1, laugh=$laugh, confused=$confused, heart=$heart, hooray=$hooray, eyes=$eyes, rocket=$rocket, ]';
  }

  ReactionRollup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    totalCount = json['total_count'];
    +1 = json['+1'];
    n1 = json['-1'];
    laugh = json['laugh'];
    confused = json['confused'];
    heart = json['heart'];
    hooray = json['hooray'];
    eyes = json['eyes'];
    rocket = json['rocket'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'total_count': totalCount,
      '+1': +1,
      '-1': n1,
      'laugh': laugh,
      'confused': confused,
      'heart': heart,
      'hooray': hooray,
      'eyes': eyes,
      'rocket': rocket
     };
  }

  static List<ReactionRollup> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReactionRollup>() : json.map((value) => new ReactionRollup.fromJson(value)).toList();
  }

  static Map<String, ReactionRollup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReactionRollup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReactionRollup.fromJson(value));
    }
    return map;
  }
}

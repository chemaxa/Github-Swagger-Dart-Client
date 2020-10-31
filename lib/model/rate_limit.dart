part of swagger.api;

class RateLimit {
  
  int limit = null;

  int remaining = null;

  int reset = null;

  RateLimit();

  @override
  String toString() {
    return 'RateLimit[limit=$limit, remaining=$remaining, reset=$reset, ]';
  }

  RateLimit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    limit = json['limit'];
    remaining = json['remaining'];
    reset = json['reset'];
  }

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'remaining': remaining,
      'reset': reset
     };
  }

  static List<RateLimit> listFromJson(List<dynamic> json) {
    return json == null ? new List<RateLimit>() : json.map((value) => new RateLimit.fromJson(value)).toList();
  }

  static Map<String, RateLimit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RateLimit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RateLimit.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class RateLimitOverview {
  
  RatelimitoverviewResources resources = null;

  RateLimit rate = null;

  RateLimitOverview();

  @override
  String toString() {
    return 'RateLimitOverview[resources=$resources, rate=$rate, ]';
  }

  RateLimitOverview.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resources = new RatelimitoverviewResources.fromJson(json['resources']);
    rate = new RateLimit.fromJson(json['rate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'resources': resources,
      'rate': rate
     };
  }

  static List<RateLimitOverview> listFromJson(List<dynamic> json) {
    return json == null ? new List<RateLimitOverview>() : json.map((value) => new RateLimitOverview.fromJson(value)).toList();
  }

  static Map<String, RateLimitOverview> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RateLimitOverview>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RateLimitOverview.fromJson(value));
    }
    return map;
  }
}

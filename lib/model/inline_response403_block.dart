part of swagger.api;

class InlineResponse403Block {
  
  String reason = null;

  String createdAt = null;

  String htmlUrl = null;

  InlineResponse403Block();

  @override
  String toString() {
    return 'InlineResponse403Block[reason=$reason, createdAt=$createdAt, htmlUrl=$htmlUrl, ]';
  }

  InlineResponse403Block.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    reason = json['reason'];
    createdAt = json['created_at'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'reason': reason,
      'created_at': createdAt,
      'html_url': htmlUrl
     };
  }

  static List<InlineResponse403Block> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse403Block>() : json.map((value) => new InlineResponse403Block.fromJson(value)).toList();
  }

  static Map<String, InlineResponse403Block> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse403Block>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse403Block.fromJson(value));
    }
    return map;
  }
}

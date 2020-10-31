part of swagger.api;

class InlineResponse403 {
  
  InlineResponse403Block block = null;

  String message = null;

  String documentationUrl = null;

  InlineResponse403();

  @override
  String toString() {
    return 'InlineResponse403[block=$block, message=$message, documentationUrl=$documentationUrl, ]';
  }

  InlineResponse403.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    block = new InlineResponse403Block.fromJson(json['block']);
    message = json['message'];
    documentationUrl = json['documentation_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'block': block,
      'message': message,
      'documentation_url': documentationUrl
     };
  }

  static List<InlineResponse403> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse403>() : json.map((value) => new InlineResponse403.fromJson(value)).toList();
  }

  static Map<String, InlineResponse403> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse403>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse403.fromJson(value));
    }
    return map;
  }
}

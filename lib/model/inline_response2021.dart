part of swagger.api;

class InlineResponse2021 {
  
  String message = null;

  String url = null;

  InlineResponse2021();

  @override
  String toString() {
    return 'InlineResponse2021[message=$message, url=$url, ]';
  }

  InlineResponse2021.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'url': url
     };
  }

  static List<InlineResponse2021> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2021>() : json.map((value) => new InlineResponse2021.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2021> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse2021>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2021.fromJson(value));
    }
    return map;
  }
}

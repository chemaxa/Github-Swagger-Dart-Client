part of swagger.api;

class PagebuildError {
  
  String message = null;

  PagebuildError();

  @override
  String toString() {
    return 'PagebuildError[message=$message, ]';
  }

  PagebuildError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message
     };
  }

  static List<PagebuildError> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagebuildError>() : json.map((value) => new PagebuildError.fromJson(value)).toList();
  }

  static Map<String, PagebuildError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagebuildError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagebuildError.fromJson(value));
    }
    return map;
  }
}

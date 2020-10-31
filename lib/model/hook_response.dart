part of swagger.api;

class HookResponse {
  
  int code = null;

  String status = null;

  String message = null;

  HookResponse();

  @override
  String toString() {
    return 'HookResponse[code=$code, status=$status, message=$message, ]';
  }

  HookResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'status': status,
      'message': message
     };
  }

  static List<HookResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<HookResponse>() : json.map((value) => new HookResponse.fromJson(value)).toList();
  }

  static Map<String, HookResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HookResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HookResponse.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class ScimError {
  
  String message = null;

  String documentationUrl = null;

  String detail = null;

  int status = null;

  String scimType = null;

  List<String> schemas = [];

  ScimError();

  @override
  String toString() {
    return 'ScimError[message=$message, documentationUrl=$documentationUrl, detail=$detail, status=$status, scimType=$scimType, schemas=$schemas, ]';
  }

  ScimError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    documentationUrl = json['documentation_url'];
    detail = json['detail'];
    status = json['status'];
    scimType = json['scimType'];
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'documentation_url': documentationUrl,
      'detail': detail,
      'status': status,
      'scimType': scimType,
      'schemas': schemas
     };
  }

  static List<ScimError> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimError>() : json.map((value) => new ScimError.fromJson(value)).toList();
  }

  static Map<String, ScimError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimError.fromJson(value));
    }
    return map;
  }
}

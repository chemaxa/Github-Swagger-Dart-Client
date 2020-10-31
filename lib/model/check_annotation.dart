part of swagger.api;

class CheckAnnotation {
  
  String path = null;

  int startLine = null;

  int endLine = null;

  int startColumn = null;

  int endColumn = null;

  String annotationLevel = null;

  String title = null;

  String message = null;

  String rawDetails = null;

  String blobHref = null;

  CheckAnnotation();

  @override
  String toString() {
    return 'CheckAnnotation[path=$path, startLine=$startLine, endLine=$endLine, startColumn=$startColumn, endColumn=$endColumn, annotationLevel=$annotationLevel, title=$title, message=$message, rawDetails=$rawDetails, blobHref=$blobHref, ]';
  }

  CheckAnnotation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['path'];
    startLine = json['start_line'];
    endLine = json['end_line'];
    startColumn = json['start_column'];
    endColumn = json['end_column'];
    annotationLevel = json['annotation_level'];
    title = json['title'];
    message = json['message'];
    rawDetails = json['raw_details'];
    blobHref = json['blob_href'];
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'start_line': startLine,
      'end_line': endLine,
      'start_column': startColumn,
      'end_column': endColumn,
      'annotation_level': annotationLevel,
      'title': title,
      'message': message,
      'raw_details': rawDetails,
      'blob_href': blobHref
     };
  }

  static List<CheckAnnotation> listFromJson(List<dynamic> json) {
    return json == null ? new List<CheckAnnotation>() : json.map((value) => new CheckAnnotation.fromJson(value)).toList();
  }

  static Map<String, CheckAnnotation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckAnnotation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CheckAnnotation.fromJson(value));
    }
    return map;
  }
}

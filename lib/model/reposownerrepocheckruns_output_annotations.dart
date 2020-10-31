part of swagger.api;

class ReposownerrepocheckrunsOutputAnnotations {
  /* The path of the file to add an annotation to. For example, `assets/css/main.css`. */
  String path = null;
/* The start line of the annotation. */
  int startLine = null;
/* The end line of the annotation. */
  int endLine = null;
/* The start column of the annotation. Annotations only support `start_column` and `end_column` on the same line. Omit this parameter if `start_line` and `end_line` have different values. */
  int startColumn = null;
/* The end column of the annotation. Annotations only support `start_column` and `end_column` on the same line. Omit this parameter if `start_line` and `end_line` have different values. */
  int endColumn = null;
/* The level of the annotation. Can be one of `notice`, `warning`, or `failure`. */
  String annotationLevel = null;
  //enum annotationLevelEnum {  notice,  warning,  failure,  };
/* A short description of the feedback for these lines of code. The maximum size is 64 KB. */
  String message = null;
/* The title that represents the annotation. The maximum size is 255 characters. */
  String title = null;
/* Details about this annotation. The maximum size is 64 KB. */
  String rawDetails = null;

  ReposownerrepocheckrunsOutputAnnotations();

  @override
  String toString() {
    return 'ReposownerrepocheckrunsOutputAnnotations[path=$path, startLine=$startLine, endLine=$endLine, startColumn=$startColumn, endColumn=$endColumn, annotationLevel=$annotationLevel, message=$message, title=$title, rawDetails=$rawDetails, ]';
  }

  ReposownerrepocheckrunsOutputAnnotations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['path'];
    startLine = json['start_line'];
    endLine = json['end_line'];
    startColumn = json['start_column'];
    endColumn = json['end_column'];
    annotationLevel = json['annotation_level'];
    message = json['message'];
    title = json['title'];
    rawDetails = json['raw_details'];
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'start_line': startLine,
      'end_line': endLine,
      'start_column': startColumn,
      'end_column': endColumn,
      'annotation_level': annotationLevel,
      'message': message,
      'title': title,
      'raw_details': rawDetails
     };
  }

  static List<ReposownerrepocheckrunsOutputAnnotations> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocheckrunsOutputAnnotations>() : json.map((value) => new ReposownerrepocheckrunsOutputAnnotations.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocheckrunsOutputAnnotations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocheckrunsOutputAnnotations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocheckrunsOutputAnnotations.fromJson(value));
    }
    return map;
  }
}

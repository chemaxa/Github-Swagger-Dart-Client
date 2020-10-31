part of swagger.api;

class ReposownerrepopullspullNumberreviewsComments {
  /* The relative path to the file that necessitates a review comment. */
  String path = null;
/* The position in the diff where you want to add a review comment. Note this value is not the same as the line number in the file. For help finding the position value, read the note below. */
  int position = null;
/* Text of the review comment. */
  String body = null;

  int line = null;

  String side = null;

  int startLine = null;

  String startSide = null;

  ReposownerrepopullspullNumberreviewsComments();

  @override
  String toString() {
    return 'ReposownerrepopullspullNumberreviewsComments[path=$path, position=$position, body=$body, line=$line, side=$side, startLine=$startLine, startSide=$startSide, ]';
  }

  ReposownerrepopullspullNumberreviewsComments.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['path'];
    position = json['position'];
    body = json['body'];
    line = json['line'];
    side = json['side'];
    startLine = json['start_line'];
    startSide = json['start_side'];
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'position': position,
      'body': body,
      'line': line,
      'side': side,
      'start_line': startLine,
      'start_side': startSide
     };
  }

  static List<ReposownerrepopullspullNumberreviewsComments> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepopullspullNumberreviewsComments>() : json.map((value) => new ReposownerrepopullspullNumberreviewsComments.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepopullspullNumberreviewsComments> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepopullspullNumberreviewsComments>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepopullspullNumberreviewsComments.fromJson(value));
    }
    return map;
  }
}

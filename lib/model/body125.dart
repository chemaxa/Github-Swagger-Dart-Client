part of swagger.api;

class Body125 {
  /* The text of the review comment. */
  String body = null;
/* The SHA of the commit needing a comment. Not using the latest commit SHA may render your comment outdated if a subsequent commit modifies the line you specify as the `position`. */
  String commitId = null;
/* The relative path to the file that necessitates a comment. */
  String path = null;
/* **Required without `comfort-fade` preview**. The position in the diff where you want to add a review comment. Note this value is not the same as the line number in the file. For help finding the position value, read the note above. */
  int position = null;
/* **Required with `comfort-fade` preview**. In a split diff view, the side of the diff that the pull request's changes appear on. Can be `LEFT` or `RIGHT`. Use `LEFT` for deletions that appear in red. Use `RIGHT` for additions that appear in green or unchanged lines that appear in white and are shown for context. For a multi-line comment, side represents whether the last line of the comment range is a deletion or addition. For more information, see \"[Diff view options](https://help.github.com/en/articles/about-comparing-branches-in-pull-requests#diff-view-options)\" in the GitHub Help documentation. */
  String side = null;
  //enum sideEnum {  LEFT,  RIGHT,  };
/* **Required with `comfort-fade` preview**. The line of the blob in the pull request diff that the comment applies to. For a multi-line comment, the last line of the range that your comment applies to. */
  int line = null;
/* **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_line` is the first line in the pull request diff that your multi-line comment applies to. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation. */
  int startLine = null;
/* **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_side` is the starting side of the diff that the comment applies to. Can be `LEFT` or `RIGHT`. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation. See `side` in this table for additional context. */
  String startSide = null;
  //enum startSideEnum {  LEFT,  RIGHT,  side,  };

  int inReplyTo = null;

  Body125();

  @override
  String toString() {
    return 'Body125[body=$body, commitId=$commitId, path=$path, position=$position, side=$side, line=$line, startLine=$startLine, startSide=$startSide, inReplyTo=$inReplyTo, ]';
  }

  Body125.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
    commitId = json['commit_id'];
    path = json['path'];
    position = json['position'];
    side = json['side'];
    line = json['line'];
    startLine = json['start_line'];
    startSide = json['start_side'];
    inReplyTo = json['in_reply_to'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'commit_id': commitId,
      'path': path,
      'position': position,
      'side': side,
      'line': line,
      'start_line': startLine,
      'start_side': startSide,
      'in_reply_to': inReplyTo
     };
  }

  static List<Body125> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body125>() : json.map((value) => new Body125.fromJson(value)).toList();
  }

  static Map<String, Body125> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body125>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body125.fromJson(value));
    }
    return map;
  }
}

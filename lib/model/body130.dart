part of swagger.api;

class Body130 {
  /* The SHA of the commit that needs a review. Not using the latest commit SHA may render your review comment outdated if a subsequent commit modifies the line you specify as the `position`. Defaults to the most recent commit in the pull request when you do not specify a value. */
  String commitId = null;
/* **Required** when using `REQUEST_CHANGES` or `COMMENT` for the `event` parameter. The body text of the pull request review. */
  String body = null;
/* The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. By leaving this blank, you set the review action state to `PENDING`, which means you will need to [submit the pull request review](https://developer.github.com/v3/pulls/reviews/#submit-a-review-for-a-pull-request) when you are ready. */
  String event = null;
  //enum eventEnum {  APPROVE,  REQUEST_CHANGES,  COMMENT,  };
/* Use the following table to specify the location, destination, and contents of the draft review comment. */
  List<ReposownerrepopullspullNumberreviewsComments> comments = [];

  Body130();

  @override
  String toString() {
    return 'Body130[commitId=$commitId, body=$body, event=$event, comments=$comments, ]';
  }

  Body130.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commitId = json['commit_id'];
    body = json['body'];
    event = json['event'];
    comments = ReposownerrepopullspullNumberreviewsComments.listFromJson(json['comments']);
  }

  Map<String, dynamic> toJson() {
    return {
      'commit_id': commitId,
      'body': body,
      'event': event,
      'comments': comments
     };
  }

  static List<Body130> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body130>() : json.map((value) => new Body130.fromJson(value)).toList();
  }

  static Map<String, Body130> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body130>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body130.fromJson(value));
    }
    return map;
  }
}

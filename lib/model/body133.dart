part of swagger.api;

class Body133 {
  /* The body text of the pull request review */
  String body = null;
/* The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. When you leave this blank, the API returns _HTTP 422 (Unrecognizable entity)_ and sets the review action state to `PENDING`, which means you will need to re-submit the pull request review using a review action. */
  String event = null;
  //enum eventEnum {  APPROVE,  REQUEST_CHANGES,  COMMENT,  };

  Body133();

  @override
  String toString() {
    return 'Body133[body=$body, event=$event, ]';
  }

  Body133.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    body = json['body'];
    event = json['event'];
  }

  Map<String, dynamic> toJson() {
    return {
      'body': body,
      'event': event
     };
  }

  static List<Body133> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body133>() : json.map((value) => new Body133.fromJson(value)).toList();
  }

  static Map<String, Body133> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body133>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body133.fromJson(value));
    }
    return map;
  }
}

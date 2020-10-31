part of swagger.api;

class Body109 {
  /* The reason for locking the issue or pull request conversation. Lock will fail if you don't use one of these reasons:   \\* `off-topic`   \\* `too heated`   \\* `resolved`   \\* `spam` */
  String lockReason = null;
  //enum lockReasonEnum {  off-topic,  too heated,  resolved,  spam,  };

  Body109();

  @override
  String toString() {
    return 'Body109[lockReason=$lockReason, ]';
  }

  Body109.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lockReason = json['lock_reason'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lock_reason': lockReason
     };
  }

  static List<Body109> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body109>() : json.map((value) => new Body109.fromJson(value)).toList();
  }

  static Map<String, Body109> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body109>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body109.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body89 {
  /* The tag's name. This is typically a version (e.g., \"v0.0.1\"). */
  String tag = null;
/* The tag message. */
  String message = null;
/* The SHA of the git object this is tagging. */
  String object = null;
/* The type of the object we're tagging. Normally this is a `commit` but it can also be a `tree` or a `blob`. */
  String type = null;
  //enum typeEnum {  commit,  tree,  blob,  };

  ReposownerrepogittagsTagger tagger = null;

  Body89();

  @override
  String toString() {
    return 'Body89[tag=$tag, message=$message, object=$object, type=$type, tagger=$tagger, ]';
  }

  Body89.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tag = json['tag'];
    message = json['message'];
    object = json['object'];
    type = json['type'];
    tagger = new ReposownerrepogittagsTagger.fromJson(json['tagger']);
  }

  Map<String, dynamic> toJson() {
    return {
      'tag': tag,
      'message': message,
      'object': object,
      'type': type,
      'tagger': tagger
     };
  }

  static List<Body89> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body89>() : json.map((value) => new Body89.fromJson(value)).toList();
  }

  static Map<String, Body89> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body89>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body89.fromJson(value));
    }
    return map;
  }
}

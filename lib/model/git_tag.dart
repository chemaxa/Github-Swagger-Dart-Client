part of swagger.api;

class GitTag {
  
  String nodeId = null;
/* Name of the tag */
  String tag = null;

  String sha = null;
/* URL for the tag */
  String url = null;
/* Message describing the purpose of the tag */
  String message = null;

  GittagTagger tagger = null;

  GittagObject object = null;

  Verification verification = null;

  GitTag();

  @override
  String toString() {
    return 'GitTag[nodeId=$nodeId, tag=$tag, sha=$sha, url=$url, message=$message, tagger=$tagger, object=$object, verification=$verification, ]';
  }

  GitTag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nodeId = json['node_id'];
    tag = json['tag'];
    sha = json['sha'];
    url = json['url'];
    message = json['message'];
    tagger = new GittagTagger.fromJson(json['tagger']);
    object = new GittagObject.fromJson(json['object']);
    verification = new Verification.fromJson(json['verification']);
  }

  Map<String, dynamic> toJson() {
    return {
      'node_id': nodeId,
      'tag': tag,
      'sha': sha,
      'url': url,
      'message': message,
      'tagger': tagger,
      'object': object,
      'verification': verification
     };
  }

  static List<GitTag> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitTag>() : json.map((value) => new GitTag.fromJson(value)).toList();
  }

  static Map<String, GitTag> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitTag>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitTag.fromJson(value));
    }
    return map;
  }
}

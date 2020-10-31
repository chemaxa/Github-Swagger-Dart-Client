part of swagger.api;

class Body137 {
  /* The name of the tag. */
  String tagName = null;
/* Specifies the commitish value that determines where the Git tag is created from. Can be any branch or commit SHA. Unused if the Git tag already exists. Default: the repository's default branch (usually `master`). */
  String targetCommitish = null;
/* The name of the release. */
  String name = null;
/* Text describing the contents of the tag. */
  String body = null;
/* `true` makes the release a draft, and `false` publishes the release. */
  bool draft = null;
/* `true` to identify the release as a prerelease, `false` to identify the release as a full release. */
  bool prerelease = null;

  Body137();

  @override
  String toString() {
    return 'Body137[tagName=$tagName, targetCommitish=$targetCommitish, name=$name, body=$body, draft=$draft, prerelease=$prerelease, ]';
  }

  Body137.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tagName = json['tag_name'];
    targetCommitish = json['target_commitish'];
    name = json['name'];
    body = json['body'];
    draft = json['draft'];
    prerelease = json['prerelease'];
  }

  Map<String, dynamic> toJson() {
    return {
      'tag_name': tagName,
      'target_commitish': targetCommitish,
      'name': name,
      'body': body,
      'draft': draft,
      'prerelease': prerelease
     };
  }

  static List<Body137> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body137>() : json.map((value) => new Body137.fromJson(value)).toList();
  }

  static Map<String, Body137> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body137>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body137.fromJson(value));
    }
    return map;
  }
}

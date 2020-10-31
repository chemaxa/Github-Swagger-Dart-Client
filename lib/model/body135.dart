part of swagger.api;

class Body135 {
  /* The name of the tag. */
  String tagName = null;
/* Specifies the commitish value that determines where the Git tag is created from. Can be any branch or commit SHA. Unused if the Git tag already exists. Default: the repository's default branch (usually `master`). */
  String targetCommitish = null;
/* The name of the release. */
  String name = null;
/* Text describing the contents of the tag. */
  String body = null;
/* `true` to create a draft (unpublished) release, `false` to create a published one. */
  bool draft = false;
/* `true` to identify the release as a prerelease. `false` to identify the release as a full release. */
  bool prerelease = false;

  Body135();

  @override
  String toString() {
    return 'Body135[tagName=$tagName, targetCommitish=$targetCommitish, name=$name, body=$body, draft=$draft, prerelease=$prerelease, ]';
  }

  Body135.fromJson(Map<String, dynamic> json) {
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

  static List<Body135> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body135>() : json.map((value) => new Body135.fromJson(value)).toList();
  }

  static Map<String, Body135> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body135>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body135.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Release {
  
  String url = null;

  String htmlUrl = null;

  String assetsUrl = null;

  String uploadUrl = null;

  String tarballUrl = null;

  String zipballUrl = null;

  int id = null;

  String nodeId = null;
/* The name of the tag. */
  String tagName = null;
/* Specifies the commitish value that determines where the Git tag is created from. */
  String targetCommitish = null;

  String name = null;

  String body = null;
/* true to create a draft (unpublished) release, false to create a published one. */
  bool draft = null;
/* Whether to identify the release as a prerelease or a full release. */
  bool prerelease = null;

  DateTime createdAt = null;

  DateTime publishedAt = null;

  SimpleUser author = null;

  List<ReleaseAsset> assets = [];

  String bodyHtml = null;

  String bodyText = null;

  Release();

  @override
  String toString() {
    return 'Release[url=$url, htmlUrl=$htmlUrl, assetsUrl=$assetsUrl, uploadUrl=$uploadUrl, tarballUrl=$tarballUrl, zipballUrl=$zipballUrl, id=$id, nodeId=$nodeId, tagName=$tagName, targetCommitish=$targetCommitish, name=$name, body=$body, draft=$draft, prerelease=$prerelease, createdAt=$createdAt, publishedAt=$publishedAt, author=$author, assets=$assets, bodyHtml=$bodyHtml, bodyText=$bodyText, ]';
  }

  Release.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    htmlUrl = json['html_url'];
    assetsUrl = json['assets_url'];
    uploadUrl = json['upload_url'];
    tarballUrl = json['tarball_url'];
    zipballUrl = json['zipball_url'];
    id = json['id'];
    nodeId = json['node_id'];
    tagName = json['tag_name'];
    targetCommitish = json['target_commitish'];
    name = json['name'];
    body = json['body'];
    draft = json['draft'];
    prerelease = json['prerelease'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    publishedAt = json['published_at'] == null ? null : DateTime.parse(json['published_at']);
    author = new SimpleUser.fromJson(json['author']);
    assets = ReleaseAsset.listFromJson(json['assets']);
    bodyHtml = json['body_html'];
    bodyText = json['body_text'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'html_url': htmlUrl,
      'assets_url': assetsUrl,
      'upload_url': uploadUrl,
      'tarball_url': tarballUrl,
      'zipball_url': zipballUrl,
      'id': id,
      'node_id': nodeId,
      'tag_name': tagName,
      'target_commitish': targetCommitish,
      'name': name,
      'body': body,
      'draft': draft,
      'prerelease': prerelease,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'published_at': publishedAt == null ? '' : publishedAt.toUtc().toIso8601String(),
      'author': author,
      'assets': assets,
      'body_html': bodyHtml,
      'body_text': bodyText
     };
  }

  static List<Release> listFromJson(List<dynamic> json) {
    return json == null ? new List<Release>() : json.map((value) => new Release.fromJson(value)).toList();
  }

  static Map<String, Release> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Release>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Release.fromJson(value));
    }
    return map;
  }
}

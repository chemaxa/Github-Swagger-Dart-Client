part of swagger.api;

class RepositorySubscription {
  /* Determines if notifications should be received from this repository. */
  bool subscribed = null;
/* Determines if all notifications should be blocked from this repository. */
  bool ignored = null;

  String reason = null;

  DateTime createdAt = null;

  String url = null;

  String repositoryUrl = null;

  RepositorySubscription();

  @override
  String toString() {
    return 'RepositorySubscription[subscribed=$subscribed, ignored=$ignored, reason=$reason, createdAt=$createdAt, url=$url, repositoryUrl=$repositoryUrl, ]';
  }

  RepositorySubscription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subscribed = json['subscribed'];
    ignored = json['ignored'];
    reason = json['reason'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    url = json['url'];
    repositoryUrl = json['repository_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'subscribed': subscribed,
      'ignored': ignored,
      'reason': reason,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'url': url,
      'repository_url': repositoryUrl
     };
  }

  static List<RepositorySubscription> listFromJson(List<dynamic> json) {
    return json == null ? new List<RepositorySubscription>() : json.map((value) => new RepositorySubscription.fromJson(value)).toList();
  }

  static Map<String, RepositorySubscription> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RepositorySubscription>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RepositorySubscription.fromJson(value));
    }
    return map;
  }
}

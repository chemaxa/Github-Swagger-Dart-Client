part of swagger.api;

class ThreadSubscription {
  
  bool subscribed = null;

  bool ignored = null;

  String reason = null;

  DateTime createdAt = null;

  String url = null;

  String threadUrl = null;

  String repositoryUrl = null;

  ThreadSubscription();

  @override
  String toString() {
    return 'ThreadSubscription[subscribed=$subscribed, ignored=$ignored, reason=$reason, createdAt=$createdAt, url=$url, threadUrl=$threadUrl, repositoryUrl=$repositoryUrl, ]';
  }

  ThreadSubscription.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    subscribed = json['subscribed'];
    ignored = json['ignored'];
    reason = json['reason'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    url = json['url'];
    threadUrl = json['thread_url'];
    repositoryUrl = json['repository_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'subscribed': subscribed,
      'ignored': ignored,
      'reason': reason,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'url': url,
      'thread_url': threadUrl,
      'repository_url': repositoryUrl
     };
  }

  static List<ThreadSubscription> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThreadSubscription>() : json.map((value) => new ThreadSubscription.fromJson(value)).toList();
  }

  static Map<String, ThreadSubscription> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThreadSubscription>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThreadSubscription.fromJson(value));
    }
    return map;
  }
}

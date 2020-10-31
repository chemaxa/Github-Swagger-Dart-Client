part of swagger.api;

class Thread {
  
  String id = null;

  MinimalRepository repository = null;

  ThreadSubject subject = null;

  String reason = null;

  bool unread = null;

  String updatedAt = null;

  String lastReadAt = null;

  String url = null;

  String subscriptionUrl = null;

  Thread();

  @override
  String toString() {
    return 'Thread[id=$id, repository=$repository, subject=$subject, reason=$reason, unread=$unread, updatedAt=$updatedAt, lastReadAt=$lastReadAt, url=$url, subscriptionUrl=$subscriptionUrl, ]';
  }

  Thread.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    repository = new MinimalRepository.fromJson(json['repository']);
    subject = new ThreadSubject.fromJson(json['subject']);
    reason = json['reason'];
    unread = json['unread'];
    updatedAt = json['updated_at'];
    lastReadAt = json['last_read_at'];
    url = json['url'];
    subscriptionUrl = json['subscription_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'repository': repository,
      'subject': subject,
      'reason': reason,
      'unread': unread,
      'updated_at': updatedAt,
      'last_read_at': lastReadAt,
      'url': url,
      'subscription_url': subscriptionUrl
     };
  }

  static List<Thread> listFromJson(List<dynamic> json) {
    return json == null ? new List<Thread>() : json.map((value) => new Thread.fromJson(value)).toList();
  }

  static Map<String, Thread> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Thread>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Thread.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class ThreadSubject {
  
  String title = null;

  String url = null;

  String latestCommentUrl = null;

  String type = null;

  ThreadSubject();

  @override
  String toString() {
    return 'ThreadSubject[title=$title, url=$url, latestCommentUrl=$latestCommentUrl, type=$type, ]';
  }

  ThreadSubject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    url = json['url'];
    latestCommentUrl = json['latest_comment_url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'url': url,
      'latest_comment_url': latestCommentUrl,
      'type': type
     };
  }

  static List<ThreadSubject> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThreadSubject>() : json.map((value) => new ThreadSubject.fromJson(value)).toList();
  }

  static Map<String, ThreadSubject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThreadSubject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThreadSubject.fromJson(value));
    }
    return map;
  }
}

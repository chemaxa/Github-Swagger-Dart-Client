part of swagger.api;

class PullRequestMinimal {
  
  int id = null;

  int number = null;

  String url = null;

  PullrequestminimalHead head = null;

  PullrequestminimalHead base = null;

  PullRequestMinimal();

  @override
  String toString() {
    return 'PullRequestMinimal[id=$id, number=$number, url=$url, head=$head, base=$base, ]';
  }

  PullRequestMinimal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    url = json['url'];
    head = new PullrequestminimalHead.fromJson(json['head']);
    base = new PullrequestminimalHead.fromJson(json['base']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'url': url,
      'head': head,
      'base': base
     };
  }

  static List<PullRequestMinimal> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullRequestMinimal>() : json.map((value) => new PullRequestMinimal.fromJson(value)).toList();
  }

  static Map<String, PullRequestMinimal> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullRequestMinimal>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullRequestMinimal.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class PullrequestminimalHeadRepo {
  
  int id = null;

  String url = null;

  String name = null;

  PullrequestminimalHeadRepo();

  @override
  String toString() {
    return 'PullrequestminimalHeadRepo[id=$id, url=$url, name=$name, ]';
  }

  PullrequestminimalHeadRepo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    url = json['url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'name': name
     };
  }

  static List<PullrequestminimalHeadRepo> listFromJson(List<dynamic> json) {
    return json == null ? new List<PullrequestminimalHeadRepo>() : json.map((value) => new PullrequestminimalHeadRepo.fromJson(value)).toList();
  }

  static Map<String, PullrequestminimalHeadRepo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PullrequestminimalHeadRepo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PullrequestminimalHeadRepo.fromJson(value));
    }
    return map;
  }
}

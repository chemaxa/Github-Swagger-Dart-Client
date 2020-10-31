part of swagger.api;

class ApplicationgrantApp {
  
  String clientId = null;

  String name = null;

  String url = null;

  ApplicationgrantApp();

  @override
  String toString() {
    return 'ApplicationgrantApp[clientId=$clientId, name=$name, url=$url, ]';
  }

  ApplicationgrantApp.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clientId = json['client_id'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'client_id': clientId,
      'name': name,
      'url': url
     };
  }

  static List<ApplicationgrantApp> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApplicationgrantApp>() : json.map((value) => new ApplicationgrantApp.fromJson(value)).toList();
  }

  static Map<String, ApplicationgrantApp> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApplicationgrantApp>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApplicationgrantApp.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class GitignoreTemplate {
  
  String name = null;

  String source = null;

  GitignoreTemplate();

  @override
  String toString() {
    return 'GitignoreTemplate[name=$name, source=$source, ]';
  }

  GitignoreTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'source': source
     };
  }

  static List<GitignoreTemplate> listFromJson(List<dynamic> json) {
    return json == null ? new List<GitignoreTemplate>() : json.map((value) => new GitignoreTemplate.fromJson(value)).toList();
  }

  static Map<String, GitignoreTemplate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GitignoreTemplate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GitignoreTemplate.fromJson(value));
    }
    return map;
  }
}

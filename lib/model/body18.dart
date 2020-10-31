part of swagger.api;

class Body18 {
  /* Description of the gist */
  String description = null;
/* Names of files to be updated */
  Map<String, GistsgistIdFiles> files = {};

  Body18();

  @override
  String toString() {
    return 'Body18[description=$description, files=$files, ]';
  }

  Body18.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    files = GistsgistIdFiles.mapFromJson(json['files']);
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'files': files
     };
  }

  static List<Body18> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body18>() : json.map((value) => new Body18.fromJson(value)).toList();
  }

  static Map<String, Body18> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body18>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body18.fromJson(value));
    }
    return map;
  }
}

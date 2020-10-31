part of swagger.api;

class Body17 {
  /* Description of the gist */
  String description = null;
/* Names and content for the files that make up the gist */
  Map<String, GistsFiles> files = {};

  OneOfbody17Public public = null;

  Body17();

  @override
  String toString() {
    return 'Body17[description=$description, files=$files, public=$public, ]';
  }

  Body17.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    files = GistsFiles.mapFromJson(json['files']);
    public = new OneOfbody17Public.fromJson(json['public']);
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'files': files,
      'public': public
     };
  }

  static List<Body17> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body17>() : json.map((value) => new Body17.fromJson(value)).toList();
  }

  static Map<String, Body17> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body17>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body17.fromJson(value));
    }
    return map;
  }
}

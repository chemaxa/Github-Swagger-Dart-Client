part of swagger.api;

class ScimgrouplistenterpriseMeta {
  
  String resourceType = null;

  String created = null;

  String lastModified = null;

  String location = null;

  ScimgrouplistenterpriseMeta();

  @override
  String toString() {
    return 'ScimgrouplistenterpriseMeta[resourceType=$resourceType, created=$created, lastModified=$lastModified, location=$location, ]';
  }

  ScimgrouplistenterpriseMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resourceType = json['resourceType'];
    created = json['created'];
    lastModified = json['lastModified'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    return {
      'resourceType': resourceType,
      'created': created,
      'lastModified': lastModified,
      'location': location
     };
  }

  static List<ScimgrouplistenterpriseMeta> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimgrouplistenterpriseMeta>() : json.map((value) => new ScimgrouplistenterpriseMeta.fromJson(value)).toList();
  }

  static Map<String, ScimgrouplistenterpriseMeta> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimgrouplistenterpriseMeta>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimgrouplistenterpriseMeta.fromJson(value));
    }
    return map;
  }
}

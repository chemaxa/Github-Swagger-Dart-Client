part of swagger.api;

class ScimuserMeta {
  
  String resourceType = null;

  DateTime created = null;

  DateTime lastModified = null;

  String location = null;

  ScimuserMeta();

  @override
  String toString() {
    return 'ScimuserMeta[resourceType=$resourceType, created=$created, lastModified=$lastModified, location=$location, ]';
  }

  ScimuserMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    resourceType = json['resourceType'];
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    lastModified = json['lastModified'] == null ? null : DateTime.parse(json['lastModified']);
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    return {
      'resourceType': resourceType,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'lastModified': lastModified == null ? '' : lastModified.toUtc().toIso8601String(),
      'location': location
     };
  }

  static List<ScimuserMeta> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimuserMeta>() : json.map((value) => new ScimuserMeta.fromJson(value)).toList();
  }

  static Map<String, ScimuserMeta> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimuserMeta>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimuserMeta.fromJson(value));
    }
    return map;
  }
}

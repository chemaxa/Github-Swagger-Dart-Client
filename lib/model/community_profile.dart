part of swagger.api;

class CommunityProfile {
  
  int healthPercentage = null;

  String description = null;

  String documentation = null;

  CommunityprofileFiles files = null;

  DateTime updatedAt = null;

  CommunityProfile();

  @override
  String toString() {
    return 'CommunityProfile[healthPercentage=$healthPercentage, description=$description, documentation=$documentation, files=$files, updatedAt=$updatedAt, ]';
  }

  CommunityProfile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    healthPercentage = json['health_percentage'];
    description = json['description'];
    documentation = json['documentation'];
    files = new CommunityprofileFiles.fromJson(json['files']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'health_percentage': healthPercentage,
      'description': description,
      'documentation': documentation,
      'files': files,
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String()
     };
  }

  static List<CommunityProfile> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommunityProfile>() : json.map((value) => new CommunityProfile.fromJson(value)).toList();
  }

  static Map<String, CommunityProfile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommunityProfile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommunityProfile.fromJson(value));
    }
    return map;
  }
}

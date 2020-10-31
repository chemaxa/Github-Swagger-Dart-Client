part of swagger.api;

class InteractionLimit {
  /* The interaction limit to enable. */
  String limit = null;
  //enum limitEnum {  existing_users,  contributors_only,  collaborators_only,  };

  String origin = null;

  DateTime expiresAt = null;

  InteractionLimit();

  @override
  String toString() {
    return 'InteractionLimit[limit=$limit, origin=$origin, expiresAt=$expiresAt, ]';
  }

  InteractionLimit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    limit = json['limit'];
    origin = json['origin'];
    expiresAt = json['expires_at'] == null ? null : DateTime.parse(json['expires_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'origin': origin,
      'expires_at': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String()
     };
  }

  static List<InteractionLimit> listFromJson(List<dynamic> json) {
    return json == null ? new List<InteractionLimit>() : json.map((value) => new InteractionLimit.fromJson(value)).toList();
  }

  static Map<String, InteractionLimit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InteractionLimit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InteractionLimit.fromJson(value));
    }
    return map;
  }
}

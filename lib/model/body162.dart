part of swagger.api;

class Body162 {
  /* The IdP groups you want to connect to a GitHub team. When updating, the new `groups` object will replace the original one. You must include any existing groups that you don't want to remove. */
  List<TeamsteamIdteamsyncgroupmappingsGroups> groups = [];

  String syncedAt = null;

  Body162();

  @override
  String toString() {
    return 'Body162[groups=$groups, syncedAt=$syncedAt, ]';
  }

  Body162.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    groups = TeamsteamIdteamsyncgroupmappingsGroups.listFromJson(json['groups']);
    syncedAt = json['synced_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'groups': groups,
      'synced_at': syncedAt
     };
  }

  static List<Body162> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body162>() : json.map((value) => new Body162.fromJson(value)).toList();
  }

  static Map<String, Body162> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body162>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body162.fromJson(value));
    }
    return map;
  }
}

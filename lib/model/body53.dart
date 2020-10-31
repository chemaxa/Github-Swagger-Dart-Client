part of swagger.api;

class Body53 {
  /* The IdP groups you want to connect to a GitHub team. When updating, the new `groups` object will replace the original one. You must include any existing groups that you don't want to remove. */
  List<OrgsorgteamsteamSlugteamsyncgroupmappingsGroups> groups = [];

  Body53();

  @override
  String toString() {
    return 'Body53[groups=$groups, ]';
  }

  Body53.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    groups = OrgsorgteamsteamSlugteamsyncgroupmappingsGroups.listFromJson(json['groups']);
  }

  Map<String, dynamic> toJson() {
    return {
      'groups': groups
     };
  }

  static List<Body53> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body53>() : json.map((value) => new Body53.fromJson(value)).toList();
  }

  static Map<String, Body53> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body53>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body53.fromJson(value));
    }
    return map;
  }
}

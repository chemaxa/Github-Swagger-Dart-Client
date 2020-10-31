part of swagger.api;

class TeamsteamIdteamsyncgroupmappingsGroups {
  /* ID of the IdP group. */
  String groupId = null;
/* Name of the IdP group. */
  String groupName = null;
/* Description of the IdP group. */
  String groupDescription = null;

  String id = null;

  String name = null;

  String description = null;

  TeamsteamIdteamsyncgroupmappingsGroups();

  @override
  String toString() {
    return 'TeamsteamIdteamsyncgroupmappingsGroups[groupId=$groupId, groupName=$groupName, groupDescription=$groupDescription, id=$id, name=$name, description=$description, ]';
  }

  TeamsteamIdteamsyncgroupmappingsGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    groupId = json['group_id'];
    groupName = json['group_name'];
    groupDescription = json['group_description'];
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'group_id': groupId,
      'group_name': groupName,
      'group_description': groupDescription,
      'id': id,
      'name': name,
      'description': description
     };
  }

  static List<TeamsteamIdteamsyncgroupmappingsGroups> listFromJson(List<dynamic> json) {
    return json == null ? new List<TeamsteamIdteamsyncgroupmappingsGroups>() : json.map((value) => new TeamsteamIdteamsyncgroupmappingsGroups.fromJson(value)).toList();
  }

  static Map<String, TeamsteamIdteamsyncgroupmappingsGroups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TeamsteamIdteamsyncgroupmappingsGroups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TeamsteamIdteamsyncgroupmappingsGroups.fromJson(value));
    }
    return map;
  }
}

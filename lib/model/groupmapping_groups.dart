part of swagger.api;

class GroupmappingGroups {
  /* The ID of the group */
  String groupId = null;
/* The name of the group */
  String groupName = null;
/* a description of the group */
  String groupDescription = null;

  GroupmappingGroups();

  @override
  String toString() {
    return 'GroupmappingGroups[groupId=$groupId, groupName=$groupName, groupDescription=$groupDescription, ]';
  }

  GroupmappingGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    groupId = json['group_id'];
    groupName = json['group_name'];
    groupDescription = json['group_description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'group_id': groupId,
      'group_name': groupName,
      'group_description': groupDescription
     };
  }

  static List<GroupmappingGroups> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupmappingGroups>() : json.map((value) => new GroupmappingGroups.fromJson(value)).toList();
  }

  static Map<String, GroupmappingGroups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupmappingGroups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupmappingGroups.fromJson(value));
    }
    return map;
  }
}

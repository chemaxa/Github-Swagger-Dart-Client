part of swagger.api;

class GroupMapping {
  /* Array of groups to be mapped to this team */
  List<GroupmappingGroups> groups = [];
/* The ID of the group */
  String groupId = null;
/* The name of the group */
  String groupName = null;
/* a description of the group */
  String groupDescription = null;
/* synchronization status for this group mapping */
  String status = null;
/* the time of the last sync for this group-mapping */
  String syncedAt = null;

  GroupMapping();

  @override
  String toString() {
    return 'GroupMapping[groups=$groups, groupId=$groupId, groupName=$groupName, groupDescription=$groupDescription, status=$status, syncedAt=$syncedAt, ]';
  }

  GroupMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    groups = GroupmappingGroups.listFromJson(json['groups']);
    groupId = json['group_id'];
    groupName = json['group_name'];
    groupDescription = json['group_description'];
    status = json['status'];
    syncedAt = json['synced_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'groups': groups,
      'group_id': groupId,
      'group_name': groupName,
      'group_description': groupDescription,
      'status': status,
      'synced_at': syncedAt
     };
  }

  static List<GroupMapping> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupMapping>() : json.map((value) => new GroupMapping.fromJson(value)).toList();
  }

  static Map<String, GroupMapping> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupMapping>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupMapping.fromJson(value));
    }
    return map;
  }
}

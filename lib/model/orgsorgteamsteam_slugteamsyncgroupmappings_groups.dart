part of swagger.api;

class OrgsorgteamsteamSlugteamsyncgroupmappingsGroups {
  /* ID of the IdP group. */
  String groupId = null;
/* Name of the IdP group. */
  String groupName = null;
/* Description of the IdP group. */
  String groupDescription = null;

  OrgsorgteamsteamSlugteamsyncgroupmappingsGroups();

  @override
  String toString() {
    return 'OrgsorgteamsteamSlugteamsyncgroupmappingsGroups[groupId=$groupId, groupName=$groupName, groupDescription=$groupDescription, ]';
  }

  OrgsorgteamsteamSlugteamsyncgroupmappingsGroups.fromJson(Map<String, dynamic> json) {
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

  static List<OrgsorgteamsteamSlugteamsyncgroupmappingsGroups> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrgsorgteamsteamSlugteamsyncgroupmappingsGroups>() : json.map((value) => new OrgsorgteamsteamSlugteamsyncgroupmappingsGroups.fromJson(value)).toList();
  }

  static Map<String, OrgsorgteamsteamSlugteamsyncgroupmappingsGroups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrgsorgteamsteamSlugteamsyncgroupmappingsGroups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrgsorgteamsteamSlugteamsyncgroupmappingsGroups.fromJson(value));
    }
    return map;
  }
}

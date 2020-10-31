part of swagger.api;

class ScimUserList {
  /* SCIM schema used. */
  List<String> schemas = [];

  int totalResults = null;

  int itemsPerPage = null;

  int startIndex = null;

  List<ScimUser> resources = [];

  ScimUserList();

  @override
  String toString() {
    return 'ScimUserList[schemas=$schemas, totalResults=$totalResults, itemsPerPage=$itemsPerPage, startIndex=$startIndex, resources=$resources, ]';
  }

  ScimUserList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    totalResults = json['totalResults'];
    itemsPerPage = json['itemsPerPage'];
    startIndex = json['startIndex'];
    resources = ScimUser.listFromJson(json['Resources']);
  }

  Map<String, dynamic> toJson() {
    return {
      'schemas': schemas,
      'totalResults': totalResults,
      'itemsPerPage': itemsPerPage,
      'startIndex': startIndex,
      'Resources': resources
     };
  }

  static List<ScimUserList> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimUserList>() : json.map((value) => new ScimUserList.fromJson(value)).toList();
  }

  static Map<String, ScimUserList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimUserList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimUserList.fromJson(value));
    }
    return map;
  }
}

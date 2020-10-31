part of swagger.api;

class ScimUserListEnterprise {
  
  List<String> schemas = [];

  double totalResults = null;

  double itemsPerPage = null;

  double startIndex = null;

  List<ScimuserlistenterpriseResources> resources = [];

  ScimUserListEnterprise();

  @override
  String toString() {
    return 'ScimUserListEnterprise[schemas=$schemas, totalResults=$totalResults, itemsPerPage=$itemsPerPage, startIndex=$startIndex, resources=$resources, ]';
  }

  ScimUserListEnterprise.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    totalResults = json['totalResults'];
    itemsPerPage = json['itemsPerPage'];
    startIndex = json['startIndex'];
    resources = ScimuserlistenterpriseResources.listFromJson(json['Resources']);
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

  static List<ScimUserListEnterprise> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimUserListEnterprise>() : json.map((value) => new ScimUserListEnterprise.fromJson(value)).toList();
  }

  static Map<String, ScimUserListEnterprise> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimUserListEnterprise>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimUserListEnterprise.fromJson(value));
    }
    return map;
  }
}

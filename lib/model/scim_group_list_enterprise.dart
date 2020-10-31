part of swagger.api;

class ScimGroupListEnterprise {
  
  List<String> schemas = [];

  double totalResults = null;

  double itemsPerPage = null;

  double startIndex = null;

  List<ScimgrouplistenterpriseResources> resources = [];

  ScimGroupListEnterprise();

  @override
  String toString() {
    return 'ScimGroupListEnterprise[schemas=$schemas, totalResults=$totalResults, itemsPerPage=$itemsPerPage, startIndex=$startIndex, resources=$resources, ]';
  }

  ScimGroupListEnterprise.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemas = (json['schemas'] as List).map((item) => item as String).toList();
    totalResults = json['totalResults'];
    itemsPerPage = json['itemsPerPage'];
    startIndex = json['startIndex'];
    resources = ScimgrouplistenterpriseResources.listFromJson(json['Resources']);
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

  static List<ScimGroupListEnterprise> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScimGroupListEnterprise>() : json.map((value) => new ScimGroupListEnterprise.fromJson(value)).toList();
  }

  static Map<String, ScimGroupListEnterprise> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScimGroupListEnterprise>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScimGroupListEnterprise.fromJson(value));
    }
    return map;
  }
}

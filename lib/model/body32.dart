part of swagger.api;

class Body32 {
  /* An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the `visibility` is set to `selected`. You can add and remove individual repositories using the [Set selected repositories for an organization secret](https://developer.github.com/v3/actions/secrets/#set-selected-repositories-for-an-organization-secret) and [Remove selected repository from an organization secret](https://developer.github.com/v3/actions/secrets/#remove-selected-repository-from-an-organization-secret) endpoints. */
  List<int> selectedRepositoryIds = [];

  Body32();

  @override
  String toString() {
    return 'Body32[selectedRepositoryIds=$selectedRepositoryIds, ]';
  }

  Body32.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    selectedRepositoryIds = (json['selected_repository_ids'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'selected_repository_ids': selectedRepositoryIds
     };
  }

  static List<Body32> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body32>() : json.map((value) => new Body32.fromJson(value)).toList();
  }

  static Map<String, Body32> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body32>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body32.fromJson(value));
    }
    return map;
  }
}

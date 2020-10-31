part of swagger.api;

class BranchprotectionRequiredStatusChecks {
  
  String url = null;

  String enforcementLevel = null;

  List<String> contexts = [];

  String contextsUrl = null;

  BranchprotectionRequiredStatusChecks();

  @override
  String toString() {
    return 'BranchprotectionRequiredStatusChecks[url=$url, enforcementLevel=$enforcementLevel, contexts=$contexts, contextsUrl=$contextsUrl, ]';
  }

  BranchprotectionRequiredStatusChecks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    enforcementLevel = json['enforcement_level'];
    contexts = (json['contexts'] as List).map((item) => item as String).toList();
    contextsUrl = json['contexts_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'enforcement_level': enforcementLevel,
      'contexts': contexts,
      'contexts_url': contextsUrl
     };
  }

  static List<BranchprotectionRequiredStatusChecks> listFromJson(List<dynamic> json) {
    return json == null ? new List<BranchprotectionRequiredStatusChecks>() : json.map((value) => new BranchprotectionRequiredStatusChecks.fromJson(value)).toList();
  }

  static Map<String, BranchprotectionRequiredStatusChecks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BranchprotectionRequiredStatusChecks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BranchprotectionRequiredStatusChecks.fromJson(value));
    }
    return map;
  }
}

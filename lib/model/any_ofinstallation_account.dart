part of swagger.api;

class AnyOfinstallationAccount {
  
  AnyOfinstallationAccount();

  @override
  String toString() {
    return 'AnyOfinstallationAccount[]';
  }

  AnyOfinstallationAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AnyOfinstallationAccount> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnyOfinstallationAccount>() : json.map((value) => new AnyOfinstallationAccount.fromJson(value)).toList();
  }

  static Map<String, AnyOfinstallationAccount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnyOfinstallationAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnyOfinstallationAccount.fromJson(value));
    }
    return map;
  }
}

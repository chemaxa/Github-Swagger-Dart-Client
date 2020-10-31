part of swagger.api;

class ApiOverview {
  
  bool verifiablePasswordAuthentication = null;

  ApioverviewSshKeyFingerprints sshKeyFingerprints = null;

  List<String> hooks = [];

  List<String> web = [];

  List<String> api = [];

  List<String> git = [];

  List<String> pages = [];

  List<String> importer = [];

  String githubServicesSha = null;

  String installedVersion = null;

  ApiOverview();

  @override
  String toString() {
    return 'ApiOverview[verifiablePasswordAuthentication=$verifiablePasswordAuthentication, sshKeyFingerprints=$sshKeyFingerprints, hooks=$hooks, web=$web, api=$api, git=$git, pages=$pages, importer=$importer, githubServicesSha=$githubServicesSha, installedVersion=$installedVersion, ]';
  }

  ApiOverview.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    verifiablePasswordAuthentication = json['verifiable_password_authentication'];
    sshKeyFingerprints = new ApioverviewSshKeyFingerprints.fromJson(json['ssh_key_fingerprints']);
    hooks = (json['hooks'] as List).map((item) => item as String).toList();
    web = (json['web'] as List).map((item) => item as String).toList();
    api = (json['api'] as List).map((item) => item as String).toList();
    git = (json['git'] as List).map((item) => item as String).toList();
    pages = (json['pages'] as List).map((item) => item as String).toList();
    importer = (json['importer'] as List).map((item) => item as String).toList();
    githubServicesSha = json['github_services_sha'];
    installedVersion = json['installed_version'];
  }

  Map<String, dynamic> toJson() {
    return {
      'verifiable_password_authentication': verifiablePasswordAuthentication,
      'ssh_key_fingerprints': sshKeyFingerprints,
      'hooks': hooks,
      'web': web,
      'api': api,
      'git': git,
      'pages': pages,
      'importer': importer,
      'github_services_sha': githubServicesSha,
      'installed_version': installedVersion
     };
  }

  static List<ApiOverview> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiOverview>() : json.map((value) => new ApiOverview.fromJson(value)).toList();
  }

  static Map<String, ApiOverview> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiOverview>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiOverview.fromJson(value));
    }
    return map;
  }
}

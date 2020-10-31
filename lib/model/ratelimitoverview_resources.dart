part of swagger.api;

class RatelimitoverviewResources {
  
  RateLimit core = null;

  RateLimit graphql = null;

  RateLimit search = null;

  RateLimit sourceImport = null;

  RateLimit integrationManifest = null;

  RateLimit codeScanningUpload = null;

  RatelimitoverviewResources();

  @override
  String toString() {
    return 'RatelimitoverviewResources[core=$core, graphql=$graphql, search=$search, sourceImport=$sourceImport, integrationManifest=$integrationManifest, codeScanningUpload=$codeScanningUpload, ]';
  }

  RatelimitoverviewResources.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    core = new RateLimit.fromJson(json['core']);
    graphql = new RateLimit.fromJson(json['graphql']);
    search = new RateLimit.fromJson(json['search']);
    sourceImport = new RateLimit.fromJson(json['source_import']);
    integrationManifest = new RateLimit.fromJson(json['integration_manifest']);
    codeScanningUpload = new RateLimit.fromJson(json['code_scanning_upload']);
  }

  Map<String, dynamic> toJson() {
    return {
      'core': core,
      'graphql': graphql,
      'search': search,
      'source_import': sourceImport,
      'integration_manifest': integrationManifest,
      'code_scanning_upload': codeScanningUpload
     };
  }

  static List<RatelimitoverviewResources> listFromJson(List<dynamic> json) {
    return json == null ? new List<RatelimitoverviewResources>() : json.map((value) => new RatelimitoverviewResources.fromJson(value)).toList();
  }

  static Map<String, RatelimitoverviewResources> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RatelimitoverviewResources>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RatelimitoverviewResources.fromJson(value));
    }
    return map;
  }
}

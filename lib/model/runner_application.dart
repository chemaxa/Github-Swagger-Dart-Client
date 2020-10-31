part of swagger.api;

class RunnerApplication {
  
  String os = null;

  String architecture = null;

  String downloadUrl = null;

  String filename = null;

  RunnerApplication();

  @override
  String toString() {
    return 'RunnerApplication[os=$os, architecture=$architecture, downloadUrl=$downloadUrl, filename=$filename, ]';
  }

  RunnerApplication.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    os = json['os'];
    architecture = json['architecture'];
    downloadUrl = json['download_url'];
    filename = json['filename'];
  }

  Map<String, dynamic> toJson() {
    return {
      'os': os,
      'architecture': architecture,
      'download_url': downloadUrl,
      'filename': filename
     };
  }

  static List<RunnerApplication> listFromJson(List<dynamic> json) {
    return json == null ? new List<RunnerApplication>() : json.map((value) => new RunnerApplication.fromJson(value)).toList();
  }

  static Map<String, RunnerApplication> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RunnerApplication>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RunnerApplication.fromJson(value));
    }
    return map;
  }
}

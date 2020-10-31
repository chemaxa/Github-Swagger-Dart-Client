part of swagger.api;

class ImportProjectChoices {
  
  String vcs = null;

  String tfvcProject = null;

  String humanName = null;

  ImportProjectChoices();

  @override
  String toString() {
    return 'ImportProjectChoices[vcs=$vcs, tfvcProject=$tfvcProject, humanName=$humanName, ]';
  }

  ImportProjectChoices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vcs = json['vcs'];
    tfvcProject = json['tfvc_project'];
    humanName = json['human_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vcs': vcs,
      'tfvc_project': tfvcProject,
      'human_name': humanName
     };
  }

  static List<ImportProjectChoices> listFromJson(List<dynamic> json) {
    return json == null ? new List<ImportProjectChoices>() : json.map((value) => new ImportProjectChoices.fromJson(value)).toList();
  }

  static Map<String, ImportProjectChoices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ImportProjectChoices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ImportProjectChoices.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class RunnerLabels {
  /* Unique identifier of the label. */
  int id = null;
/* Name of the label. */
  String name = null;
/* The type of label. Read-only labels are applied automatically when the runner is configured. */
  String type = null;
  //enum typeEnum {  read-only,  custom,  };

  RunnerLabels();

  @override
  String toString() {
    return 'RunnerLabels[id=$id, name=$name, type=$type, ]';
  }

  RunnerLabels.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type
     };
  }

  static List<RunnerLabels> listFromJson(List<dynamic> json) {
    return json == null ? new List<RunnerLabels>() : json.map((value) => new RunnerLabels.fromJson(value)).toList();
  }

  static Map<String, RunnerLabels> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RunnerLabels>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RunnerLabels.fromJson(value));
    }
    return map;
  }
}

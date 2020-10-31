part of swagger.api;

class Runner {
  /* The id of the runner. */
  int id = null;
/* The name of the runner. */
  String name = null;
/* The Operating System of the runner. */
  String os = null;
/* The status of the runner. */
  String status = null;

  bool busy = null;

  List<RunnerLabels> labels = [];

  Runner();

  @override
  String toString() {
    return 'Runner[id=$id, name=$name, os=$os, status=$status, busy=$busy, labels=$labels, ]';
  }

  Runner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    os = json['os'];
    status = json['status'];
    busy = json['busy'];
    labels = RunnerLabels.listFromJson(json['labels']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'os': os,
      'status': status,
      'busy': busy,
      'labels': labels
     };
  }

  static List<Runner> listFromJson(List<dynamic> json) {
    return json == null ? new List<Runner>() : json.map((value) => new Runner.fromJson(value)).toList();
  }

  static Map<String, Runner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Runner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Runner.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class Body65 {
  /* The git reference for the workflow. The reference can be a branch or tag name. */
  String ref = null;
/* Input keys and values configured in the workflow file. The maximum number of properties is 10. Any default properties configured in the workflow file will be used when `inputs` are omitted. */
  Map<String, String> inputs = {};

  Body65();

  @override
  String toString() {
    return 'Body65[ref=$ref, inputs=$inputs, ]';
  }

  Body65.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ref = json['ref'];
    inputs = json['inputs'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ref': ref,
      'inputs': inputs
     };
  }

  static List<Body65> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body65>() : json.map((value) => new Body65.fromJson(value)).toList();
  }

  static Map<String, Body65> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body65>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body65.fromJson(value));
    }
    return map;
  }
}

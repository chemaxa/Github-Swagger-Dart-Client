part of swagger.api;

class Body21 {
  /* The Markdown text to render in HTML. */
  String text = null;
/* The rendering mode. */
  String mode = ModeEnum.markdown_;
  //enum modeEnum {  markdown,  gfm,  };
/* The repository context to use when creating references in `gfm` mode. */
  String context = null;

  Body21();

  @override
  String toString() {
    return 'Body21[text=$text, mode=$mode, context=$context, ]';
  }

  Body21.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    mode = json['mode'];
    context = json['context'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'mode': mode,
      'context': context
     };
  }

  static List<Body21> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body21>() : json.map((value) => new Body21.fromJson(value)).toList();
  }

  static Map<String, Body21> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body21>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body21.fromJson(value));
    }
    return map;
  }
}

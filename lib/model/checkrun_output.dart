part of swagger.api;

class CheckrunOutput {
  
  String title = null;

  String summary = null;

  String text = null;

  int annotationsCount = null;

  String annotationsUrl = null;

  CheckrunOutput();

  @override
  String toString() {
    return 'CheckrunOutput[title=$title, summary=$summary, text=$text, annotationsCount=$annotationsCount, annotationsUrl=$annotationsUrl, ]';
  }

  CheckrunOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    summary = json['summary'];
    text = json['text'];
    annotationsCount = json['annotations_count'];
    annotationsUrl = json['annotations_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'summary': summary,
      'text': text,
      'annotations_count': annotationsCount,
      'annotations_url': annotationsUrl
     };
  }

  static List<CheckrunOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<CheckrunOutput>() : json.map((value) => new CheckrunOutput.fromJson(value)).toList();
  }

  static Map<String, CheckrunOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckrunOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CheckrunOutput.fromJson(value));
    }
    return map;
  }
}

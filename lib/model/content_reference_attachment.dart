part of swagger.api;

class ContentReferenceAttachment {
  /* The ID of the attachment */
  int id = null;
/* The title of the attachment */
  String title = null;
/* The body of the attachment */
  String body = null;
/* The node_id of the content attachment */
  String nodeId = null;

  ContentReferenceAttachment();

  @override
  String toString() {
    return 'ContentReferenceAttachment[id=$id, title=$title, body=$body, nodeId=$nodeId, ]';
  }

  ContentReferenceAttachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    title = json['title'];
    body = json['body'];
    nodeId = json['node_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'node_id': nodeId
     };
  }

  static List<ContentReferenceAttachment> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentReferenceAttachment>() : json.map((value) => new ContentReferenceAttachment.fromJson(value)).toList();
  }

  static Map<String, ContentReferenceAttachment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentReferenceAttachment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentReferenceAttachment.fromJson(value));
    }
    return map;
  }
}

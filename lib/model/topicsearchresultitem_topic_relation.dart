part of swagger.api;

class TopicsearchresultitemTopicRelation {
  
  int id = null;

  String name = null;

  int topicId = null;

  String relationType = null;

  TopicsearchresultitemTopicRelation();

  @override
  String toString() {
    return 'TopicsearchresultitemTopicRelation[id=$id, name=$name, topicId=$topicId, relationType=$relationType, ]';
  }

  TopicsearchresultitemTopicRelation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    topicId = json['topic_id'];
    relationType = json['relation_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'topic_id': topicId,
      'relation_type': relationType
     };
  }

  static List<TopicsearchresultitemTopicRelation> listFromJson(List<dynamic> json) {
    return json == null ? new List<TopicsearchresultitemTopicRelation>() : json.map((value) => new TopicsearchresultitemTopicRelation.fromJson(value)).toList();
  }

  static Map<String, TopicsearchresultitemTopicRelation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TopicsearchresultitemTopicRelation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TopicsearchresultitemTopicRelation.fromJson(value));
    }
    return map;
  }
}

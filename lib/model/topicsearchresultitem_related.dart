part of swagger.api;

class TopicsearchresultitemRelated {
  
  TopicsearchresultitemTopicRelation topicRelation = null;

  TopicsearchresultitemRelated();

  @override
  String toString() {
    return 'TopicsearchresultitemRelated[topicRelation=$topicRelation, ]';
  }

  TopicsearchresultitemRelated.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    topicRelation = new TopicsearchresultitemTopicRelation.fromJson(json['topic_relation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'topic_relation': topicRelation
     };
  }

  static List<TopicsearchresultitemRelated> listFromJson(List<dynamic> json) {
    return json == null ? new List<TopicsearchresultitemRelated>() : json.map((value) => new TopicsearchresultitemRelated.fromJson(value)).toList();
  }

  static Map<String, TopicsearchresultitemRelated> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TopicsearchresultitemRelated>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TopicsearchresultitemRelated.fromJson(value));
    }
    return map;
  }
}

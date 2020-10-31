part of swagger.api;

class SimpleCommit {
  
  String id = null;

  String treeId = null;

  String message = null;

  DateTime timestamp = null;

  SimplecommitAuthor author = null;

  SimplecommitAuthor committer = null;

  SimpleCommit();

  @override
  String toString() {
    return 'SimpleCommit[id=$id, treeId=$treeId, message=$message, timestamp=$timestamp, author=$author, committer=$committer, ]';
  }

  SimpleCommit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    treeId = json['tree_id'];
    message = json['message'];
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
    author = new SimplecommitAuthor.fromJson(json['author']);
    committer = new SimplecommitAuthor.fromJson(json['committer']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tree_id': treeId,
      'message': message,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String(),
      'author': author,
      'committer': committer
     };
  }

  static List<SimpleCommit> listFromJson(List<dynamic> json) {
    return json == null ? new List<SimpleCommit>() : json.map((value) => new SimpleCommit.fromJson(value)).toList();
  }

  static Map<String, SimpleCommit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SimpleCommit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SimpleCommit.fromJson(value));
    }
    return map;
  }
}

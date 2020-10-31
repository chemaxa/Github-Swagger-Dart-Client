part of swagger.api;

class FilecommitCommitVerification {
  
  bool verified = null;

  String reason = null;

  String signature = null;

  String payload = null;

  FilecommitCommitVerification();

  @override
  String toString() {
    return 'FilecommitCommitVerification[verified=$verified, reason=$reason, signature=$signature, payload=$payload, ]';
  }

  FilecommitCommitVerification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    verified = json['verified'];
    reason = json['reason'];
    signature = json['signature'];
    payload = json['payload'];
  }

  Map<String, dynamic> toJson() {
    return {
      'verified': verified,
      'reason': reason,
      'signature': signature,
      'payload': payload
     };
  }

  static List<FilecommitCommitVerification> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilecommitCommitVerification>() : json.map((value) => new FilecommitCommitVerification.fromJson(value)).toList();
  }

  static Map<String, FilecommitCommitVerification> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilecommitCommitVerification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilecommitCommitVerification.fromJson(value));
    }
    return map;
  }
}

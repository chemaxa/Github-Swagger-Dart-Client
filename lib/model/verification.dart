part of swagger.api;

class Verification {
  
  bool verified = null;

  String reason = null;

  String payload = null;

  String signature = null;

  Verification();

  @override
  String toString() {
    return 'Verification[verified=$verified, reason=$reason, payload=$payload, signature=$signature, ]';
  }

  Verification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    verified = json['verified'];
    reason = json['reason'];
    payload = json['payload'];
    signature = json['signature'];
  }

  Map<String, dynamic> toJson() {
    return {
      'verified': verified,
      'reason': reason,
      'payload': payload,
      'signature': signature
     };
  }

  static List<Verification> listFromJson(List<dynamic> json) {
    return json == null ? new List<Verification>() : json.map((value) => new Verification.fromJson(value)).toList();
  }

  static Map<String, Verification> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Verification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Verification.fromJson(value));
    }
    return map;
  }
}

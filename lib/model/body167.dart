part of swagger.api;

class Body167 {
  /* A GPG key in ASCII-armored format. */
  String armoredPublicKey = null;

  Body167();

  @override
  String toString() {
    return 'Body167[armoredPublicKey=$armoredPublicKey, ]';
  }

  Body167.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    armoredPublicKey = json['armored_public_key'];
  }

  Map<String, dynamic> toJson() {
    return {
      'armored_public_key': armoredPublicKey
     };
  }

  static List<Body167> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body167>() : json.map((value) => new Body167.fromJson(value)).toList();
  }

  static Map<String, Body167> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body167>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body167.fromJson(value));
    }
    return map;
  }
}

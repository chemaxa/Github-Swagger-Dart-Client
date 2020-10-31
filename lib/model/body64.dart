part of swagger.api;

class Body64 {
  /* Value for your secret, encrypted with [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages) using the public key retrieved from the [Get a repository public key](https://developer.github.com/v3/actions/secrets/#get-a-repository-public-key) endpoint. */
  String encryptedValue = null;
/* ID of the key you used to encrypt the secret. */
  String keyId = null;

  Body64();

  @override
  String toString() {
    return 'Body64[encryptedValue=$encryptedValue, keyId=$keyId, ]';
  }

  Body64.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    encryptedValue = json['encrypted_value'];
    keyId = json['key_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'encrypted_value': encryptedValue,
      'key_id': keyId
     };
  }

  static List<Body64> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body64>() : json.map((value) => new Body64.fromJson(value)).toList();
  }

  static Map<String, Body64> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body64>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body64.fromJson(value));
    }
    return map;
  }
}

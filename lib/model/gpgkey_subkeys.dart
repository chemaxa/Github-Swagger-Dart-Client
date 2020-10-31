part of swagger.api;

class GpgkeySubkeys {
  
  int id = null;

  int primaryKeyId = null;

  String keyId = null;

  String publicKey = null;

  List<Object> emails = [];

  List<Object> subkeys = [];

  bool canSign = null;

  bool canEncryptComms = null;

  bool canEncryptStorage = null;

  bool canCertify = null;

  String createdAt = null;

  String expiresAt = null;

  String rawKey = null;

  GpgkeySubkeys();

  @override
  String toString() {
    return 'GpgkeySubkeys[id=$id, primaryKeyId=$primaryKeyId, keyId=$keyId, publicKey=$publicKey, emails=$emails, subkeys=$subkeys, canSign=$canSign, canEncryptComms=$canEncryptComms, canEncryptStorage=$canEncryptStorage, canCertify=$canCertify, createdAt=$createdAt, expiresAt=$expiresAt, rawKey=$rawKey, ]';
  }

  GpgkeySubkeys.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    primaryKeyId = json['primary_key_id'];
    keyId = json['key_id'];
    publicKey = json['public_key'];
    emails = Object.listFromJson(json['emails']);
    subkeys = Object.listFromJson(json['subkeys']);
    canSign = json['can_sign'];
    canEncryptComms = json['can_encrypt_comms'];
    canEncryptStorage = json['can_encrypt_storage'];
    canCertify = json['can_certify'];
    createdAt = json['created_at'];
    expiresAt = json['expires_at'];
    rawKey = json['raw_key'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'primary_key_id': primaryKeyId,
      'key_id': keyId,
      'public_key': publicKey,
      'emails': emails,
      'subkeys': subkeys,
      'can_sign': canSign,
      'can_encrypt_comms': canEncryptComms,
      'can_encrypt_storage': canEncryptStorage,
      'can_certify': canCertify,
      'created_at': createdAt,
      'expires_at': expiresAt,
      'raw_key': rawKey
     };
  }

  static List<GpgkeySubkeys> listFromJson(List<dynamic> json) {
    return json == null ? new List<GpgkeySubkeys>() : json.map((value) => new GpgkeySubkeys.fromJson(value)).toList();
  }

  static Map<String, GpgkeySubkeys> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GpgkeySubkeys>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GpgkeySubkeys.fromJson(value));
    }
    return map;
  }
}

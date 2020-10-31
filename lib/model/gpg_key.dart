part of swagger.api;

class GpgKey {
  
  int id = null;

  int primaryKeyId = null;

  String keyId = null;

  String publicKey = null;

  List<GpgkeyEmails> emails = [];

  List<GpgkeySubkeys> subkeys = [];

  bool canSign = null;

  bool canEncryptComms = null;

  bool canEncryptStorage = null;

  bool canCertify = null;

  DateTime createdAt = null;

  DateTime expiresAt = null;

  String rawKey = null;

  GpgKey();

  @override
  String toString() {
    return 'GpgKey[id=$id, primaryKeyId=$primaryKeyId, keyId=$keyId, publicKey=$publicKey, emails=$emails, subkeys=$subkeys, canSign=$canSign, canEncryptComms=$canEncryptComms, canEncryptStorage=$canEncryptStorage, canCertify=$canCertify, createdAt=$createdAt, expiresAt=$expiresAt, rawKey=$rawKey, ]';
  }

  GpgKey.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    primaryKeyId = json['primary_key_id'];
    keyId = json['key_id'];
    publicKey = json['public_key'];
    emails = GpgkeyEmails.listFromJson(json['emails']);
    subkeys = GpgkeySubkeys.listFromJson(json['subkeys']);
    canSign = json['can_sign'];
    canEncryptComms = json['can_encrypt_comms'];
    canEncryptStorage = json['can_encrypt_storage'];
    canCertify = json['can_certify'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    expiresAt = json['expires_at'] == null ? null : DateTime.parse(json['expires_at']);
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
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'expires_at': expiresAt == null ? '' : expiresAt.toUtc().toIso8601String(),
      'raw_key': rawKey
     };
  }

  static List<GpgKey> listFromJson(List<dynamic> json) {
    return json == null ? new List<GpgKey>() : json.map((value) => new GpgKey.fromJson(value)).toList();
  }

  static Map<String, GpgKey> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GpgKey>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GpgKey.fromJson(value));
    }
    return map;
  }
}

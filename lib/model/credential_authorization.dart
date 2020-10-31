part of swagger.api;

class CredentialAuthorization {
  /* User login that owns the underlying credential. */
  String login = null;
/* Unique identifier for the credential. */
  int credentialId = null;
/* Human-readable description of the credential type. */
  String credentialType = null;
/* Last eight characters of the credential. Only included in responses with credential_type of personal access token. */
  String tokenLastEight = null;
/* Date when the credential was authorized for use. */
  DateTime credentialAuthorizedAt = null;
/* List of oauth scopes the token has been granted. */
  List<String> scopes = [];
/* Unique string to distinguish the credential. Only included in responses with credential_type of SSH Key. */
  String fingerprint = null;
/* Date when the credential was last accessed. May be null if it was never accessed */
  DateTime credentialAccessedAt = null;

  CredentialAuthorization();

  @override
  String toString() {
    return 'CredentialAuthorization[login=$login, credentialId=$credentialId, credentialType=$credentialType, tokenLastEight=$tokenLastEight, credentialAuthorizedAt=$credentialAuthorizedAt, scopes=$scopes, fingerprint=$fingerprint, credentialAccessedAt=$credentialAccessedAt, ]';
  }

  CredentialAuthorization.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    login = json['login'];
    credentialId = json['credential_id'];
    credentialType = json['credential_type'];
    tokenLastEight = json['token_last_eight'];
    credentialAuthorizedAt = json['credential_authorized_at'] == null ? null : DateTime.parse(json['credential_authorized_at']);
    scopes = (json['scopes'] as List).map((item) => item as String).toList();
    fingerprint = json['fingerprint'];
    credentialAccessedAt = json['credential_accessed_at'] == null ? null : DateTime.parse(json['credential_accessed_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'credential_id': credentialId,
      'credential_type': credentialType,
      'token_last_eight': tokenLastEight,
      'credential_authorized_at': credentialAuthorizedAt == null ? '' : credentialAuthorizedAt.toUtc().toIso8601String(),
      'scopes': scopes,
      'fingerprint': fingerprint,
      'credential_accessed_at': credentialAccessedAt == null ? '' : credentialAccessedAt.toUtc().toIso8601String()
     };
  }

  static List<CredentialAuthorization> listFromJson(List<dynamic> json) {
    return json == null ? new List<CredentialAuthorization>() : json.map((value) => new CredentialAuthorization.fromJson(value)).toList();
  }

  static Map<String, CredentialAuthorization> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CredentialAuthorization>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CredentialAuthorization.fromJson(value));
    }
    return map;
  }
}

part of swagger.api;

class ApioverviewSshKeyFingerprints {
  
  String mD5RSA = null;

  String mD5DSA = null;

  String sHA256RSA = null;

  String sHA256DSA = null;

  ApioverviewSshKeyFingerprints();

  @override
  String toString() {
    return 'ApioverviewSshKeyFingerprints[mD5RSA=$mD5RSA, mD5DSA=$mD5DSA, sHA256RSA=$sHA256RSA, sHA256DSA=$sHA256DSA, ]';
  }

  ApioverviewSshKeyFingerprints.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mD5RSA = json['MD5_RSA'];
    mD5DSA = json['MD5_DSA'];
    sHA256RSA = json['SHA256_RSA'];
    sHA256DSA = json['SHA256_DSA'];
  }

  Map<String, dynamic> toJson() {
    return {
      'MD5_RSA': mD5RSA,
      'MD5_DSA': mD5DSA,
      'SHA256_RSA': sHA256RSA,
      'SHA256_DSA': sHA256DSA
     };
  }

  static List<ApioverviewSshKeyFingerprints> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApioverviewSshKeyFingerprints>() : json.map((value) => new ApioverviewSshKeyFingerprints.fromJson(value)).toList();
  }

  static Map<String, ApioverviewSshKeyFingerprints> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApioverviewSshKeyFingerprints>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApioverviewSshKeyFingerprints.fromJson(value));
    }
    return map;
  }
}

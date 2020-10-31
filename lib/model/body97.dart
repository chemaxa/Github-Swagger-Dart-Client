part of swagger.api;

class Body97 {
  /* Can be one of `opt_in` (large files will be stored using Git LFS) or `opt_out` (large files will be removed during the import). */
  String useLfs = null;
  //enum useLfsEnum {  opt_in,  opt_out,  };

  Body97();

  @override
  String toString() {
    return 'Body97[useLfs=$useLfs, ]';
  }

  Body97.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    useLfs = json['use_lfs'];
  }

  Map<String, dynamic> toJson() {
    return {
      'use_lfs': useLfs
     };
  }

  static List<Body97> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body97>() : json.map((value) => new Body97.fromJson(value)).toList();
  }

  static Map<String, Body97> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body97>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body97.fromJson(value));
    }
    return map;
  }
}

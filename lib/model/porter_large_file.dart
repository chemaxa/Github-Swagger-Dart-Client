part of swagger.api;

class PorterLargeFile {
  
  String refName = null;

  String path = null;

  String oid = null;

  int size = null;

  PorterLargeFile();

  @override
  String toString() {
    return 'PorterLargeFile[refName=$refName, path=$path, oid=$oid, size=$size, ]';
  }

  PorterLargeFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    refName = json['ref_name'];
    path = json['path'];
    oid = json['oid'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ref_name': refName,
      'path': path,
      'oid': oid,
      'size': size
     };
  }

  static List<PorterLargeFile> listFromJson(List<dynamic> json) {
    return json == null ? new List<PorterLargeFile>() : json.map((value) => new PorterLargeFile.fromJson(value)).toList();
  }

  static Map<String, PorterLargeFile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PorterLargeFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PorterLargeFile.fromJson(value));
    }
    return map;
  }
}

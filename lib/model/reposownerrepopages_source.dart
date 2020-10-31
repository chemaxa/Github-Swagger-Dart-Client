part of swagger.api;

class ReposownerrepopagesSource {
  /* The repository branch used to publish your site's source files. */
  String branch = null;
/* The repository directory that includes the source files for the Pages site. Allowed paths are `/` or `/docs`. Default: `/` */
  String path = PathEnum.__;
  //enum pathEnum {  /,  /docs,  };

  ReposownerrepopagesSource();

  @override
  String toString() {
    return 'ReposownerrepopagesSource[branch=$branch, path=$path, ]';
  }

  ReposownerrepopagesSource.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    branch = json['branch'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    return {
      'branch': branch,
      'path': path
     };
  }

  static List<ReposownerrepopagesSource> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepopagesSource>() : json.map((value) => new ReposownerrepopagesSource.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepopagesSource> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepopagesSource>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepopagesSource.fromJson(value));
    }
    return map;
  }
}

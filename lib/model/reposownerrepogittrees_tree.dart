part of swagger.api;

class ReposownerrepogittreesTree {
  /* The file referenced in the tree. */
  String path = null;
/* The file mode; one of `100644` for file (blob), `100755` for executable (blob), `040000` for subdirectory (tree), `160000` for submodule (commit), or `120000` for a blob that specifies the path of a symlink. */
  String mode = null;
  //enum modeEnum {  100644,  100755,  040000,  160000,  120000,  };
/* Either `blob`, `tree`, or `commit`. */
  String type = null;
  //enum typeEnum {  blob,  tree,  commit,  };
/* The SHA1 checksum ID of the object in the tree. Also called `tree.sha`. If the value is `null` then the file will be deleted.      **Note:** Use either `tree.sha` or `content` to specify the contents of the entry. Using both `tree.sha` and `content` will return an error. */
  String sha = null;
/* The content you want this file to have. GitHub will write this blob out and use that SHA for this entry. Use either this, or `tree.sha`.      **Note:** Use either `tree.sha` or `content` to specify the contents of the entry. Using both `tree.sha` and `content` will return an error. */
  String content = null;

  ReposownerrepogittreesTree();

  @override
  String toString() {
    return 'ReposownerrepogittreesTree[path=$path, mode=$mode, type=$type, sha=$sha, content=$content, ]';
  }

  ReposownerrepogittreesTree.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path = json['path'];
    mode = json['mode'];
    type = json['type'];
    sha = json['sha'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'mode': mode,
      'type': type,
      'sha': sha,
      'content': content
     };
  }

  static List<ReposownerrepogittreesTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepogittreesTree>() : json.map((value) => new ReposownerrepogittreesTree.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepogittreesTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepogittreesTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepogittreesTree.fromJson(value));
    }
    return map;
  }
}

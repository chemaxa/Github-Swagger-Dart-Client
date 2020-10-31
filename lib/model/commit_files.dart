part of swagger.api;

class CommitFiles {
  
  String filename = null;

  int additions = null;

  int deletions = null;

  int changes = null;

  String status = null;

  String rawUrl = null;

  String blobUrl = null;

  String patch = null;

  String sha = null;

  String contentsUrl = null;

  String previousFilename = null;

  CommitFiles();

  @override
  String toString() {
    return 'CommitFiles[filename=$filename, additions=$additions, deletions=$deletions, changes=$changes, status=$status, rawUrl=$rawUrl, blobUrl=$blobUrl, patch=$patch, sha=$sha, contentsUrl=$contentsUrl, previousFilename=$previousFilename, ]';
  }

  CommitFiles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    filename = json['filename'];
    additions = json['additions'];
    deletions = json['deletions'];
    changes = json['changes'];
    status = json['status'];
    rawUrl = json['raw_url'];
    blobUrl = json['blob_url'];
    patch = json['patch'];
    sha = json['sha'];
    contentsUrl = json['contents_url'];
    previousFilename = json['previous_filename'];
  }

  Map<String, dynamic> toJson() {
    return {
      'filename': filename,
      'additions': additions,
      'deletions': deletions,
      'changes': changes,
      'status': status,
      'raw_url': rawUrl,
      'blob_url': blobUrl,
      'patch': patch,
      'sha': sha,
      'contents_url': contentsUrl,
      'previous_filename': previousFilename
     };
  }

  static List<CommitFiles> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitFiles>() : json.map((value) => new CommitFiles.fromJson(value)).toList();
  }

  static Map<String, CommitFiles> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitFiles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitFiles.fromJson(value));
    }
    return map;
  }
}

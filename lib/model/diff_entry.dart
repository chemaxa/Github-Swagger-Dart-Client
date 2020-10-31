part of swagger.api;

class DiffEntry {
  
  String sha = null;

  String filename = null;

  String status = null;

  int additions = null;

  int deletions = null;

  int changes = null;

  String blobUrl = null;

  String rawUrl = null;

  String contentsUrl = null;

  String patch = null;

  String previousFilename = null;

  DiffEntry();

  @override
  String toString() {
    return 'DiffEntry[sha=$sha, filename=$filename, status=$status, additions=$additions, deletions=$deletions, changes=$changes, blobUrl=$blobUrl, rawUrl=$rawUrl, contentsUrl=$contentsUrl, patch=$patch, previousFilename=$previousFilename, ]';
  }

  DiffEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sha = json['sha'];
    filename = json['filename'];
    status = json['status'];
    additions = json['additions'];
    deletions = json['deletions'];
    changes = json['changes'];
    blobUrl = json['blob_url'];
    rawUrl = json['raw_url'];
    contentsUrl = json['contents_url'];
    patch = json['patch'];
    previousFilename = json['previous_filename'];
  }

  Map<String, dynamic> toJson() {
    return {
      'sha': sha,
      'filename': filename,
      'status': status,
      'additions': additions,
      'deletions': deletions,
      'changes': changes,
      'blob_url': blobUrl,
      'raw_url': rawUrl,
      'contents_url': contentsUrl,
      'patch': patch,
      'previous_filename': previousFilename
     };
  }

  static List<DiffEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<DiffEntry>() : json.map((value) => new DiffEntry.fromJson(value)).toList();
  }

  static Map<String, DiffEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DiffEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DiffEntry.fromJson(value));
    }
    return map;
  }
}

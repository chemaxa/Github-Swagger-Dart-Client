part of swagger.api;

class CommitComparison {
  
  String url = null;

  String htmlUrl = null;

  String permalinkUrl = null;

  String diffUrl = null;

  String patchUrl = null;

  Commit baseCommit = null;

  Commit mergeBaseCommit = null;

  String status = null;
  //enum statusEnum {  diverged,  ahead,  behind,  identical,  };

  int aheadBy = null;

  int behindBy = null;

  int totalCommits = null;

  List<Commit> commits = [];

  List<DiffEntry> files = [];

  CommitComparison();

  @override
  String toString() {
    return 'CommitComparison[url=$url, htmlUrl=$htmlUrl, permalinkUrl=$permalinkUrl, diffUrl=$diffUrl, patchUrl=$patchUrl, baseCommit=$baseCommit, mergeBaseCommit=$mergeBaseCommit, status=$status, aheadBy=$aheadBy, behindBy=$behindBy, totalCommits=$totalCommits, commits=$commits, files=$files, ]';
  }

  CommitComparison.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    htmlUrl = json['html_url'];
    permalinkUrl = json['permalink_url'];
    diffUrl = json['diff_url'];
    patchUrl = json['patch_url'];
    baseCommit = new Commit.fromJson(json['base_commit']);
    mergeBaseCommit = new Commit.fromJson(json['merge_base_commit']);
    status = json['status'];
    aheadBy = json['ahead_by'];
    behindBy = json['behind_by'];
    totalCommits = json['total_commits'];
    commits = Commit.listFromJson(json['commits']);
    files = DiffEntry.listFromJson(json['files']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'html_url': htmlUrl,
      'permalink_url': permalinkUrl,
      'diff_url': diffUrl,
      'patch_url': patchUrl,
      'base_commit': baseCommit,
      'merge_base_commit': mergeBaseCommit,
      'status': status,
      'ahead_by': aheadBy,
      'behind_by': behindBy,
      'total_commits': totalCommits,
      'commits': commits,
      'files': files
     };
  }

  static List<CommitComparison> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitComparison>() : json.map((value) => new CommitComparison.fromJson(value)).toList();
  }

  static Map<String, CommitComparison> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitComparison>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitComparison.fromJson(value));
    }
    return map;
  }
}

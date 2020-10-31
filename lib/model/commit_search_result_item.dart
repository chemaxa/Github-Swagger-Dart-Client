part of swagger.api;

class CommitSearchResultItem {
  
  String url = null;

  String sha = null;

  String htmlUrl = null;

  String commentsUrl = null;

  CommitsearchresultitemCommit commit = null;

  AllOfcommitSearchResultItemAuthor author = null;

  AllOfcommitSearchResultItemCommitter committer = null;

  List<FilecommitCommitParents> parents = [];

  MinimalRepository repository = null;

  int score = null;

  String nodeId = null;

  SearchResultTextMatches textMatches = null;

  CommitSearchResultItem();

  @override
  String toString() {
    return 'CommitSearchResultItem[url=$url, sha=$sha, htmlUrl=$htmlUrl, commentsUrl=$commentsUrl, commit=$commit, author=$author, committer=$committer, parents=$parents, repository=$repository, score=$score, nodeId=$nodeId, textMatches=$textMatches, ]';
  }

  CommitSearchResultItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    url = json['url'];
    sha = json['sha'];
    htmlUrl = json['html_url'];
    commentsUrl = json['comments_url'];
    commit = new CommitsearchresultitemCommit.fromJson(json['commit']);
    author = new AllOfcommitSearchResultItemAuthor.fromJson(json['author']);
    committer = new AllOfcommitSearchResultItemCommitter.fromJson(json['committer']);
    parents = FilecommitCommitParents.listFromJson(json['parents']);
    repository = new MinimalRepository.fromJson(json['repository']);
    score = json['score'];
    nodeId = json['node_id'];
    textMatches = new SearchResultTextMatches.fromJson(json['text_matches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'sha': sha,
      'html_url': htmlUrl,
      'comments_url': commentsUrl,
      'commit': commit,
      'author': author,
      'committer': committer,
      'parents': parents,
      'repository': repository,
      'score': score,
      'node_id': nodeId,
      'text_matches': textMatches
     };
  }

  static List<CommitSearchResultItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommitSearchResultItem>() : json.map((value) => new CommitSearchResultItem.fromJson(value)).toList();
  }

  static Map<String, CommitSearchResultItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommitSearchResultItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommitSearchResultItem.fromJson(value));
    }
    return map;
  }
}

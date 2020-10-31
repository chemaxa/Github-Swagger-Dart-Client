part of swagger.api;

class CodeSearchResultItem {
  
  String name = null;

  String path = null;

  String sha = null;

  String url = null;

  String gitUrl = null;

  String htmlUrl = null;

  MinimalRepository repository = null;

  int score = null;

  int fileSize = null;

  String language = null;

  DateTime lastModifiedAt = null;

  List<String> lineNumbers = [];

  SearchResultTextMatches textMatches = null;

  CodeSearchResultItem();

  @override
  String toString() {
    return 'CodeSearchResultItem[name=$name, path=$path, sha=$sha, url=$url, gitUrl=$gitUrl, htmlUrl=$htmlUrl, repository=$repository, score=$score, fileSize=$fileSize, language=$language, lastModifiedAt=$lastModifiedAt, lineNumbers=$lineNumbers, textMatches=$textMatches, ]';
  }

  CodeSearchResultItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    path = json['path'];
    sha = json['sha'];
    url = json['url'];
    gitUrl = json['git_url'];
    htmlUrl = json['html_url'];
    repository = new MinimalRepository.fromJson(json['repository']);
    score = json['score'];
    fileSize = json['file_size'];
    language = json['language'];
    lastModifiedAt = json['last_modified_at'] == null ? null : DateTime.parse(json['last_modified_at']);
    lineNumbers = (json['line_numbers'] as List).map((item) => item as String).toList();
    textMatches = new SearchResultTextMatches.fromJson(json['text_matches']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'path': path,
      'sha': sha,
      'url': url,
      'git_url': gitUrl,
      'html_url': htmlUrl,
      'repository': repository,
      'score': score,
      'file_size': fileSize,
      'language': language,
      'last_modified_at': lastModifiedAt == null ? '' : lastModifiedAt.toUtc().toIso8601String(),
      'line_numbers': lineNumbers,
      'text_matches': textMatches
     };
  }

  static List<CodeSearchResultItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeSearchResultItem>() : json.map((value) => new CodeSearchResultItem.fromJson(value)).toList();
  }

  static Map<String, CodeSearchResultItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeSearchResultItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeSearchResultItem.fromJson(value));
    }
    return map;
  }
}

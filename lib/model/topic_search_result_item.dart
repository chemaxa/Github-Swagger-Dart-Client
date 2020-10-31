part of swagger.api;

class TopicSearchResultItem {
  
  String name = null;

  String displayName = null;

  String shortDescription = null;

  String description = null;

  String createdBy = null;

  String released = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  bool featured = null;

  bool curated = null;

  int score = null;

  int repositoryCount = null;

  String logoUrl = null;

  SearchResultTextMatches textMatches = null;

  List<TopicsearchresultitemRelated> related = [];

  List<TopicsearchresultitemRelated> aliases = [];

  TopicSearchResultItem();

  @override
  String toString() {
    return 'TopicSearchResultItem[name=$name, displayName=$displayName, shortDescription=$shortDescription, description=$description, createdBy=$createdBy, released=$released, createdAt=$createdAt, updatedAt=$updatedAt, featured=$featured, curated=$curated, score=$score, repositoryCount=$repositoryCount, logoUrl=$logoUrl, textMatches=$textMatches, related=$related, aliases=$aliases, ]';
  }

  TopicSearchResultItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    displayName = json['display_name'];
    shortDescription = json['short_description'];
    description = json['description'];
    createdBy = json['created_by'];
    released = json['released'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    featured = json['featured'];
    curated = json['curated'];
    score = json['score'];
    repositoryCount = json['repository_count'];
    logoUrl = json['logo_url'];
    textMatches = new SearchResultTextMatches.fromJson(json['text_matches']);
    related = TopicsearchresultitemRelated.listFromJson(json['related']);
    aliases = TopicsearchresultitemRelated.listFromJson(json['aliases']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'display_name': displayName,
      'short_description': shortDescription,
      'description': description,
      'created_by': createdBy,
      'released': released,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'featured': featured,
      'curated': curated,
      'score': score,
      'repository_count': repositoryCount,
      'logo_url': logoUrl,
      'text_matches': textMatches,
      'related': related,
      'aliases': aliases
     };
  }

  static List<TopicSearchResultItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<TopicSearchResultItem>() : json.map((value) => new TopicSearchResultItem.fromJson(value)).toList();
  }

  static Map<String, TopicSearchResultItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TopicSearchResultItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TopicSearchResultItem.fromJson(value));
    }
    return map;
  }
}

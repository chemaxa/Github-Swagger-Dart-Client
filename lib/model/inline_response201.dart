part of swagger.api;

class InlineResponse201 {
  /* Unique identifier of the GitHub app */
  int id = null;
/* The slug name of the GitHub app */
  String slug = null;

  String nodeId = null;

  Object owner = null;
/* The name of the GitHub app */
  String name = null;

  String description = null;

  String externalUrl = null;

  String htmlUrl = null;

  DateTime createdAt = null;

  DateTime updatedAt = null;

  IntegrationPermissions permissions = null;
/* The list of events for the GitHub app */
  List<String> events = [];
/* The number of installations associated with the GitHub app */
  int installationsCount = null;

  String clientId = null;

  String clientSecret = null;

  String webhookSecret = null;

  String pem = null;

  InlineResponse201();

  @override
  String toString() {
    return 'InlineResponse201[id=$id, slug=$slug, nodeId=$nodeId, owner=$owner, name=$name, description=$description, externalUrl=$externalUrl, htmlUrl=$htmlUrl, createdAt=$createdAt, updatedAt=$updatedAt, permissions=$permissions, events=$events, installationsCount=$installationsCount, clientId=$clientId, clientSecret=$clientSecret, webhookSecret=$webhookSecret, pem=$pem, ]';
  }

  InlineResponse201.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    slug = json['slug'];
    nodeId = json['node_id'];
    owner = new Object.fromJson(json['owner']);
    name = json['name'];
    description = json['description'];
    externalUrl = json['external_url'];
    htmlUrl = json['html_url'];
    createdAt = json['created_at'] == null ? null : DateTime.parse(json['created_at']);
    updatedAt = json['updated_at'] == null ? null : DateTime.parse(json['updated_at']);
    permissions = new IntegrationPermissions.fromJson(json['permissions']);
    events = (json['events'] as List).map((item) => item as String).toList();
    installationsCount = json['installations_count'];
    clientId = json['client_id'];
    clientSecret = json['client_secret'];
    webhookSecret = json['webhook_secret'];
    pem = json['pem'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'node_id': nodeId,
      'owner': owner,
      'name': name,
      'description': description,
      'external_url': externalUrl,
      'html_url': htmlUrl,
      'created_at': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updated_at': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'permissions': permissions,
      'events': events,
      'installations_count': installationsCount,
      'client_id': clientId,
      'client_secret': clientSecret,
      'webhook_secret': webhookSecret,
      'pem': pem
     };
  }

  static List<InlineResponse201> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse201>() : json.map((value) => new InlineResponse201.fromJson(value)).toList();
  }

  static Map<String, InlineResponse201> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse201>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse201.fromJson(value));
    }
    return map;
  }
}

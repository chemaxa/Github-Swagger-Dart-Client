part of swagger.api;

class Feed {
  
  String timelineUrl = null;

  String userUrl = null;

  String currentUserPublicUrl = null;

  String currentUserUrl = null;

  String currentUserActorUrl = null;

  String currentUserOrganizationUrl = null;

  List<String> currentUserOrganizationUrls = [];

  String securityAdvisoriesUrl = null;

  FeedLinks links = null;

  Feed();

  @override
  String toString() {
    return 'Feed[timelineUrl=$timelineUrl, userUrl=$userUrl, currentUserPublicUrl=$currentUserPublicUrl, currentUserUrl=$currentUserUrl, currentUserActorUrl=$currentUserActorUrl, currentUserOrganizationUrl=$currentUserOrganizationUrl, currentUserOrganizationUrls=$currentUserOrganizationUrls, securityAdvisoriesUrl=$securityAdvisoriesUrl, links=$links, ]';
  }

  Feed.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timelineUrl = json['timeline_url'];
    userUrl = json['user_url'];
    currentUserPublicUrl = json['current_user_public_url'];
    currentUserUrl = json['current_user_url'];
    currentUserActorUrl = json['current_user_actor_url'];
    currentUserOrganizationUrl = json['current_user_organization_url'];
    currentUserOrganizationUrls = (json['current_user_organization_urls'] as List).map((item) => item as String).toList();
    securityAdvisoriesUrl = json['security_advisories_url'];
    links = new FeedLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'timeline_url': timelineUrl,
      'user_url': userUrl,
      'current_user_public_url': currentUserPublicUrl,
      'current_user_url': currentUserUrl,
      'current_user_actor_url': currentUserActorUrl,
      'current_user_organization_url': currentUserOrganizationUrl,
      'current_user_organization_urls': currentUserOrganizationUrls,
      'security_advisories_url': securityAdvisoriesUrl,
      '_links': links
     };
  }

  static List<Feed> listFromJson(List<dynamic> json) {
    return json == null ? new List<Feed>() : json.map((value) => new Feed.fromJson(value)).toList();
  }

  static Map<String, Feed> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Feed>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Feed.fromJson(value));
    }
    return map;
  }
}

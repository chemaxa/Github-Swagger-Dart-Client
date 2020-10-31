part of swagger.api;

class FeedLinks {
  
  LinkWithType timeline = null;

  LinkWithType user = null;

  LinkWithType securityAdvisories = null;

  LinkWithType currentUser = null;

  LinkWithType currentUserPublic = null;

  LinkWithType currentUserActor = null;

  LinkWithType currentUserOrganization = null;

  List<LinkWithType> currentUserOrganizations = [];

  FeedLinks();

  @override
  String toString() {
    return 'FeedLinks[timeline=$timeline, user=$user, securityAdvisories=$securityAdvisories, currentUser=$currentUser, currentUserPublic=$currentUserPublic, currentUserActor=$currentUserActor, currentUserOrganization=$currentUserOrganization, currentUserOrganizations=$currentUserOrganizations, ]';
  }

  FeedLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timeline = new LinkWithType.fromJson(json['timeline']);
    user = new LinkWithType.fromJson(json['user']);
    securityAdvisories = new LinkWithType.fromJson(json['security_advisories']);
    currentUser = new LinkWithType.fromJson(json['current_user']);
    currentUserPublic = new LinkWithType.fromJson(json['current_user_public']);
    currentUserActor = new LinkWithType.fromJson(json['current_user_actor']);
    currentUserOrganization = new LinkWithType.fromJson(json['current_user_organization']);
    currentUserOrganizations = LinkWithType.listFromJson(json['current_user_organizations']);
  }

  Map<String, dynamic> toJson() {
    return {
      'timeline': timeline,
      'user': user,
      'security_advisories': securityAdvisories,
      'current_user': currentUser,
      'current_user_public': currentUserPublic,
      'current_user_actor': currentUserActor,
      'current_user_organization': currentUserOrganization,
      'current_user_organizations': currentUserOrganizations
     };
  }

  static List<FeedLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<FeedLinks>() : json.map((value) => new FeedLinks.fromJson(value)).toList();
  }

  static Map<String, FeedLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FeedLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FeedLinks.fromJson(value));
    }
    return map;
  }
}

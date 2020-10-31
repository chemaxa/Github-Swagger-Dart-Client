part of swagger.api;

class InlineResponse200 {
  
  String currentUserUrl = null;

  String currentUserAuthorizationsHtmlUrl = null;

  String authorizationsUrl = null;

  String codeSearchUrl = null;

  String commitSearchUrl = null;

  String emailsUrl = null;

  String emojisUrl = null;

  String eventsUrl = null;

  String feedsUrl = null;

  String followersUrl = null;

  String followingUrl = null;

  String gistsUrl = null;

  String hubUrl = null;

  String issueSearchUrl = null;

  String issuesUrl = null;

  String keysUrl = null;

  String labelSearchUrl = null;

  String notificationsUrl = null;

  String organizationUrl = null;

  String organizationRepositoriesUrl = null;

  String organizationTeamsUrl = null;

  String publicGistsUrl = null;

  String rateLimitUrl = null;

  String repositoryUrl = null;

  String repositorySearchUrl = null;

  String currentUserRepositoriesUrl = null;

  String starredUrl = null;

  String starredGistsUrl = null;

  String topicSearchUrl = null;

  String userUrl = null;

  String userOrganizationsUrl = null;

  String userRepositoriesUrl = null;

  String userSearchUrl = null;

  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[currentUserUrl=$currentUserUrl, currentUserAuthorizationsHtmlUrl=$currentUserAuthorizationsHtmlUrl, authorizationsUrl=$authorizationsUrl, codeSearchUrl=$codeSearchUrl, commitSearchUrl=$commitSearchUrl, emailsUrl=$emailsUrl, emojisUrl=$emojisUrl, eventsUrl=$eventsUrl, feedsUrl=$feedsUrl, followersUrl=$followersUrl, followingUrl=$followingUrl, gistsUrl=$gistsUrl, hubUrl=$hubUrl, issueSearchUrl=$issueSearchUrl, issuesUrl=$issuesUrl, keysUrl=$keysUrl, labelSearchUrl=$labelSearchUrl, notificationsUrl=$notificationsUrl, organizationUrl=$organizationUrl, organizationRepositoriesUrl=$organizationRepositoriesUrl, organizationTeamsUrl=$organizationTeamsUrl, publicGistsUrl=$publicGistsUrl, rateLimitUrl=$rateLimitUrl, repositoryUrl=$repositoryUrl, repositorySearchUrl=$repositorySearchUrl, currentUserRepositoriesUrl=$currentUserRepositoriesUrl, starredUrl=$starredUrl, starredGistsUrl=$starredGistsUrl, topicSearchUrl=$topicSearchUrl, userUrl=$userUrl, userOrganizationsUrl=$userOrganizationsUrl, userRepositoriesUrl=$userRepositoriesUrl, userSearchUrl=$userSearchUrl, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currentUserUrl = json['current_user_url'];
    currentUserAuthorizationsHtmlUrl = json['current_user_authorizations_html_url'];
    authorizationsUrl = json['authorizations_url'];
    codeSearchUrl = json['code_search_url'];
    commitSearchUrl = json['commit_search_url'];
    emailsUrl = json['emails_url'];
    emojisUrl = json['emojis_url'];
    eventsUrl = json['events_url'];
    feedsUrl = json['feeds_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    hubUrl = json['hub_url'];
    issueSearchUrl = json['issue_search_url'];
    issuesUrl = json['issues_url'];
    keysUrl = json['keys_url'];
    labelSearchUrl = json['label_search_url'];
    notificationsUrl = json['notifications_url'];
    organizationUrl = json['organization_url'];
    organizationRepositoriesUrl = json['organization_repositories_url'];
    organizationTeamsUrl = json['organization_teams_url'];
    publicGistsUrl = json['public_gists_url'];
    rateLimitUrl = json['rate_limit_url'];
    repositoryUrl = json['repository_url'];
    repositorySearchUrl = json['repository_search_url'];
    currentUserRepositoriesUrl = json['current_user_repositories_url'];
    starredUrl = json['starred_url'];
    starredGistsUrl = json['starred_gists_url'];
    topicSearchUrl = json['topic_search_url'];
    userUrl = json['user_url'];
    userOrganizationsUrl = json['user_organizations_url'];
    userRepositoriesUrl = json['user_repositories_url'];
    userSearchUrl = json['user_search_url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'current_user_url': currentUserUrl,
      'current_user_authorizations_html_url': currentUserAuthorizationsHtmlUrl,
      'authorizations_url': authorizationsUrl,
      'code_search_url': codeSearchUrl,
      'commit_search_url': commitSearchUrl,
      'emails_url': emailsUrl,
      'emojis_url': emojisUrl,
      'events_url': eventsUrl,
      'feeds_url': feedsUrl,
      'followers_url': followersUrl,
      'following_url': followingUrl,
      'gists_url': gistsUrl,
      'hub_url': hubUrl,
      'issue_search_url': issueSearchUrl,
      'issues_url': issuesUrl,
      'keys_url': keysUrl,
      'label_search_url': labelSearchUrl,
      'notifications_url': notificationsUrl,
      'organization_url': organizationUrl,
      'organization_repositories_url': organizationRepositoriesUrl,
      'organization_teams_url': organizationTeamsUrl,
      'public_gists_url': publicGistsUrl,
      'rate_limit_url': rateLimitUrl,
      'repository_url': repositoryUrl,
      'repository_search_url': repositorySearchUrl,
      'current_user_repositories_url': currentUserRepositoriesUrl,
      'starred_url': starredUrl,
      'starred_gists_url': starredGistsUrl,
      'topic_search_url': topicSearchUrl,
      'user_url': userUrl,
      'user_organizations_url': userOrganizationsUrl,
      'user_repositories_url': userRepositoriesUrl,
      'user_search_url': userSearchUrl
     };
  }

  static List<InlineResponse200> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse200>() : json.map((value) => new InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse200>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200.fromJson(value));
    }
    return map;
  }
}

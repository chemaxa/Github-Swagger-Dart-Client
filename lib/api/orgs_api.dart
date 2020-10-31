part of swagger.api;



class OrgsApi {
  final ApiClient apiClient;

  OrgsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Block a user from an organization
  ///
  /// 
  Future orgsBlockUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/blocks/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Check if a user is blocked by an organization
  ///
  /// 
  Future orgsCheckBlockedUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/blocks/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Check organization membership for a user
  ///
  /// Check if a user is, publicly or privately, a member of the organization.
  Future orgsCheckMembershipForUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/members/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Check public organization membership for a user
  ///
  /// 
  Future orgsCheckPublicMembershipForUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/public_members/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Convert an organization member to outside collaborator
  ///
  /// When an organization member is converted to an outside collaborator, they&#x27;ll only have access to the repositories that their current team membership allows. The user will no longer be a member of the organization. For more information, see \&quot;[Converting an organization member to an outside collaborator](https://help.github.com/articles/converting-an-organization-member-to-an-outside-collaborator/)\&quot;.
  Future orgsConvertMemberToOutsideCollaborator(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/outside_collaborators/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Create an organization invitation
  ///
  /// Invite people to an organization by using their GitHub user ID or their email address. In order to create invitations in an organization, the authenticated user must be an organization owner.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \&quot;[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\&quot; and \&quot;[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\&quot; for details.
  Future<OrganizationInvitation> orgsCreateInvitation(String org, { Body37 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/invitations".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrganizationInvitation') as OrganizationInvitation ;
    } else {
      return null;
    }
  }
  /// Create an organization webhook
  ///
  /// Here&#x27;s how you can create a hook that posts payloads in JSON format:
  Future<OrgHook> orgsCreateWebhook(String org, { Body33 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/hooks".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrgHook') as OrgHook ;
    } else {
      return null;
    }
  }
  /// Delete an organization webhook
  ///
  /// 
  Future orgsDeleteWebhook(String org, int hookId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(hookId == null) {
     throw new ApiException(400, "Missing required param: hookId");
    }

    // create path and map variables
    String path = "/orgs/{org}/hooks/{hook_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "hook_id" + "}", hookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Get an organization
  ///
  /// To see many of the organization response values, you need to be an authenticated organization owner with the &#x60;admin:org&#x60; scope. When the value of &#x60;two_factor_requirement_enabled&#x60; is &#x60;true&#x60;, the organization requires all members, billing managers, and outside collaborators to enable [two-factor authentication](https://help.github.com/articles/securing-your-account-with-two-factor-authentication-2fa/).  GitHub Apps with the &#x60;Organization plan&#x60; permission can use this endpoint to retrieve information about an organization&#x27;s GitHub plan. See \&quot;[Authenticating with GitHub Apps](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/)\&quot; for details. For an example response, see \&quot;[Response with GitHub plan information](https://developer.github.com/v3/orgs/#response-with-github-plan-information).\&quot;
  Future<OrganizationFull> orgsGet(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrganizationFull') as OrganizationFull ;
    } else {
      return null;
    }
  }
  /// Get an organization membership for the authenticated user
  ///
  /// 
  Future<OrgMembership> orgsGetMembershipForAuthenticatedUser(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/user/memberships/orgs/{org}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrgMembership') as OrgMembership ;
    } else {
      return null;
    }
  }
  /// Get organization membership for a user
  ///
  /// In order to get a user&#x27;s membership with an organization, the authenticated user must be an organization member.
  Future<OrgMembership> orgsGetMembershipForUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrgMembership') as OrgMembership ;
    } else {
      return null;
    }
  }
  /// Get an organization webhook
  ///
  /// Returns a webhook configured in an organization. To get only the webhook &#x60;config&#x60; properties, see \&quot;[Get a webhook configuration for an organization](/rest/reference/orgs#get-a-webhook-configuration-for-an-organization).\&quot;
  Future<OrgHook> orgsGetWebhook(String org, int hookId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(hookId == null) {
     throw new ApiException(400, "Missing required param: hookId");
    }

    // create path and map variables
    String path = "/orgs/{org}/hooks/{hook_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "hook_id" + "}", hookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrgHook') as OrgHook ;
    } else {
      return null;
    }
  }
  /// Get a webhook configuration for an organization
  ///
  /// Returns the webhook configuration for an organization. To get more information about the webhook, including the &#x60;active&#x60; state and &#x60;events&#x60;, use \&quot;[Get an organization webhook ](/rest/reference/orgs#get-an-organization-webhook).\&quot;  Access tokens must have the &#x60;admin:org_hook&#x60; scope, and GitHub Apps must have the &#x60;organization_hooks:read&#x60; permission.
  Future<WebhookConfig> orgsGetWebhookConfigForOrg(String org, int hookId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(hookId == null) {
     throw new ApiException(400, "Missing required param: hookId");
    }

    // create path and map variables
    String path = "/orgs/{org}/hooks/{hook_id}/config".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "hook_id" + "}", hookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'WebhookConfig') as WebhookConfig ;
    } else {
      return null;
    }
  }
  /// List organizations
  ///
  /// Lists all organizations, in the order that they were created on GitHub.  **Note:** Pagination is powered exclusively by the &#x60;since&#x60; parameter. Use the [Link header](https://developer.github.com/v3/#link-header) to get the URL for the next page of organizations.
  Future<List<OrganizationSimple>> orgsList({ int since, int perPage }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/organizations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<OrganizationSimple>') as List).map((item) => item as OrganizationSimple).toList();
    } else {
      return null;
    }
  }
  /// List app installations for an organization
  ///
  /// Lists all GitHub Apps in an organization. The installation count includes all GitHub Apps installed on repositories in the organization. You must be an organization owner with &#x60;admin:read&#x60; scope to use this endpoint.
  Future<InlineResponse20011> orgsListAppInstallations(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/installations".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'InlineResponse20011') as InlineResponse20011 ;
    } else {
      return null;
    }
  }
  /// List users blocked by an organization
  ///
  /// List the users blocked by an organization.
  Future<List<SimpleUser>> orgsListBlockedUsers(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/blocks".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<SimpleUser>') as List).map((item) => item as SimpleUser).toList();
    } else {
      return null;
    }
  }
  /// List organizations for the authenticated user
  ///
  /// List organizations for the authenticated user.  **OAuth scope requirements**  This only lists organizations that your authorization allows you to operate on in some way (e.g., you can list teams with &#x60;read:org&#x60; scope, you can publicize your organization membership with &#x60;user&#x60; scope, etc.). Therefore, this API requires at least &#x60;user&#x60; or &#x60;read:org&#x60; scope. OAuth requests with insufficient scope receive a &#x60;403 Forbidden&#x60; response.
  Future<List<OrganizationSimple>> orgsListForAuthenticatedUser({ int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/user/orgs".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<OrganizationSimple>') as List).map((item) => item as OrganizationSimple).toList();
    } else {
      return null;
    }
  }
  /// List organizations for a user
  ///
  /// List [public organization memberships](https://help.github.com/articles/publicizing-or-concealing-organization-membership) for the specified user.  This method only lists _public_ memberships, regardless of authentication. If you need to fetch all of the organization memberships (public and private) for the authenticated user, use the [List organizations for the authenticated user](https://developer.github.com/v3/orgs/#list-organizations-for-the-authenticated-user) API instead.
  Future<List<OrganizationSimple>> orgsListForUser(String username, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/orgs".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<OrganizationSimple>') as List).map((item) => item as OrganizationSimple).toList();
    } else {
      return null;
    }
  }
  /// List organization invitation teams
  ///
  /// List all teams associated with an invitation. In order to see invitations in an organization, the authenticated user must be an organization owner.
  Future<List<Team>> orgsListInvitationTeams(String org, int invitationId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(invitationId == null) {
     throw new ApiException(400, "Missing required param: invitationId");
    }

    // create path and map variables
    String path = "/orgs/{org}/invitations/{invitation_id}/teams".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "invitation_id" + "}", invitationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Team>') as List).map((item) => item as Team).toList();
    } else {
      return null;
    }
  }
  /// List organization members
  ///
  /// List all users who are members of an organization. If the authenticated user is also a member of this organization then both concealed and public members will be returned.
  Future<List<SimpleUser>> orgsListMembers(String org, { String filter, String role, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/members".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter", filter));
    }
    if(role != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "role", role));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<SimpleUser>') as List).map((item) => item as SimpleUser).toList();
    } else {
      return null;
    }
  }
  /// List organization memberships for the authenticated user
  ///
  /// 
  Future<List<OrgMembership>> orgsListMembershipsForAuthenticatedUser({ String state, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/user/memberships/orgs".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<OrgMembership>') as List).map((item) => item as OrgMembership).toList();
    } else {
      return null;
    }
  }
  /// List outside collaborators for an organization
  ///
  /// List all users who are outside collaborators of an organization.
  Future<List<SimpleUser>> orgsListOutsideCollaborators(String org, { String filter, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/outside_collaborators".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter", filter));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<SimpleUser>') as List).map((item) => item as SimpleUser).toList();
    } else {
      return null;
    }
  }
  /// List pending organization invitations
  ///
  /// The return hash contains a &#x60;role&#x60; field which refers to the Organization Invitation role and will be one of the following values: &#x60;direct_member&#x60;, &#x60;admin&#x60;, &#x60;billing_manager&#x60;, &#x60;hiring_manager&#x60;, or &#x60;reinstate&#x60;. If the invitee is not a GitHub member, the &#x60;login&#x60; field in the return hash will be &#x60;null&#x60;.
  Future<List<OrganizationInvitation>> orgsListPendingInvitations(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/invitations".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<OrganizationInvitation>') as List).map((item) => item as OrganizationInvitation).toList();
    } else {
      return null;
    }
  }
  /// List public organization members
  ///
  /// Members of an organization can choose to have their membership publicized or not.
  Future<List<SimpleUser>> orgsListPublicMembers(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/public_members".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<SimpleUser>') as List).map((item) => item as SimpleUser).toList();
    } else {
      return null;
    }
  }
  /// List SAML SSO authorizations for an organization
  ///
  /// Listing and deleting credential authorizations is available to organizations with GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products).  An authenticated organization owner with the &#x60;read:org&#x60; scope can list all credential authorizations for an organization that uses SAML single sign-on (SSO). The credentials are either personal access tokens or SSH keys that organization members have authorized for the organization. For more information, see [About authentication with SAML single sign-on](https://help.github.com/en/articles/about-authentication-with-saml-single-sign-on).
  Future<List<CredentialAuthorization>> orgsListSamlSsoAuthorizations(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/credential-authorizations".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<CredentialAuthorization>') as List).map((item) => item as CredentialAuthorization).toList();
    } else {
      return null;
    }
  }
  /// List organization webhooks
  ///
  /// 
  Future<List<OrgHook>> orgsListWebhooks(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/hooks".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<OrgHook>') as List).map((item) => item as OrgHook).toList();
    } else {
      return null;
    }
  }
  /// Ping an organization webhook
  ///
  /// This will trigger a [ping event](https://developer.github.com/webhooks/#ping-event) to be sent to the hook.
  Future orgsPingWebhook(String org, int hookId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(hookId == null) {
     throw new ApiException(400, "Missing required param: hookId");
    }

    // create path and map variables
    String path = "/orgs/{org}/hooks/{hook_id}/pings".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "hook_id" + "}", hookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Remove an organization member
  ///
  /// Removing a user from this list will remove them from all teams and they will no longer have any access to the organization&#x27;s repositories.
  Future orgsRemoveMember(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/members/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Remove organization membership for a user
  ///
  /// In order to remove a user&#x27;s membership with an organization, the authenticated user must be an organization owner.  If the specified user is an active member of the organization, this will remove them from the organization. If the specified user has been invited to the organization, this will cancel their invitation. The specified user will receive an email notification in both cases.
  Future orgsRemoveMembershipForUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Remove outside collaborator from an organization
  ///
  /// Removing a user from this list will remove them from all the organization&#x27;s repositories.
  Future orgsRemoveOutsideCollaborator(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/outside_collaborators/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Remove public organization membership for the authenticated user
  ///
  /// 
  Future orgsRemovePublicMembershipForAuthenticatedUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/public_members/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Remove a SAML SSO authorization for an organization
  ///
  /// Listing and deleting credential authorizations is available to organizations with GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products).  An authenticated organization owner with the &#x60;admin:org&#x60; scope can remove a credential authorization for an organization that uses SAML SSO. Once you remove someone&#x27;s credential authorization, they will need to create a new personal access token or SSH key and authorize it for the organization they want to access.
  Future orgsRemoveSamlSsoAuthorization(String org, int credentialId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(credentialId == null) {
     throw new ApiException(400, "Missing required param: credentialId");
    }

    // create path and map variables
    String path = "/orgs/{org}/credential-authorizations/{credential_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "credential_id" + "}", credentialId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Set organization membership for a user
  ///
  /// Only authenticated organization owners can add a member to the organization or update the member&#x27;s role.  *   If the authenticated user is _adding_ a member to the organization, the invited user will receive an email inviting them to the organization. The user&#x27;s [membership status](https://developer.github.com/v3/orgs/members/#get-organization-membership-for-a-user) will be &#x60;pending&#x60; until they accept the invitation.      *   Authenticated users can _update_ a user&#x27;s membership by passing the &#x60;role&#x60; parameter. If the authenticated user changes a member&#x27;s role to &#x60;admin&#x60;, the affected user will receive an email notifying them that they&#x27;ve been made an organization owner. If the authenticated user changes an owner&#x27;s role to &#x60;member&#x60;, no email will be sent.  **Rate limits**  To prevent abuse, the authenticated user is limited to 50 organization invitations per 24 hour period. If the organization is more than one month old or on a paid plan, the limit is 500 invitations per 24 hour period.
  Future<OrgMembership> orgsSetMembershipForUser(String org, String username, { Body38 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrgMembership') as OrgMembership ;
    } else {
      return null;
    }
  }
  /// Set public organization membership for the authenticated user
  ///
  /// The user can publicize their own membership. (A user cannot publicize the membership for another user.)  Note that you&#x27;ll need to set &#x60;Content-Length&#x60; to zero when calling out to this endpoint. For more information, see \&quot;[HTTP verbs](https://developer.github.com/v3/#http-verbs).\&quot;
  Future orgsSetPublicMembershipForAuthenticatedUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/public_members/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Unblock a user from an organization
  ///
  /// 
  Future orgsUnblockUser(String org, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/blocks/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Update an organization
  ///
  /// **Parameter Deprecation Notice:** GitHub will replace and discontinue &#x60;members_allowed_repository_creation_type&#x60; in favor of more granular permissions. The new input parameters are &#x60;members_can_create_public_repositories&#x60;, &#x60;members_can_create_private_repositories&#x60; for all organizations and &#x60;members_can_create_internal_repositories&#x60; for organizations associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+. For more information, see the [blog post](https://developer.github.com/changes/2019-12-03-internal-visibility-changes).  Enables an authenticated organization owner with the &#x60;admin:org&#x60; scope to update the organization&#x27;s profile and member privileges.
  Future<OrganizationFull> orgsUpdate(String org, { Body24 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrganizationFull') as OrganizationFull ;
    } else {
      return null;
    }
  }
  /// Update an organization membership for the authenticated user
  ///
  /// 
  Future<OrgMembership> orgsUpdateMembershipForAuthenticatedUser(String org, { Body169 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/user/memberships/orgs/{org}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrgMembership') as OrgMembership ;
    } else {
      return null;
    }
  }
  /// Update an organization webhook
  ///
  /// Updates a webhook configured in an organization. When you update a webhook, the &#x60;secret&#x60; will be overwritten. If you previously had a &#x60;secret&#x60; set, you must provide the same &#x60;secret&#x60; or set a new &#x60;secret&#x60; or the secret will be removed. If you are only updating individual webhook &#x60;config&#x60; properties, use \&quot;[Update a webhook configuration for an organization](/rest/reference/orgs#update-a-webhook-configuration-for-an-organization).\&quot;
  Future<OrgHook> orgsUpdateWebhook(String org, int hookId, { Body34 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(hookId == null) {
     throw new ApiException(400, "Missing required param: hookId");
    }

    // create path and map variables
    String path = "/orgs/{org}/hooks/{hook_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "hook_id" + "}", hookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'OrgHook') as OrgHook ;
    } else {
      return null;
    }
  }
  /// Update a webhook configuration for an organization
  ///
  /// Updates the webhook configuration for an organization. To update more information about the webhook, including the &#x60;active&#x60; state and &#x60;events&#x60;, use \&quot;[Update an organization webhook ](/rest/reference/orgs#update-an-organization-webhook).\&quot;  Access tokens must have the &#x60;admin:org_hook&#x60; scope, and GitHub Apps must have the &#x60;organization_hooks:write&#x60; permission.
  Future<WebhookConfig> orgsUpdateWebhookConfigForOrg(String org, int hookId, { Body35 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(hookId == null) {
     throw new ApiException(400, "Missing required param: hookId");
    }

    // create path and map variables
    String path = "/orgs/{org}/hooks/{hook_id}/config".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "hook_id" + "}", hookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'WebhookConfig') as WebhookConfig ;
    } else {
      return null;
    }
  }
}

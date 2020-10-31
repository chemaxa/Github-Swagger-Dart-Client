part of swagger.api;



class AppsApi {
  final ApiClient apiClient;

  AppsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a repository to an app installation
  ///
  /// Add a single repository to an installation. The authenticated user must have admin access to the repository.  You must use a personal access token (which you can create via the [command line](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) or the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/#create-a-new-authorization)) or [Basic Authentication](https://developer.github.com/v3/auth/#basic-authentication) to access this endpoint.
  Future appsAddRepoToInstallation(int installationId, int repositoryId) async {
    Object postBody = null;

    // verify required params are set
    if(installationId == null) {
     throw new ApiException(400, "Missing required param: installationId");
    }
    if(repositoryId == null) {
     throw new ApiException(400, "Missing required param: repositoryId");
    }

    // create path and map variables
    String path = "/user/installations/{installation_id}/repositories/{repository_id}".replaceAll("{format}","json").replaceAll("{" + "installation_id" + "}", installationId.toString()).replaceAll("{" + "repository_id" + "}", repositoryId.toString());

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
  /// Check an authorization
  ///
  /// **Deprecation Notice:** GitHub will replace and discontinue OAuth endpoints containing &#x60;access_token&#x60; in the path parameter. We are introducing new endpoints that allow you to securely manage tokens for OAuth Apps by using &#x60;access_token&#x60; as an input parameter. The OAuth Application API will be removed on May 5, 2021. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth applications can use a special API method for checking OAuth token validity without exceeding the normal rate limits for failed login attempts. Authentication works differently with this particular endpoint. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application&#x27;s &#x60;client_id&#x60; and &#x60;client_secret&#x60; as the username and password. Invalid tokens will return &#x60;404 NOT FOUND&#x60;.
  @deprecated
  Future<InlineResponse2001> appsCheckAuthorization(String clientId, String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }
    if(accessToken == null) {
     throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/applications/{client_id}/tokens/{access_token}".replaceAll("{format}","json").replaceAll("{" + "client_id" + "}", clientId.toString()).replaceAll("{" + "access_token" + "}", accessToken.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2001') as InlineResponse2001 ;
    } else {
      return null;
    }
  }
  /// Check a token
  ///
  /// OAuth applications can use a special API method for checking OAuth token validity without exceeding the normal rate limits for failed login attempts. Authentication works differently with this particular endpoint. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) to use this endpoint, where the username is the OAuth application &#x60;client_id&#x60; and the password is its &#x60;client_secret&#x60;. Invalid tokens will return &#x60;404 NOT FOUND&#x60;.
  Future<Authorization> appsCheckToken(String clientId, { Body3 body }) async {
    Object postBody = body;

    // verify required params are set
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }

    // create path and map variables
    String path = "/applications/{client_id}/token".replaceAll("{format}","json").replaceAll("{" + "client_id" + "}", clientId.toString());

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
          apiClient.deserialize(response.body, 'Authorization') as Authorization ;
    } else {
      return null;
    }
  }
  /// Create a content attachment
  ///
  /// Creates an attachment under a content reference URL in the body or comment of an issue or pull request. Use the &#x60;id&#x60; of the content reference from the [&#x60;content_reference&#x60; event](https://developer.github.com/webhooks/event-payloads/#content_reference) to create an attachment.  The app must create a content attachment within six hours of the content reference URL being posted. See \&quot;[Using content attachments](https://developer.github.com/apps/using-content-attachments/)\&quot; for details about content attachments.  You must use an [installation access token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.
  Future<ContentReferenceAttachment> appsCreateContentAttachment(int contentReferenceId, { Body10 body }) async {
    Object postBody = body;

    // verify required params are set
    if(contentReferenceId == null) {
     throw new ApiException(400, "Missing required param: contentReferenceId");
    }

    // create path and map variables
    String path = "/content_references/{content_reference_id}/attachments".replaceAll("{format}","json").replaceAll("{" + "content_reference_id" + "}", contentReferenceId.toString());

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
          apiClient.deserialize(response.body, 'ContentReferenceAttachment') as ContentReferenceAttachment ;
    } else {
      return null;
    }
  }
  /// Create a GitHub App from a manifest
  ///
  /// Use this endpoint to complete the handshake necessary when implementing the [GitHub App Manifest flow](https://developer.github.com/apps/building-github-apps/creating-github-apps-from-a-manifest/). When you create a GitHub App with the manifest flow, you receive a temporary &#x60;code&#x60; used to retrieve the GitHub App&#x27;s &#x60;id&#x60;, &#x60;pem&#x60; (private key), and &#x60;webhook_secret&#x60;.
  Future<InlineResponse201> appsCreateFromManifest(String code) async {
    Object postBody = null;

    // verify required params are set
    if(code == null) {
     throw new ApiException(400, "Missing required param: code");
    }

    // create path and map variables
    String path = "/app-manifests/{code}/conversions".replaceAll("{format}","json").replaceAll("{" + "code" + "}", code.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse201') as InlineResponse201 ;
    } else {
      return null;
    }
  }
  /// Create an installation access token for an app
  ///
  /// Creates an installation access token that enables a GitHub App to make authenticated API requests for the app&#x27;s installation on an organization or individual account. Installation tokens expire one hour from the time you create them. Using an expired token produces a status code of &#x60;401 - Unauthorized&#x60;, and requires creating a new installation token. By default the installation token has access to all repositories that the installation can access. To restrict the access to specific repositories, you can provide the &#x60;repository_ids&#x60; when creating the token. When you omit &#x60;repository_ids&#x60;, the response does not contain the &#x60;repositories&#x60; key.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future<InstallationToken> appsCreateInstallationAccessToken(int installationId, { Body1 body }) async {
    Object postBody = body;

    // verify required params are set
    if(installationId == null) {
     throw new ApiException(400, "Missing required param: installationId");
    }

    // create path and map variables
    String path = "/app/installations/{installation_id}/access_tokens".replaceAll("{format}","json").replaceAll("{" + "installation_id" + "}", installationId.toString());

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
          apiClient.deserialize(response.body, 'InstallationToken') as InstallationToken ;
    } else {
      return null;
    }
  }
  /// Delete an app authorization
  ///
  /// OAuth application owners can revoke a grant for their OAuth application and a specific user. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application&#x27;s &#x60;client_id&#x60; and &#x60;client_secret&#x60; as the username and password. You must also provide a valid OAuth &#x60;access_token&#x60; as an input parameter and the grant for the token&#x27;s owner will be deleted. Deleting an OAuth application&#x27;s grant will also delete all OAuth tokens associated with the application for the user. Once deleted, the application will have no access to the user&#x27;s account and will no longer be listed on [the application authorizations settings screen within GitHub](https://github.com/settings/applications#authorized).
  Future appsDeleteAuthorization(String clientId, { Body2 body }) async {
    Object postBody = body;

    // verify required params are set
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }

    // create path and map variables
    String path = "/applications/{client_id}/grant".replaceAll("{format}","json").replaceAll("{" + "client_id" + "}", clientId.toString());

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
  /// Delete an installation for the authenticated app
  ///
  /// Uninstalls a GitHub App on a user, organization, or business account. If you prefer to temporarily suspend an app&#x27;s access to your account&#x27;s resources, then we recommend the \&quot;[Suspend an app installation](https://developer.github.com/v3/apps/#suspend-an-app-installation)\&quot; endpoint.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future appsDeleteInstallation(int installationId) async {
    Object postBody = null;

    // verify required params are set
    if(installationId == null) {
     throw new ApiException(400, "Missing required param: installationId");
    }

    // create path and map variables
    String path = "/app/installations/{installation_id}".replaceAll("{format}","json").replaceAll("{" + "installation_id" + "}", installationId.toString());

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
  /// Delete an app token
  ///
  /// OAuth application owners can revoke a single token for an OAuth application. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application&#x27;s &#x60;client_id&#x60; and &#x60;client_secret&#x60; as the username and password.
  Future appsDeleteToken(String clientId, { Body4 body }) async {
    Object postBody = body;

    // verify required params are set
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }

    // create path and map variables
    String path = "/applications/{client_id}/token".replaceAll("{format}","json").replaceAll("{" + "client_id" + "}", clientId.toString());

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
  /// Get the authenticated app
  ///
  /// Returns the GitHub App associated with the authentication credentials used. To see how many app installations are associated with this GitHub App, see the &#x60;installations_count&#x60; in the response. For more details about your app&#x27;s installations, see the \&quot;[List installations for the authenticated app](https://developer.github.com/v3/apps/#list-installations-for-the-authenticated-app)\&quot; endpoint.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future<Integration> appsGetAuthenticated() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/app".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Integration') as Integration ;
    } else {
      return null;
    }
  }
  /// Get an app
  ///
  /// **Note**: The &#x60;:app_slug&#x60; is just the URL-friendly name of your GitHub App. You can find this on the settings page for your GitHub App (e.g., &#x60;https://github.com/settings/apps/:app_slug&#x60;).  If the GitHub App you specify is public, you can access this endpoint without authenticating. If the GitHub App you specify is private, you must authenticate with a [personal access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) or an [installation access token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.
  Future<Integration> appsGetBySlug(String appSlug) async {
    Object postBody = null;

    // verify required params are set
    if(appSlug == null) {
     throw new ApiException(400, "Missing required param: appSlug");
    }

    // create path and map variables
    String path = "/apps/{app_slug}".replaceAll("{format}","json").replaceAll("{" + "app_slug" + "}", appSlug.toString());

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
          apiClient.deserialize(response.body, 'Integration') as Integration ;
    } else {
      return null;
    }
  }
  /// Get an installation for the authenticated app
  ///
  /// Enables an authenticated GitHub App to find an installation&#x27;s information using the installation id. The installation&#x27;s account type (&#x60;target_type&#x60;) will be either an organization or a user account, depending which account the repository belongs to.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future<Installation> appsGetInstallation(int installationId) async {
    Object postBody = null;

    // verify required params are set
    if(installationId == null) {
     throw new ApiException(400, "Missing required param: installationId");
    }

    // create path and map variables
    String path = "/app/installations/{installation_id}".replaceAll("{format}","json").replaceAll("{" + "installation_id" + "}", installationId.toString());

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
          apiClient.deserialize(response.body, 'Installation') as Installation ;
    } else {
      return null;
    }
  }
  /// Get an organization installation for the authenticated app
  ///
  /// Enables an authenticated GitHub App to find the organization&#x27;s installation information.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future<Installation> appsGetOrgInstallation(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/installation".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'Installation') as Installation ;
    } else {
      return null;
    }
  }
  /// Get a repository installation for the authenticated app
  ///
  /// Enables an authenticated GitHub App to find the repository&#x27;s installation information. The installation&#x27;s account type will be either an organization or a user account, depending which account the repository belongs to.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future<Installation> appsGetRepoInstallation(String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/installation".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'Installation') as Installation ;
    } else {
      return null;
    }
  }
  /// Get a subscription plan for an account
  ///
  /// Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won&#x27;t be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.
  Future<MarketplacePurchase> appsGetSubscriptionPlanForAccount(int accountId) async {
    Object postBody = null;

    // verify required params are set
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }

    // create path and map variables
    String path = "/marketplace_listing/accounts/{account_id}".replaceAll("{format}","json").replaceAll("{" + "account_id" + "}", accountId.toString());

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
          apiClient.deserialize(response.body, 'MarketplacePurchase') as MarketplacePurchase ;
    } else {
      return null;
    }
  }
  /// Get a subscription plan for an account (stubbed)
  ///
  /// Shows whether the user or organization account actively subscribes to a plan listed by the authenticated GitHub App. When someone submits a plan change that won&#x27;t be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.
  Future<MarketplacePurchase> appsGetSubscriptionPlanForAccountStubbed(int accountId) async {
    Object postBody = null;

    // verify required params are set
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }

    // create path and map variables
    String path = "/marketplace_listing/stubbed/accounts/{account_id}".replaceAll("{format}","json").replaceAll("{" + "account_id" + "}", accountId.toString());

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
          apiClient.deserialize(response.body, 'MarketplacePurchase') as MarketplacePurchase ;
    } else {
      return null;
    }
  }
  /// Get a user installation for the authenticated app
  ///
  /// Enables an authenticated GitHub App to find the user’s installation information.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future<Installation> appsGetUserInstallation(String username) async {
    Object postBody = null;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/installation".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'Installation') as Installation ;
    } else {
      return null;
    }
  }
  /// Get a webhook configuration for an app
  ///
  /// Returns the webhook configuration for a GitHub App. For more information about configuring a webhook for your app, see \&quot;[Creating a GitHub App](/developers/apps/creating-a-github-app).\&quot;  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future<WebhookConfig> appsGetWebhookConfigForApp() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/app/hook/config".replaceAll("{format}","json");

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
  /// List accounts for a plan
  ///
  /// Returns user and organization accounts associated with the specified plan, including free plans. For per-seat pricing, you see the list of accounts that have purchased the plan, including the number of seats purchased. When someone submits a plan change that won&#x27;t be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.
  Future<List<MarketplacePurchase>> appsListAccountsForPlan(int planId, { String sort, String direction, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(planId == null) {
     throw new ApiException(400, "Missing required param: planId");
    }

    // create path and map variables
    String path = "/marketplace_listing/plans/{plan_id}/accounts".replaceAll("{format}","json").replaceAll("{" + "plan_id" + "}", planId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    if(direction != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "direction", direction));
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
        (apiClient.deserialize(response.body, 'List<MarketplacePurchase>') as List).map((item) => item as MarketplacePurchase).toList();
    } else {
      return null;
    }
  }
  /// List accounts for a plan (stubbed)
  ///
  /// Returns repository and organization accounts associated with the specified plan, including free plans. For per-seat pricing, you see the list of accounts that have purchased the plan, including the number of seats purchased. When someone submits a plan change that won&#x27;t be processed until the end of their billing cycle, you will also see the upcoming pending change.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.
  Future<List<MarketplacePurchase>> appsListAccountsForPlanStubbed(int planId, { String sort, String direction, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(planId == null) {
     throw new ApiException(400, "Missing required param: planId");
    }

    // create path and map variables
    String path = "/marketplace_listing/stubbed/plans/{plan_id}/accounts".replaceAll("{format}","json").replaceAll("{" + "plan_id" + "}", planId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    if(direction != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "direction", direction));
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
        (apiClient.deserialize(response.body, 'List<MarketplacePurchase>') as List).map((item) => item as MarketplacePurchase).toList();
    } else {
      return null;
    }
  }
  /// List repositories accessible to the user access token
  ///
  /// List repositories that the authenticated user has explicit permission (&#x60;:read&#x60;, &#x60;:write&#x60;, or &#x60;:admin&#x60;) to access for an installation.  The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.  You must use a [user-to-server OAuth access token](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint.  The access the user has to each repository is included in the hash under the &#x60;permissions&#x60; key.
  Future<InlineResponse20028> appsListInstallationReposForAuthenticatedUser(int installationId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(installationId == null) {
     throw new ApiException(400, "Missing required param: installationId");
    }

    // create path and map variables
    String path = "/user/installations/{installation_id}/repositories".replaceAll("{format}","json").replaceAll("{" + "installation_id" + "}", installationId.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse20028') as InlineResponse20028 ;
    } else {
      return null;
    }
  }
  /// List installations for the authenticated app
  ///
  /// You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.  The permissions the installation has are included under the &#x60;permissions&#x60; key.
  Future<List<Installation>> appsListInstallations({ int perPage, int page, String since, String outdated }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/app/installations".replaceAll("{format}","json");

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
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if(outdated != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "outdated", outdated));
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
        (apiClient.deserialize(response.body, 'List<Installation>') as List).map((item) => item as Installation).toList();
    } else {
      return null;
    }
  }
  /// List app installations accessible to the user access token
  ///
  /// Lists installations of your GitHub App that the authenticated user has explicit permission (&#x60;:read&#x60;, &#x60;:write&#x60;, or &#x60;:admin&#x60;) to access.  You must use a [user-to-server OAuth access token](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint.  The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.  You can find the permissions for the installation under the &#x60;permissions&#x60; key.
  Future<InlineResponse20011> appsListInstallationsForAuthenticatedUser({ int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/user/installations".replaceAll("{format}","json");

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
  /// List plans
  ///
  /// Lists all plans that are part of your GitHub Marketplace listing.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.
  Future<List<MarketplaceListingPlan>> appsListPlans({ int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/marketplace_listing/plans".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<MarketplaceListingPlan>') as List).map((item) => item as MarketplaceListingPlan).toList();
    } else {
      return null;
    }
  }
  /// List plans (stubbed)
  ///
  /// Lists all plans that are part of your GitHub Marketplace listing.  GitHub Apps must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint. OAuth Apps must use [basic authentication](https://developer.github.com/v3/auth/#basic-authentication) with their client ID and client secret to access this endpoint.
  Future<List<MarketplaceListingPlan>> appsListPlansStubbed({ int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/marketplace_listing/stubbed/plans".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<MarketplaceListingPlan>') as List).map((item) => item as MarketplaceListingPlan).toList();
    } else {
      return null;
    }
  }
  /// List repositories accessible to the app installation
  ///
  /// List repositories that an app installation can access.  You must use an [installation access token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.
  Future<InlineResponse2005> appsListReposAccessibleToInstallation({ int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/installation/repositories".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'InlineResponse2005') as InlineResponse2005 ;
    } else {
      return null;
    }
  }
  /// List subscriptions for the authenticated user
  ///
  /// Lists the active subscriptions for the authenticated user. You must use a [user-to-server OAuth access token](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint. . OAuth Apps must authenticate using an [OAuth token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/).
  Future<List<UserMarketplacePurchase>> appsListSubscriptionsForAuthenticatedUser({ int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/user/marketplace_purchases".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<UserMarketplacePurchase>') as List).map((item) => item as UserMarketplacePurchase).toList();
    } else {
      return null;
    }
  }
  /// List subscriptions for the authenticated user (stubbed)
  ///
  /// Lists the active subscriptions for the authenticated user. You must use a [user-to-server OAuth access token](https://developer.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint. . OAuth Apps must authenticate using an [OAuth token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/).
  Future<List<UserMarketplacePurchase>> appsListSubscriptionsForAuthenticatedUserStubbed({ int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/user/marketplace_purchases/stubbed".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<UserMarketplacePurchase>') as List).map((item) => item as UserMarketplacePurchase).toList();
    } else {
      return null;
    }
  }
  /// Remove a repository from an app installation
  ///
  /// Remove a single repository from an installation. The authenticated user must have admin access to the repository.  You must use a personal access token (which you can create via the [command line](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) or the [OAuth Authorizations API](https://developer.github.com/v3/oauth_authorizations/#create-a-new-authorization)) or [Basic Authentication](https://developer.github.com/v3/auth/#basic-authentication) to access this endpoint.
  Future appsRemoveRepoFromInstallation(int installationId, int repositoryId) async {
    Object postBody = null;

    // verify required params are set
    if(installationId == null) {
     throw new ApiException(400, "Missing required param: installationId");
    }
    if(repositoryId == null) {
     throw new ApiException(400, "Missing required param: repositoryId");
    }

    // create path and map variables
    String path = "/user/installations/{installation_id}/repositories/{repository_id}".replaceAll("{format}","json").replaceAll("{" + "installation_id" + "}", installationId.toString()).replaceAll("{" + "repository_id" + "}", repositoryId.toString());

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
  /// Reset an authorization
  ///
  /// **Deprecation Notice:** GitHub will replace and discontinue OAuth endpoints containing &#x60;access_token&#x60; in the path parameter. We are introducing new endpoints that allow you to securely manage tokens for OAuth Apps by using &#x60;access_token&#x60; as an input parameter. The OAuth Application API will be removed on May 5, 2021. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth applications can use this API method to reset a valid OAuth token without end-user involvement. Applications must save the \&quot;token\&quot; property in the response because changes take effect immediately. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application&#x27;s &#x60;client_id&#x60; and &#x60;client_secret&#x60; as the username and password. Invalid tokens will return &#x60;404 NOT FOUND&#x60;.
  @deprecated
  Future<Authorization> appsResetAuthorization(String clientId, String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }
    if(accessToken == null) {
     throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/applications/{client_id}/tokens/{access_token}".replaceAll("{format}","json").replaceAll("{" + "client_id" + "}", clientId.toString()).replaceAll("{" + "access_token" + "}", accessToken.toString());

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
          apiClient.deserialize(response.body, 'Authorization') as Authorization ;
    } else {
      return null;
    }
  }
  /// Reset a token
  ///
  /// OAuth applications can use this API method to reset a valid OAuth token without end-user involvement. Applications must save the \&quot;token\&quot; property in the response because changes take effect immediately. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application&#x27;s &#x60;client_id&#x60; and &#x60;client_secret&#x60; as the username and password. Invalid tokens will return &#x60;404 NOT FOUND&#x60;.
  Future<Authorization> appsResetToken(String clientId, { Body5 body }) async {
    Object postBody = body;

    // verify required params are set
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }

    // create path and map variables
    String path = "/applications/{client_id}/token".replaceAll("{format}","json").replaceAll("{" + "client_id" + "}", clientId.toString());

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
          apiClient.deserialize(response.body, 'Authorization') as Authorization ;
    } else {
      return null;
    }
  }
  /// Revoke an authorization for an application
  ///
  /// **Deprecation Notice:** GitHub will replace and discontinue OAuth endpoints containing &#x60;access_token&#x60; in the path parameter. We are introducing new endpoints that allow you to securely manage tokens for OAuth Apps by using &#x60;access_token&#x60; as an input parameter. The OAuth Application API will be removed on May 5, 2021. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth application owners can revoke a single token for an OAuth application. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application&#x27;s &#x60;client_id&#x60; and &#x60;client_secret&#x60; as the username and password.
  @deprecated
  Future appsRevokeAuthorizationForApplication(String clientId, String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }
    if(accessToken == null) {
     throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/applications/{client_id}/tokens/{access_token}".replaceAll("{format}","json").replaceAll("{" + "client_id" + "}", clientId.toString()).replaceAll("{" + "access_token" + "}", accessToken.toString());

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
  /// Revoke a grant for an application
  ///
  /// **Deprecation Notice:** GitHub will replace and discontinue OAuth endpoints containing &#x60;access_token&#x60; in the path parameter. We are introducing new endpoints that allow you to securely manage tokens for OAuth Apps by using &#x60;access_token&#x60; as an input parameter. The OAuth Application API will be removed on May 5, 2021. For more information, including scheduled brownouts, see the [blog post](https://developer.github.com/changes/2020-02-14-deprecating-oauth-app-endpoint/).  OAuth application owners can revoke a grant for their OAuth application and a specific user. You must use [Basic Authentication](https://developer.github.com/v3/auth#basic-authentication) when accessing this endpoint, using the OAuth application&#x27;s &#x60;client_id&#x60; and &#x60;client_secret&#x60; as the username and password. You must also provide a valid token as &#x60;:access_token&#x60; and the grant for the token&#x27;s owner will be deleted.  Deleting an OAuth application&#x27;s grant will also delete all OAuth tokens associated with the application for the user. Once deleted, the application will have no access to the user&#x27;s account and will no longer be listed on [the Applications settings page under \&quot;Authorized OAuth Apps\&quot; on GitHub](https://github.com/settings/applications#authorized).
  @deprecated
  Future appsRevokeGrantForApplication(String clientId, String accessToken) async {
    Object postBody = null;

    // verify required params are set
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }
    if(accessToken == null) {
     throw new ApiException(400, "Missing required param: accessToken");
    }

    // create path and map variables
    String path = "/applications/{client_id}/grants/{access_token}".replaceAll("{format}","json").replaceAll("{" + "client_id" + "}", clientId.toString()).replaceAll("{" + "access_token" + "}", accessToken.toString());

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
  /// Revoke an installation access token
  ///
  /// Revokes the installation token you&#x27;re using to authenticate as an installation and access this endpoint.  Once an installation token is revoked, the token is invalidated and cannot be used. Other endpoints that require the revoked installation token must have a new installation token to work. You can create a new token using the \&quot;[Create an installation access token for an app](https://developer.github.com/v3/apps/#create-an-installation-access-token-for-an-app)\&quot; endpoint.  You must use an [installation access token](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-an-installation) to access this endpoint.
  Future appsRevokeInstallationAccessToken() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/installation/token".replaceAll("{format}","json");

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
  /// Suspend an app installation
  ///
  /// **Note:** Suspending a GitHub App installation is currently in beta and subject to change. Before you can suspend a GitHub App, the app owner must enable suspending installations for the app by opting-in to the beta. For more information, see \&quot;[Suspending a GitHub App installation](https://developer.github.com/apps/managing-github-apps/suspending-a-github-app-installation/).\&quot;  Suspends a GitHub App on a user, organization, or business account, which blocks the app from accessing the account&#x27;s resources. When a GitHub App is suspended, the app&#x27;s access to the GitHub API or webhook events is blocked for that account.  To suspend a GitHub App, you must be an account owner or have admin permissions in the repository or organization where the app is installed.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future appsSuspendInstallation(int installationId) async {
    Object postBody = null;

    // verify required params are set
    if(installationId == null) {
     throw new ApiException(400, "Missing required param: installationId");
    }

    // create path and map variables
    String path = "/app/installations/{installation_id}/suspended".replaceAll("{format}","json").replaceAll("{" + "installation_id" + "}", installationId.toString());

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
  /// Unsuspend an app installation
  ///
  /// **Note:** Suspending a GitHub App installation is currently in beta and subject to change. Before you can suspend a GitHub App, the app owner must enable suspending installations for the app by opting-in to the beta. For more information, see \&quot;[Suspending a GitHub App installation](https://developer.github.com/apps/managing-github-apps/suspending-a-github-app-installation/).\&quot;  Removes a GitHub App installation suspension.  To unsuspend a GitHub App, you must be an account owner or have admin permissions in the repository or organization where the app is installed and suspended.  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future appsUnsuspendInstallation(int installationId) async {
    Object postBody = null;

    // verify required params are set
    if(installationId == null) {
     throw new ApiException(400, "Missing required param: installationId");
    }

    // create path and map variables
    String path = "/app/installations/{installation_id}/suspended".replaceAll("{format}","json").replaceAll("{" + "installation_id" + "}", installationId.toString());

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
  /// Update a webhook configuration for an app
  ///
  /// Updates the webhook configuration for a GitHub App. For more information about configuring a webhook for your app, see \&quot;[Creating a GitHub App](/developers/apps/creating-a-github-app).\&quot;  You must use a [JWT](https://developer.github.com/apps/building-github-apps/authenticating-with-github-apps/#authenticating-as-a-github-app) to access this endpoint.
  Future<WebhookConfig> appsUpdateWebhookConfigForApp({ Body body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/app/hook/config".replaceAll("{format}","json");

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

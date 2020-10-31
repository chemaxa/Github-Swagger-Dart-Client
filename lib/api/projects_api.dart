part of swagger.api;



class ProjectsApi {
  final ApiClient apiClient;

  ProjectsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add project collaborator
  ///
  /// Adds a collaborator to an organization project and sets their permission level. You must be an organization owner or a project &#x60;admin&#x60; to add a collaborator.
  Future projectsAddCollaborator(int projectId, String username, { Body60 body }) async {
    Object postBody = body;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/projects/{project_id}/collaborators/{username}".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
          ;
    } else {
      return ;
    }
  }
  /// Create a project card
  ///
  /// **Note**: GitHub&#x27;s REST API v3 considers every pull request an issue, but not every issue is a pull request. For this reason, \&quot;Issues\&quot; endpoints may return both issues and pull requests in the response. You can identify pull requests by the &#x60;pull_request&#x60; key.  Be aware that the &#x60;id&#x60; of a pull request returned from \&quot;Issues\&quot; endpoints will be an _issue id_. To find out the pull request id, use the \&quot;[List pull requests](https://developer.github.com/v3/pulls/#list-pull-requests)\&quot; endpoint.
  Future<ProjectCard> projectsCreateCard(int columnId, { Body57 body }) async {
    Object postBody = body;

    // verify required params are set
    if(columnId == null) {
     throw new ApiException(400, "Missing required param: columnId");
    }

    // create path and map variables
    String path = "/projects/columns/{column_id}/cards".replaceAll("{format}","json").replaceAll("{" + "column_id" + "}", columnId.toString());

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
          apiClient.deserialize(response.body, 'ProjectCard') as ProjectCard ;
    } else {
      return null;
    }
  }
  /// Create a project column
  ///
  /// 
  Future<ProjectColumn> projectsCreateColumn(int projectId, { Body61 body }) async {
    Object postBody = body;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/projects/{project_id}/columns".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

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
          apiClient.deserialize(response.body, 'ProjectColumn') as ProjectColumn ;
    } else {
      return null;
    }
  }
  /// Create a user project
  ///
  /// 
  Future<Project> projectsCreateForAuthenticatedUser({ Body171 body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/user/projects".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Project') as Project ;
    } else {
      return null;
    }
  }
  /// Create an organization project
  ///
  /// Creates an organization project board. Returns a &#x60;404 Not Found&#x60; status if projects are disabled in the organization. If you do not have sufficient privileges to perform this action, a &#x60;401 Unauthorized&#x60; or &#x60;410 Gone&#x60; status is returned.
  Future<Project> projectsCreateForOrg(String org, { Body40 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/projects".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'Project') as Project ;
    } else {
      return null;
    }
  }
  /// Create a repository project
  ///
  /// Creates a repository project board. Returns a &#x60;404 Not Found&#x60; status if projects are disabled in the repository. If you do not have sufficient privileges to perform this action, a &#x60;401 Unauthorized&#x60; or &#x60;410 Gone&#x60; status is returned.
  Future<Project> projectsCreateForRepo(String owner, String repo, { Body120 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/projects".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'Project') as Project ;
    } else {
      return null;
    }
  }
  /// Delete a project
  ///
  /// Deletes a project board. Returns a &#x60;404 Not Found&#x60; status if projects are disabled.
  Future projectsDelete(int projectId) async {
    Object postBody = null;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

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
  /// Delete a project card
  ///
  /// 
  Future projectsDeleteCard(int cardId) async {
    Object postBody = null;

    // verify required params are set
    if(cardId == null) {
     throw new ApiException(400, "Missing required param: cardId");
    }

    // create path and map variables
    String path = "/projects/columns/cards/{card_id}".replaceAll("{format}","json").replaceAll("{" + "card_id" + "}", cardId.toString());

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
  /// Delete a project column
  ///
  /// 
  Future projectsDeleteColumn(int columnId) async {
    Object postBody = null;

    // verify required params are set
    if(columnId == null) {
     throw new ApiException(400, "Missing required param: columnId");
    }

    // create path and map variables
    String path = "/projects/columns/{column_id}".replaceAll("{format}","json").replaceAll("{" + "column_id" + "}", columnId.toString());

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
  /// Get a project
  ///
  /// Gets a project by its &#x60;id&#x60;. Returns a &#x60;404 Not Found&#x60; status if projects are disabled. If you do not have sufficient privileges to perform this action, a &#x60;401 Unauthorized&#x60; or &#x60;410 Gone&#x60; status is returned.
  Future<Project> projectsGet(int projectId) async {
    Object postBody = null;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

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
          apiClient.deserialize(response.body, 'Project') as Project ;
    } else {
      return null;
    }
  }
  /// Get a project card
  ///
  /// 
  Future<ProjectCard> projectsGetCard(int cardId) async {
    Object postBody = null;

    // verify required params are set
    if(cardId == null) {
     throw new ApiException(400, "Missing required param: cardId");
    }

    // create path and map variables
    String path = "/projects/columns/cards/{card_id}".replaceAll("{format}","json").replaceAll("{" + "card_id" + "}", cardId.toString());

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
          apiClient.deserialize(response.body, 'ProjectCard') as ProjectCard ;
    } else {
      return null;
    }
  }
  /// Get a project column
  ///
  /// 
  Future<ProjectColumn> projectsGetColumn(int columnId) async {
    Object postBody = null;

    // verify required params are set
    if(columnId == null) {
     throw new ApiException(400, "Missing required param: columnId");
    }

    // create path and map variables
    String path = "/projects/columns/{column_id}".replaceAll("{format}","json").replaceAll("{" + "column_id" + "}", columnId.toString());

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
          apiClient.deserialize(response.body, 'ProjectColumn') as ProjectColumn ;
    } else {
      return null;
    }
  }
  /// Get project permission for a user
  ///
  /// Returns the collaborator&#x27;s permission level for an organization project. Possible values for the &#x60;permission&#x60; key: &#x60;admin&#x60;, &#x60;write&#x60;, &#x60;read&#x60;, &#x60;none&#x60;. You must be an organization owner or a project &#x60;admin&#x60; to review a user&#x27;s permission level.
  Future<RepositoryCollaboratorPermission> projectsGetPermissionForUser(int projectId, String username) async {
    Object postBody = null;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/projects/{project_id}/collaborators/{username}/permission".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'RepositoryCollaboratorPermission') as RepositoryCollaboratorPermission ;
    } else {
      return null;
    }
  }
  /// List project cards
  ///
  /// 
  Future<List<ProjectCard>> projectsListCards(int columnId, { String archivedState, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(columnId == null) {
     throw new ApiException(400, "Missing required param: columnId");
    }

    // create path and map variables
    String path = "/projects/columns/{column_id}/cards".replaceAll("{format}","json").replaceAll("{" + "column_id" + "}", columnId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(archivedState != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "archived_state", archivedState));
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
        (apiClient.deserialize(response.body, 'List<ProjectCard>') as List).map((item) => item as ProjectCard).toList();
    } else {
      return null;
    }
  }
  /// List project collaborators
  ///
  /// Lists the collaborators for an organization project. For a project, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners. You must be an organization owner or a project &#x60;admin&#x60; to list collaborators.
  Future<List<SimpleUser>> projectsListCollaborators(int projectId, { String affiliation, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/projects/{project_id}/collaborators".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(affiliation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "affiliation", affiliation));
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
  /// List project columns
  ///
  /// 
  Future<List<ProjectColumn>> projectsListColumns(int projectId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/projects/{project_id}/columns".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

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
        (apiClient.deserialize(response.body, 'List<ProjectColumn>') as List).map((item) => item as ProjectColumn).toList();
    } else {
      return null;
    }
  }
  /// List organization projects
  ///
  /// Lists the projects in an organization. Returns a &#x60;404 Not Found&#x60; status if projects are disabled in the organization. If you do not have sufficient privileges to perform this action, a &#x60;401 Unauthorized&#x60; or &#x60;410 Gone&#x60; status is returned.
  Future<List<Project>> projectsListForOrg(String org, { String state, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/projects".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
        (apiClient.deserialize(response.body, 'List<Project>') as List).map((item) => item as Project).toList();
    } else {
      return null;
    }
  }
  /// List repository projects
  ///
  /// Lists the projects in a repository. Returns a &#x60;404 Not Found&#x60; status if projects are disabled in the repository. If you do not have sufficient privileges to perform this action, a &#x60;401 Unauthorized&#x60; or &#x60;410 Gone&#x60; status is returned.
  Future<List<Project>> projectsListForRepo(String owner, String repo, { String state, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/projects".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
        (apiClient.deserialize(response.body, 'List<Project>') as List).map((item) => item as Project).toList();
    } else {
      return null;
    }
  }
  /// List user projects
  ///
  /// 
  Future<List<Project>> projectsListForUser(String username, { String state, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/projects".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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
        (apiClient.deserialize(response.body, 'List<Project>') as List).map((item) => item as Project).toList();
    } else {
      return null;
    }
  }
  /// Move a project card
  ///
  /// 
  Future<Object> projectsMoveCard(int cardId, { Body55 body }) async {
    Object postBody = body;

    // verify required params are set
    if(cardId == null) {
     throw new ApiException(400, "Missing required param: cardId");
    }

    // create path and map variables
    String path = "/projects/columns/cards/{card_id}/moves".replaceAll("{format}","json").replaceAll("{" + "card_id" + "}", cardId.toString());

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
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Move a project column
  ///
  /// 
  Future<Object> projectsMoveColumn(int columnId, { Body58 body }) async {
    Object postBody = body;

    // verify required params are set
    if(columnId == null) {
     throw new ApiException(400, "Missing required param: columnId");
    }

    // create path and map variables
    String path = "/projects/columns/{column_id}/moves".replaceAll("{format}","json").replaceAll("{" + "column_id" + "}", columnId.toString());

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
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Remove user as a collaborator
  ///
  /// Removes a collaborator from an organization project. You must be an organization owner or a project &#x60;admin&#x60; to remove a collaborator.
  Future projectsRemoveCollaborator(int projectId, String username) async {
    Object postBody = null;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/projects/{project_id}/collaborators/{username}".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
  /// Update a project
  ///
  /// Updates a project board&#x27;s information. Returns a &#x60;404 Not Found&#x60; status if projects are disabled. If you do not have sufficient privileges to perform this action, a &#x60;401 Unauthorized&#x60; or &#x60;410 Gone&#x60; status is returned.
  Future<Project> projectsUpdate(int projectId, { Body59 body }) async {
    Object postBody = body;

    // verify required params are set
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

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
          apiClient.deserialize(response.body, 'Project') as Project ;
    } else {
      return null;
    }
  }
  /// Update an existing project card
  ///
  /// 
  Future<ProjectCard> projectsUpdateCard(int cardId, { Body54 body }) async {
    Object postBody = body;

    // verify required params are set
    if(cardId == null) {
     throw new ApiException(400, "Missing required param: cardId");
    }

    // create path and map variables
    String path = "/projects/columns/cards/{card_id}".replaceAll("{format}","json").replaceAll("{" + "card_id" + "}", cardId.toString());

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
          apiClient.deserialize(response.body, 'ProjectCard') as ProjectCard ;
    } else {
      return null;
    }
  }
  /// Update an existing project column
  ///
  /// 
  Future<ProjectColumn> projectsUpdateColumn(int columnId, { Body56 body }) async {
    Object postBody = body;

    // verify required params are set
    if(columnId == null) {
     throw new ApiException(400, "Missing required param: columnId");
    }

    // create path and map variables
    String path = "/projects/columns/{column_id}".replaceAll("{format}","json").replaceAll("{" + "column_id" + "}", columnId.toString());

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
          apiClient.deserialize(response.body, 'ProjectColumn') as ProjectColumn ;
    } else {
      return null;
    }
  }
}

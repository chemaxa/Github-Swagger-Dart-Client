part of swagger.api;



class TeamsApi {
  final ApiClient apiClient;

  TeamsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add team member (Legacy)
  ///
  /// The \&quot;Add team member\&quot; endpoint (described below) is deprecated.  We recommend using the [Add or update team membership for a user](https://developer.github.com/v3/teams/members/#add-or-update-team-membership-for-a-user) endpoint instead. It allows you to invite new organization members to your teams.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To add someone to a team, the authenticated user must be an organization owner or a team maintainer in the team they&#x27;re changing. The person being added to the team must be a member of the team&#x27;s organization.  **Note:** When you have team synchronization set up for a team with your organization&#x27;s identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team&#x27;s membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \&quot;[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\&quot;  Note that you&#x27;ll need to set &#x60;Content-Length&#x60; to zero when calling out to this endpoint. For more information, see \&quot;[HTTP verbs](https://developer.github.com/v3/#http-verbs).\&quot;
  @deprecated
  Future teamsAddMemberLegacy(int teamId, String username) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/teams/{team_id}/members/{username}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
  /// Add or update team membership for a user
  ///
  /// Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Adds an organization member to a team. An authenticated organization owner or team maintainer can add organization members to a team.  **Note:** When you have team synchronization set up for a team with your organization&#x27;s identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team&#x27;s membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \&quot;[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\&quot;  An organization owner can add someone who is not part of the team&#x27;s organization to a team. When an organization owner adds someone to a team who is not an organization member, this endpoint will send an invitation to the person via email. This newly-created membership will be in the \&quot;pending\&quot; state until the person accepts the invitation, at which point the membership will transition to the \&quot;active\&quot; state and the user will be added as a member of the team.  If the user is already a member of the team, this endpoint will update the role of the team member&#x27;s role. To update the membership of a team member, the authenticated user must be an organization owner or a team maintainer.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;PUT /organizations/{org_id}/team/{team_id}/memberships/{username}&#x60;.
  Future<TeamMembership> teamsAddOrUpdateMembershipForUserInOrg(String org, String teamSlug, String username, { Body50 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'TeamMembership') as TeamMembership ;
    } else {
      return null;
    }
  }
  /// Add or update team membership for a user (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team membership for a user](https://developer.github.com/v3/teams/members/#add-or-update-team-membership-for-a-user) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  If the user is already a member of the team&#x27;s organization, this endpoint will add the user to the team. To add a membership between an organization member and a team, the authenticated user must be an organization owner or a team maintainer.  **Note:** When you have team synchronization set up for a team with your organization&#x27;s identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team&#x27;s membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \&quot;[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\&quot;  If the user is unaffiliated with the team&#x27;s organization, this endpoint will send an invitation to the user via email. This newly-created membership will be in the \&quot;pending\&quot; state until the user accepts the invitation, at which point the membership will transition to the \&quot;active\&quot; state and the user will be added as a member of the team. To add a membership between an unaffiliated user and a team, the authenticated user must be an organization owner.  If the user is already a member of the team, this endpoint will update the role of the team member&#x27;s role. To update the membership of a team member, the authenticated user must be an organization owner or a team maintainer.
  @deprecated
  Future<TeamMembership> teamsAddOrUpdateMembershipForUserLegacy(int teamId, String username, { Body159 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/teams/{team_id}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'TeamMembership') as TeamMembership ;
    } else {
      return null;
    }
  }
  /// Add or update team project permissions
  ///
  /// Adds an organization project to a team. To add a project to a team or update the team&#x27;s permission on a project, the authenticated user must have &#x60;admin&#x60; permissions for the project. The project and team must be part of the same organization.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;PUT /organizations/{org_id}/team/{team_id}/projects/{project_id}&#x60;.
  Future teamsAddOrUpdateProjectPermissionsInOrg(String org, String teamSlug, int projectId, { Body51 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "project_id" + "}", projectId.toString());

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
  /// Add or update team project permissions (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team project permissions](https://developer.github.com/v3/teams/#add-or-update-team-project-permissions) endpoint.  Adds an organization project to a team. To add a project to a team or update the team&#x27;s permission on a project, the authenticated user must have &#x60;admin&#x60; permissions for the project. The project and team must be part of the same organization.
  @deprecated
  Future teamsAddOrUpdateProjectPermissionsLegacy(int teamId, int projectId, { Body160 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "project_id" + "}", projectId.toString());

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
  /// Add or update team repository permissions
  ///
  /// To add a repository to a team or update the team&#x27;s permission on a repository, the authenticated user must have admin access to the repository, and must be able to see the team. The repository must be owned by the organization, or a direct fork of a repository owned by the organization. You will get a &#x60;422 Unprocessable Entity&#x60; status if you attempt to add a repository to a team that is not owned by the organization. Note that, if you choose not to pass any parameters, you&#x27;ll need to set &#x60;Content-Length&#x60; to zero when calling out to this endpoint. For more information, see \&quot;[HTTP verbs](https://developer.github.com/v3/#http-verbs).\&quot;  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;PUT /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}&#x60;.  For more information about the permission levels, see \&quot;[Repository permission levels for an organization](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization)\&quot;.
  Future teamsAddOrUpdateRepoPermissionsInOrg(String org, String teamSlug, String owner, String repo, { Body52 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Add or update team repository permissions (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team repository permissions](https://developer.github.com/v3/teams/#add-or-update-team-repository-permissions) endpoint.  To add a repository to a team or update the team&#x27;s permission on a repository, the authenticated user must have admin access to the repository, and must be able to see the team. The repository must be owned by the organization, or a direct fork of a repository owned by the organization. You will get a &#x60;422 Unprocessable Entity&#x60; status if you attempt to add a repository to a team that is not owned by the organization.  Note that, if you choose not to pass any parameters, you&#x27;ll need to set &#x60;Content-Length&#x60; to zero when calling out to this endpoint. For more information, see \&quot;[HTTP verbs](https://developer.github.com/v3/#http-verbs).\&quot;
  @deprecated
  Future teamsAddOrUpdateRepoPermissionsLegacy(int teamId, String owner, String repo, { Body161 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/teams/{team_id}/repos/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Check team permissions for a project
  ///
  /// Checks whether a team has &#x60;read&#x60;, &#x60;write&#x60;, or &#x60;admin&#x60; permissions for an organization project. The response includes projects inherited from a parent team.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/projects/{project_id}&#x60;.
  Future<TeamProject> teamsCheckPermissionsForProjectInOrg(String org, String teamSlug, int projectId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "project_id" + "}", projectId.toString());

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
          apiClient.deserialize(response.body, 'TeamProject') as TeamProject ;
    } else {
      return null;
    }
  }
  /// Check team permissions for a project (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Check team permissions for a project](https://developer.github.com/v3/teams/#check-team-permissions-for-a-project) endpoint.  Checks whether a team has &#x60;read&#x60;, &#x60;write&#x60;, or &#x60;admin&#x60; permissions for an organization project. The response includes projects inherited from a parent team.
  @deprecated
  Future<TeamProject> teamsCheckPermissionsForProjectLegacy(int teamId, int projectId) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "project_id" + "}", projectId.toString());

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
          apiClient.deserialize(response.body, 'TeamProject') as TeamProject ;
    } else {
      return null;
    }
  }
  /// Check team permissions for a repository
  ///
  /// Checks whether a team has &#x60;admin&#x60;, &#x60;push&#x60;, &#x60;maintain&#x60;, &#x60;triage&#x60;, or &#x60;pull&#x60; permission for a repository. Repositories inherited through a parent team will also be checked.  You can also get information about the specified repository, including what permissions the team grants on it, by passing the following custom [media type](https://developer.github.com/v3/media/) via the &#x60;application/vnd.github.v3.repository+json&#x60; accept header.  If a team doesn&#x27;t have permission for the repository, you will receive a &#x60;404 Not Found&#x60; response status.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}&#x60;.
  Future<TeamRepository> teamsCheckPermissionsForRepoInOrg(String org, String teamSlug, String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'TeamRepository') as TeamRepository ;
    } else {
      return null;
    }
  }
  /// Check team permissions for a repository (Legacy)
  ///
  /// **Note**: Repositories inherited through a parent team will also be checked.  **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Check team permissions for a repository](https://developer.github.com/v3/teams/#check-team-permissions-for-a-repository) endpoint.  You can also get information about the specified repository, including what permissions the team grants on it, by passing the following custom [media type](https://developer.github.com/v3/media/) via the &#x60;Accept&#x60; header:
  @deprecated
  Future<TeamRepository> teamsCheckPermissionsForRepoLegacy(int teamId, String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/teams/{team_id}/repos/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'TeamRepository') as TeamRepository ;
    } else {
      return null;
    }
  }
  /// Create a team
  ///
  /// To create a team, the authenticated user must be a member or owner of &#x60;{org}&#x60;. By default, organization members can create teams. Organization owners can limit team creation to organization owners. For more information, see \&quot;[Setting team creation permissions](https://help.github.com/en/articles/setting-team-creation-permissions-in-your-organization).\&quot;  When you create a new team, you automatically become a team maintainer without explicitly adding yourself to the optional array of &#x60;maintainers&#x60;. For more information, see \&quot;[About teams](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/about-teams)\&quot;.
  Future<TeamFull> teamsCreate(String org, { Body42 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'TeamFull') as TeamFull ;
    } else {
      return null;
    }
  }
  /// Create a discussion comment
  ///
  /// Creates a new comment on a team discussion. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \&quot;[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\&quot; and \&quot;[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\&quot; for details.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;POST /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments&#x60;.
  Future<TeamDiscussionComment> teamsCreateDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, { Body46 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussionComment') as TeamDiscussionComment ;
    } else {
      return null;
    }
  }
  /// Create a discussion comment (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Create a discussion comment](https://developer.github.com/v3/teams/discussion_comments/#create-a-discussion-comment) endpoint.  Creates a new comment on a team discussion. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \&quot;[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\&quot; and \&quot;[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\&quot; for details.
  @deprecated
  Future<TeamDiscussionComment> teamsCreateDiscussionCommentLegacy(int teamId, int discussionNumber, { Body155 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/comments".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussionComment') as TeamDiscussionComment ;
    } else {
      return null;
    }
  }
  /// Create a discussion
  ///
  /// Creates a new discussion post on a team&#x27;s page. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \&quot;[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\&quot; and \&quot;[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\&quot; for details.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;POST /organizations/{org_id}/team/{team_id}/discussions&#x60;.
  Future<TeamDiscussion> teamsCreateDiscussionInOrg(String org, String teamSlug, { Body44 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussion') as TeamDiscussion ;
    } else {
      return null;
    }
  }
  /// Create a discussion (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;Create a discussion&#x60;](https://developer.github.com/v3/teams/discussions/#create-a-discussion) endpoint.  Creates a new discussion post on a team&#x27;s page. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \&quot;[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\&quot; and \&quot;[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\&quot; for details.
  @deprecated
  Future<TeamDiscussion> teamsCreateDiscussionLegacy(int teamId, { Body153 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussion') as TeamDiscussion ;
    } else {
      return null;
    }
  }
  /// Create or update IdP group connections
  ///
  /// Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Creates, updates, or removes a connection between a team and an IdP group. When adding groups to a team, you must include all new and existing groups to avoid replacing existing groups with the new ones. Specifying an empty &#x60;groups&#x60; array will remove all connections for a team.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;PATCH /organizations/{org_id}/team/{team_id}/team-sync/group-mappings&#x60;.
  Future<GroupMapping> teamsCreateOrUpdateIdpGroupConnectionsInOrg(String org, String teamSlug, { Body53 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/team-sync/group-mappings".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
          apiClient.deserialize(response.body, 'GroupMapping') as GroupMapping ;
    } else {
      return null;
    }
  }
  /// Create or update IdP group connections (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;Create or update IdP group connections&#x60;](https://developer.github.com/v3/teams/team_sync/#create-or-update-idp-group-connections) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Creates, updates, or removes a connection between a team and an IdP group. When adding groups to a team, you must include all new and existing groups to avoid replacing existing groups with the new ones. Specifying an empty &#x60;groups&#x60; array will remove all connections for a team.
  @deprecated
  Future<GroupMapping> teamsCreateOrUpdateIdpGroupConnectionsLegacy(int teamId, { Body162 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/team-sync/group-mappings".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
          apiClient.deserialize(response.body, 'GroupMapping') as GroupMapping ;
    } else {
      return null;
    }
  }
  /// Delete a discussion comment
  ///
  /// Deletes a comment on a team discussion. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;DELETE /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}&#x60;.
  Future teamsDeleteDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

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
  /// Delete a discussion comment (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Delete a discussion comment](https://developer.github.com/v3/teams/discussion_comments/#delete-a-discussion-comment) endpoint.  Deletes a comment on a team discussion. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future teamsDeleteDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

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
  /// Delete a discussion
  ///
  /// Delete a discussion from a team&#x27;s page. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;DELETE /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}&#x60;.
  Future teamsDeleteDiscussionInOrg(String org, String teamSlug, int discussionNumber) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

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
  /// Delete a discussion (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;Delete a discussion&#x60;](https://developer.github.com/v3/teams/discussions/#delete-a-discussion) endpoint.  Delete a discussion from a team&#x27;s page. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future teamsDeleteDiscussionLegacy(int teamId, int discussionNumber) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

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
  /// Delete a team
  ///
  /// To delete a team, the authenticated user must be an organization owner or team maintainer.  If you are an organization owner, deleting a parent team will delete all of its child teams as well.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;DELETE /organizations/{org_id}/team/{team_id}&#x60;.
  Future teamsDeleteInOrg(String org, String teamSlug) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
  /// Delete a team (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Delete a team](https://developer.github.com/v3/teams/#delete-a-team) endpoint.  To delete a team, the authenticated user must be an organization owner or team maintainer.  If you are an organization owner, deleting a parent team will delete all of its child teams as well.
  @deprecated
  Future teamsDeleteLegacy(int teamId) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
  /// Get a team by name
  ///
  /// Gets a team using the team&#x27;s &#x60;slug&#x60;. GitHub generates the &#x60;slug&#x60; from the team &#x60;name&#x60;.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}&#x60;.
  Future<TeamFull> teamsGetByName(String org, String teamSlug) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
          apiClient.deserialize(response.body, 'TeamFull') as TeamFull ;
    } else {
      return null;
    }
  }
  /// Get a discussion comment
  ///
  /// Get a specific comment on a team discussion. OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}&#x60;.
  Future<TeamDiscussionComment> teamsGetDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussionComment') as TeamDiscussionComment ;
    } else {
      return null;
    }
  }
  /// Get a discussion comment (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get a discussion comment](https://developer.github.com/v3/teams/discussion_comments/#get-a-discussion-comment) endpoint.  Get a specific comment on a team discussion. OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future<TeamDiscussionComment> teamsGetDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussionComment') as TeamDiscussionComment ;
    } else {
      return null;
    }
  }
  /// Get a discussion
  ///
  /// Get a specific discussion on a team&#x27;s page. OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}&#x60;.
  Future<TeamDiscussion> teamsGetDiscussionInOrg(String org, String teamSlug, int discussionNumber) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussion') as TeamDiscussion ;
    } else {
      return null;
    }
  }
  /// Get a discussion (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get a discussion](https://developer.github.com/v3/teams/discussions/#get-a-discussion) endpoint.  Get a specific discussion on a team&#x27;s page. OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future<TeamDiscussion> teamsGetDiscussionLegacy(int teamId, int discussionNumber) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussion') as TeamDiscussion ;
    } else {
      return null;
    }
  }
  /// Get a team (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the [Get a team by name](https://developer.github.com/v3/teams/#get-a-team-by-name) endpoint.
  @deprecated
  Future<TeamFull> teamsGetLegacy(int teamId) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
          apiClient.deserialize(response.body, 'TeamFull') as TeamFull ;
    } else {
      return null;
    }
  }
  /// Get team member (Legacy)
  ///
  /// The \&quot;Get team member\&quot; endpoint (described below) is deprecated.  We recommend using the [Get team membership for a user](https://developer.github.com/v3/teams/members/#get-team-membership-for-a-user) endpoint instead. It allows you to get both active and pending memberships.  To list members in a team, the team must be visible to the authenticated user.
  @deprecated
  Future teamsGetMemberLegacy(int teamId, String username) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/teams/{team_id}/members/{username}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
  /// Get team membership for a user
  ///
  /// Team members will include the members of child teams.  To get a user&#x27;s membership with a team, the team must be visible to the authenticated user.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/memberships/{username}&#x60;.  **Note:** The &#x60;role&#x60; for organization owners returns as &#x60;maintainer&#x60;. For more information about &#x60;maintainer&#x60; roles, see [Create a team](https://developer.github.com/v3/teams/#create-a-team).
  Future<TeamMembership> teamsGetMembershipForUserInOrg(String org, String teamSlug, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'TeamMembership') as TeamMembership ;
    } else {
      return null;
    }
  }
  /// Get team membership for a user (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get team membership for a user](https://developer.github.com/v3/teams/members/#get-team-membership-for-a-user) endpoint.  Team members will include the members of child teams.  To get a user&#x27;s membership with a team, the team must be visible to the authenticated user.  **Note:** The &#x60;role&#x60; for organization owners returns as &#x60;maintainer&#x60;. For more information about &#x60;maintainer&#x60; roles, see [Create a team](https://developer.github.com/v3/teams/#create-a-team).
  @deprecated
  Future<TeamMembership> teamsGetMembershipForUserLegacy(int teamId, String username) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/teams/{team_id}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'TeamMembership') as TeamMembership ;
    } else {
      return null;
    }
  }
  /// List teams
  ///
  /// Lists all teams in an organization that are visible to the authenticated user.
  Future<List<Team>> teamsList(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
  /// List child teams
  ///
  /// Lists the child teams of the team specified by &#x60;{team_slug}&#x60;.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/teams&#x60;.
  Future<List<Team>> teamsListChildInOrg(String org, String teamSlug, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/teams".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
  /// List child teams (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;List child teams&#x60;](https://developer.github.com/v3/teams/#list-child-teams) endpoint.
  @deprecated
  Future<List<Team>> teamsListChildLegacy(int teamId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/teams".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
  /// List discussion comments
  ///
  /// List all comments on a team discussion. OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments&#x60;.
  Future<List<TeamDiscussionComment>> teamsListDiscussionCommentsInOrg(String org, String teamSlug, int discussionNumber, { String direction, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
        (apiClient.deserialize(response.body, 'List<TeamDiscussionComment>') as List).map((item) => item as TeamDiscussionComment).toList();
    } else {
      return null;
    }
  }
  /// List discussion comments (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [List discussion comments](https://developer.github.com/v3/teams/discussion_comments/#list-discussion-comments) endpoint.  List all comments on a team discussion. OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future<List<TeamDiscussionComment>> teamsListDiscussionCommentsLegacy(int teamId, int discussionNumber, { String direction, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/comments".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
        (apiClient.deserialize(response.body, 'List<TeamDiscussionComment>') as List).map((item) => item as TeamDiscussionComment).toList();
    } else {
      return null;
    }
  }
  /// List discussions
  ///
  /// List all discussions on a team&#x27;s page. OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/discussions&#x60;.
  Future<List<TeamDiscussion>> teamsListDiscussionsInOrg(String org, String teamSlug, { String direction, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
        (apiClient.deserialize(response.body, 'List<TeamDiscussion>') as List).map((item) => item as TeamDiscussion).toList();
    } else {
      return null;
    }
  }
  /// List discussions (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;List discussions&#x60;](https://developer.github.com/v3/teams/discussions/#list-discussions) endpoint.  List all discussions on a team&#x27;s page. OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future<List<TeamDiscussion>> teamsListDiscussionsLegacy(int teamId, { String direction, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
        (apiClient.deserialize(response.body, 'List<TeamDiscussion>') as List).map((item) => item as TeamDiscussion).toList();
    } else {
      return null;
    }
  }
  /// List teams for the authenticated user
  ///
  /// List all of the teams across all of the organizations to which the authenticated user belongs. This method requires &#x60;user&#x60;, &#x60;repo&#x60;, or &#x60;read:org&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/) when authenticating via [OAuth](https://developer.github.com/apps/building-oauth-apps/).
  Future<List<TeamFull>> teamsListForAuthenticatedUser({ int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/user/teams".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<TeamFull>') as List).map((item) => item as TeamFull).toList();
    } else {
      return null;
    }
  }
  /// List IdP groups for a team (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;List IdP groups for a team&#x60;](https://developer.github.com/v3/teams/team_sync/#list-idp-groups-for-a-team) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups connected to a team on GitHub.
  @deprecated
  Future<GroupMapping> teamsListIdpGroupsForLegacy(int teamId) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/team-sync/group-mappings".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
          apiClient.deserialize(response.body, 'GroupMapping') as GroupMapping ;
    } else {
      return null;
    }
  }
  /// List IdP groups for an organization
  ///
  /// Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups available in an organization. You can limit your page results using the &#x60;per_page&#x60; parameter. GitHub generates a url-encoded &#x60;page&#x60; token using a cursor value for where the next page begins. For more information on cursor pagination, see \&quot;[Offset and Cursor Pagination explained](https://dev.to/jackmarchant/offset-and-cursor-pagination-explained-b89).\&quot;  The &#x60;per_page&#x60; parameter provides pagination for a list of IdP groups the authenticated user can access in an organization. For example, if the user &#x60;octocat&#x60; wants to see two groups per page in &#x60;octo-org&#x60; via cURL, it would look like this:
  Future<GroupMapping> teamsListIdpGroupsForOrg(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/team-sync/groups".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'GroupMapping') as GroupMapping ;
    } else {
      return null;
    }
  }
  /// List IdP groups for a team
  ///
  /// Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups connected to a team on GitHub.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/team-sync/group-mappings&#x60;.
  Future<GroupMapping> teamsListIdpGroupsInOrg(String org, String teamSlug) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/team-sync/group-mappings".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
          apiClient.deserialize(response.body, 'GroupMapping') as GroupMapping ;
    } else {
      return null;
    }
  }
  /// List team members
  ///
  /// Team members will include the members of child teams.  To list members in a team, the team must be visible to the authenticated user.
  Future<List<SimpleUser>> teamsListMembersInOrg(String org, String teamSlug, { String role, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/members".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
  /// List team members (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;List team members&#x60;](https://developer.github.com/v3/teams/members/#list-team-members) endpoint.  Team members will include the members of child teams.
  @deprecated
  Future<List<SimpleUser>> teamsListMembersLegacy(int teamId, { String role, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/members".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
  /// List pending team invitations
  ///
  /// The return hash contains a &#x60;role&#x60; field which refers to the Organization Invitation role and will be one of the following values: &#x60;direct_member&#x60;, &#x60;admin&#x60;, &#x60;billing_manager&#x60;, &#x60;hiring_manager&#x60;, or &#x60;reinstate&#x60;. If the invitee is not a GitHub member, the &#x60;login&#x60; field in the return hash will be &#x60;null&#x60;.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/invitations&#x60;.
  Future<List<OrganizationInvitation>> teamsListPendingInvitationsInOrg(String org, String teamSlug, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/invitations".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
  /// List pending team invitations (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;List pending team invitations&#x60;](https://developer.github.com/v3/teams/members/#list-pending-team-invitations) endpoint.  The return hash contains a &#x60;role&#x60; field which refers to the Organization Invitation role and will be one of the following values: &#x60;direct_member&#x60;, &#x60;admin&#x60;, &#x60;billing_manager&#x60;, &#x60;hiring_manager&#x60;, or &#x60;reinstate&#x60;. If the invitee is not a GitHub member, the &#x60;login&#x60; field in the return hash will be &#x60;null&#x60;.
  @deprecated
  Future<List<OrganizationInvitation>> teamsListPendingInvitationsLegacy(int teamId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/invitations".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
  /// List team projects
  ///
  /// Lists the organization projects for a team.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/projects&#x60;.
  Future<List<TeamProject>> teamsListProjectsInOrg(String org, String teamSlug, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/projects".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
        (apiClient.deserialize(response.body, 'List<TeamProject>') as List).map((item) => item as TeamProject).toList();
    } else {
      return null;
    }
  }
  /// List team projects (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;List team projects&#x60;](https://developer.github.com/v3/teams/#list-team-projects) endpoint.  Lists the organization projects for a team.
  @deprecated
  Future<List<TeamProject>> teamsListProjectsLegacy(int teamId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/projects".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
        (apiClient.deserialize(response.body, 'List<TeamProject>') as List).map((item) => item as TeamProject).toList();
    } else {
      return null;
    }
  }
  /// List team repositories
  ///
  /// Lists a team&#x27;s repositories visible to the authenticated user.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/{org_id}/team/{team_id}/repos&#x60;.
  Future<List<MinimalRepository>> teamsListReposInOrg(String org, String teamSlug, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/repos".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
        (apiClient.deserialize(response.body, 'List<MinimalRepository>') as List).map((item) => item as MinimalRepository).toList();
    } else {
      return null;
    }
  }
  /// List team repositories (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [List team repositories](https://developer.github.com/v3/teams/#list-team-repositories) endpoint.
  @deprecated
  Future<List<MinimalRepository>> teamsListReposLegacy(int teamId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/repos".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
        (apiClient.deserialize(response.body, 'List<MinimalRepository>') as List).map((item) => item as MinimalRepository).toList();
    } else {
      return null;
    }
  }
  /// Remove team member (Legacy)
  ///
  /// The \&quot;Remove team member\&quot; endpoint (described below) is deprecated.  We recommend using the [Remove team membership for a user](https://developer.github.com/v3/teams/members/#remove-team-membership-for-a-user) endpoint instead. It allows you to remove both active and pending memberships.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a team member, the authenticated user must have &#x27;admin&#x27; permissions to the team or be an owner of the org that the team is associated with. Removing a team member does not delete the user, it just removes them from the team.  **Note:** When you have team synchronization set up for a team with your organization&#x27;s identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team&#x27;s membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \&quot;[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\&quot;
  @deprecated
  Future teamsRemoveMemberLegacy(int teamId, String username) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/teams/{team_id}/members/{username}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
  /// Remove team membership for a user
  ///
  /// Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a membership between a user and a team, the authenticated user must have &#x27;admin&#x27; permissions to the team or be an owner of the organization that the team is associated with. Removing team membership does not delete the user, it just removes their membership from the team.  **Note:** When you have team synchronization set up for a team with your organization&#x27;s identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team&#x27;s membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \&quot;[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\&quot;  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;DELETE /organizations/{org_id}/team/{team_id}/memberships/{username}&#x60;.
  Future teamsRemoveMembershipForUserInOrg(String org, String teamSlug, String username) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "username" + "}", username.toString());

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
  /// Remove team membership for a user (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove team membership for a user](https://developer.github.com/v3/teams/members/#remove-team-membership-for-a-user) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub&#x27;s products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a membership between a user and a team, the authenticated user must have &#x27;admin&#x27; permissions to the team or be an owner of the organization that the team is associated with. Removing team membership does not delete the user, it just removes their membership from the team.  **Note:** When you have team synchronization set up for a team with your organization&#x27;s identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team&#x27;s membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \&quot;[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\&quot;
  @deprecated
  Future teamsRemoveMembershipForUserLegacy(int teamId, String username) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/teams/{team_id}/memberships/{username}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "username" + "}", username.toString());

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
  /// Remove a project from a team
  ///
  /// Removes an organization project from a team. An organization owner or a team maintainer can remove any project from the team. To remove a project from a team as an organization member, the authenticated user must have &#x60;read&#x60; access to both the team and project, or &#x60;admin&#x60; access to the team or project. This endpoint removes the project from the team, but does not delete the project.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;DELETE /organizations/{org_id}/team/{team_id}/projects/{project_id}&#x60;.
  Future teamsRemoveProjectInOrg(String org, String teamSlug, int projectId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "project_id" + "}", projectId.toString());

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
  /// Remove a project from a team (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove a project from a team](https://developer.github.com/v3/teams/#remove-a-project-from-a-team) endpoint.  Removes an organization project from a team. An organization owner or a team maintainer can remove any project from the team. To remove a project from a team as an organization member, the authenticated user must have &#x60;read&#x60; access to both the team and project, or &#x60;admin&#x60; access to the team or project. **Note:** This endpoint removes the project from the team, but does not delete it.
  @deprecated
  Future teamsRemoveProjectLegacy(int teamId, int projectId) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(projectId == null) {
     throw new ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/teams/{team_id}/projects/{project_id}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "project_id" + "}", projectId.toString());

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
  /// Remove a repository from a team
  ///
  /// If the authenticated user is an organization owner or a team maintainer, they can remove any repositories from the team. To remove a repository from a team as an organization member, the authenticated user must have admin access to the repository and must be able to see the team. This does not delete the repository, it just removes it from the team.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;DELETE /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}&#x60;.
  Future teamsRemoveRepoInOrg(String org, String teamSlug, String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/repos/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Remove a repository from a team (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove a repository from a team](https://developer.github.com/v3/teams/#remove-a-repository-from-a-team) endpoint.  If the authenticated user is an organization owner or a team maintainer, they can remove any repositories from the team. To remove a repository from a team as an organization member, the authenticated user must have admin access to the repository and must be able to see the team. NOTE: This does not delete the repository, it just removes it from the team.
  @deprecated
  Future teamsRemoveRepoLegacy(int teamId, String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/teams/{team_id}/repos/{owner}/{repo}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Update a discussion comment
  ///
  /// Edits the body text of a discussion comment. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;PATCH /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}&#x60;.
  Future<TeamDiscussionComment> teamsUpdateDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber, { Body47 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussionComment') as TeamDiscussionComment ;
    } else {
      return null;
    }
  }
  /// Update a discussion comment (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a discussion comment](https://developer.github.com/v3/teams/discussion_comments/#update-a-discussion-comment) endpoint.  Edits the body text of a discussion comment. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future<TeamDiscussionComment> teamsUpdateDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber, { Body156 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussionComment') as TeamDiscussionComment ;
    } else {
      return null;
    }
  }
  /// Update a discussion
  ///
  /// Edits the title and body text of a discussion post. Only the parameters you provide are updated. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;PATCH /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}&#x60;.
  Future<TeamDiscussion> teamsUpdateDiscussionInOrg(String org, String teamSlug, int discussionNumber, { Body45 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussion') as TeamDiscussion ;
    } else {
      return null;
    }
  }
  /// Update a discussion (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a discussion](https://developer.github.com/v3/teams/discussions/#update-a-discussion) endpoint.  Edits the title and body text of a discussion post. Only the parameters you provide are updated. OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future<TeamDiscussion> teamsUpdateDiscussionLegacy(int teamId, int discussionNumber, { Body154 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

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
          apiClient.deserialize(response.body, 'TeamDiscussion') as TeamDiscussion ;
    } else {
      return null;
    }
  }
  /// Update a team
  ///
  /// To edit a team, the authenticated user must either be an organization owner or a team maintainer.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;PATCH /organizations/{org_id}/team/{team_id}&#x60;.
  Future<TeamFull> teamsUpdateInOrg(String org, String teamSlug, { Body43 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString());

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
          apiClient.deserialize(response.body, 'TeamFull') as TeamFull ;
    } else {
      return null;
    }
  }
  /// Update a team (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a team](https://developer.github.com/v3/teams/#update-a-team) endpoint.  To edit a team, the authenticated user must either be an organization owner or a team maintainer.  **Note:** With nested teams, the &#x60;privacy&#x60; for parent teams cannot be &#x60;secret&#x60;.
  @deprecated
  Future<TeamFull> teamsUpdateLegacy(int teamId, { Body152 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }

    // create path and map variables
    String path = "/teams/{team_id}".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString());

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
          apiClient.deserialize(response.body, 'TeamFull') as TeamFull ;
    } else {
      return null;
    }
  }
}

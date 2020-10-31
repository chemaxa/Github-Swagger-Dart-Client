part of swagger.api;



class EnterpriseAdminApi {
  final ApiClient apiClient;

  EnterpriseAdminApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add organization access to a self-hosted runner group in an enterprise
  ///
  /// Adds an organization to the list of selected organizations that can access a self-hosted runner group. The runner group must have &#x60;visibility&#x60; set to &#x60;selected&#x60;. For more information, see \&quot;[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise).\&quot;  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminAddOrgAccessToSelfHostedRunnerGroupInEnterprise(String enterprise, int runnerGroupId, int orgId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }
    if(orgId == null) {
     throw new ApiException(400, "Missing required param: orgId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations/{org_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString()).replaceAll("{" + "org_id" + "}", orgId.toString());

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
  /// Add a self-hosted runner to a group for an enterprise
  ///
  /// Adds a self-hosted runner to a runner group configured in an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminAddSelfHostedRunnerToGroupForEnterprise(String enterprise, int runnerGroupId, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Create a registration token for an enterprise
  ///
  /// Returns a token that you can pass to the &#x60;config&#x60; script. The token expires after one hour.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.  #### Example using registration token  Configure your self-hosted runner, replacing &#x60;TOKEN&#x60; with the registration token provided by this endpoint.  &#x60;&#x60;&#x60; ./config.sh --url https://github.com/enterpises/octo-enterprise --token TOKEN &#x60;&#x60;&#x60;
  Future<AuthenticationToken> enterpriseAdminCreateRegistrationTokenForEnterprise(String enterprise) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runners/registration-token".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'AuthenticationToken') as AuthenticationToken ;
    } else {
      return null;
    }
  }
  /// Create a remove token for an enterprise
  ///
  /// Returns a token that you can pass to the &#x60;config&#x60; script to remove a self-hosted runner from an enterprise. The token expires after one hour.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.  #### Example using remove token  To remove your self-hosted runner from an enterprise, replace &#x60;TOKEN&#x60; with the remove token provided by this endpoint.  &#x60;&#x60;&#x60; ./config.sh remove --token TOKEN &#x60;&#x60;&#x60;
  Future<AuthenticationToken> enterpriseAdminCreateRemoveTokenForEnterprise(String enterprise) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runners/remove-token".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'AuthenticationToken') as AuthenticationToken ;
    } else {
      return null;
    }
  }
  /// Create a self-hosted runner group for an enterprise
  ///
  /// Creates a new self-hosted runner group for an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<RunnerGroupsEnterprise> enterpriseAdminCreateSelfHostedRunnerGroupForEnterprise(String enterprise, { Body13 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'RunnerGroupsEnterprise') as RunnerGroupsEnterprise ;
    } else {
      return null;
    }
  }
  /// Delete a SCIM group from an enterprise
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
  Future enterpriseAdminDeleteScimGroupFromEnterprise(String enterprise, String scimGroupId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(scimGroupId == null) {
     throw new ApiException(400, "Missing required param: scimGroupId");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "scim_group_id" + "}", scimGroupId.toString());

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
  /// Delete a self-hosted runner from an enterprise
  ///
  /// Forces the removal of a self-hosted runner from an enterprise. You can use this endpoint to completely remove the runner when the machine you were using no longer exists.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminDeleteSelfHostedRunnerFromEnterprise(String enterprise, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Delete a self-hosted runner group from an enterprise
  ///
  /// Deletes a self-hosted runner group for an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminDeleteSelfHostedRunnerGroupFromEnterprise(String enterprise, int runnerGroupId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
  /// Delete a SCIM user from an enterprise
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
  Future enterpriseAdminDeleteUserFromEnterprise(String enterprise, String scimUserId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(scimUserId == null) {
     throw new ApiException(400, "Missing required param: scimUserId");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "scim_user_id" + "}", scimUserId.toString());

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
  /// Disable a selected organization for GitHub Actions in an enterprise
  ///
  /// Removes an organization from the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for &#x60;enabled_organizations&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\&quot;  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminDisableSelectedOrganizationGithubActionsEnterprise(String enterprise, int orgId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(orgId == null) {
     throw new ApiException(400, "Missing required param: orgId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/permissions/organizations/{org_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "org_id" + "}", orgId.toString());

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
  /// Enable a selected organization for GitHub Actions in an enterprise
  ///
  /// Adds an organization to the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for &#x60;enabled_organizations&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\&quot;  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminEnableSelectedOrganizationGithubActionsEnterprise(String enterprise, int orgId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(orgId == null) {
     throw new ApiException(400, "Missing required param: orgId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/permissions/organizations/{org_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "org_id" + "}", orgId.toString());

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
  /// Get allowed actions for an enterprise
  ///
  /// Gets the selected actions that are allowed in an enterprise. To use this endpoint, the enterprise permission policy for &#x60;allowed_actions&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\&quot;  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<SelectedActions> enterpriseAdminGetAllowedActionsEnterprise(String enterprise) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/permissions/selected-actions".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'SelectedActions') as SelectedActions ;
    } else {
      return null;
    }
  }
  /// Get GitHub Actions permissions for an enterprise
  ///
  /// Gets the GitHub Actions permissions policy for organizations and allowed actions in an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<ActionsEnterprisePermissions> enterpriseAdminGetGithubActionsPermissionsEnterprise(String enterprise) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/permissions".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'ActionsEnterprisePermissions') as ActionsEnterprisePermissions ;
    } else {
      return null;
    }
  }
  /// Get SCIM provisioning information for an enterprise group
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
  Future<ScimEnterpriseGroup> enterpriseAdminGetProvisioningInformationForEnterpriseGroup(String enterprise, String scimGroupId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(scimGroupId == null) {
     throw new ApiException(400, "Missing required param: scimGroupId");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "scim_group_id" + "}", scimGroupId.toString());

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
          apiClient.deserialize(response.body, 'ScimEnterpriseGroup') as ScimEnterpriseGroup ;
    } else {
      return null;
    }
  }
  /// Get SCIM provisioning information for an enterprise user
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
  Future<ScimEnterpriseUser> enterpriseAdminGetProvisioningInformationForEnterpriseUser(String enterprise, String scimUserId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(scimUserId == null) {
     throw new ApiException(400, "Missing required param: scimUserId");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "scim_user_id" + "}", scimUserId.toString());

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
          apiClient.deserialize(response.body, 'ScimEnterpriseUser') as ScimEnterpriseUser ;
    } else {
      return null;
    }
  }
  /// Get a self-hosted runner for an enterprise
  ///
  /// Gets a specific self-hosted runner configured in an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<Runner> enterpriseAdminGetSelfHostedRunnerForEnterprise(String enterprise, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
          apiClient.deserialize(response.body, 'Runner') as Runner ;
    } else {
      return null;
    }
  }
  /// Get a self-hosted runner group for an enterprise
  ///
  /// Gets a specific self-hosted runner group for an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<RunnerGroupsEnterprise> enterpriseAdminGetSelfHostedRunnerGroupForEnterprise(String enterprise, int runnerGroupId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
          apiClient.deserialize(response.body, 'RunnerGroupsEnterprise') as RunnerGroupsEnterprise ;
    } else {
      return null;
    }
  }
  /// List organization access to a self-hosted runner group in an enterprise
  ///
  /// Lists the organizations with access to a self-hosted runner group.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<InlineResponse2002> enterpriseAdminListOrgAccessToSelfHostedRunnerGroupInEnterprise(String enterprise, int runnerGroupId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2002') as InlineResponse2002 ;
    } else {
      return null;
    }
  }
  /// List provisioned SCIM groups for an enterprise
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.
  Future<ScimGroupListEnterprise> enterpriseAdminListProvisionedGroupsEnterprise(String enterprise, { int startIndex, int count }) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Groups".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startIndex != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startIndex", startIndex));
    }
    if(count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "count", count));
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
          apiClient.deserialize(response.body, 'ScimGroupListEnterprise') as ScimGroupListEnterprise ;
    } else {
      return null;
    }
  }
  /// List SCIM provisioned identities for an enterprise
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Retrieves a paginated list of all provisioned enterprise members, including pending invitations.  When a user with a SAML-provisioned external identity leaves (or is removed from) an enterprise, the account&#x27;s metadata is immediately removed. However, the returned list of user accounts might not always match the organization or enterprise member list you see on GitHub. This can happen in certain cases where an external identity associated with an organization will not match an organization member:   - When a user with a SCIM-provisioned external identity is removed from an enterprise, the account&#x27;s metadata is preserved to allow the user to re-join the organization in the future.   - When inviting a user to join an organization, you can expect to see their external identity in the results before they accept the invitation, or if the invitation is cancelled (or never accepted).   - When a user is invited over SCIM, an external identity is created that matches with the invitee&#x27;s email address. However, this identity is only linked to a user account when the user accepts the invitation by going through SAML SSO.  The returned list of external identities can include an entry for a &#x60;null&#x60; user. These are unlinked SAML identities that are created when a user goes through the following Single Sign-On (SSO) process but does not sign in to their GitHub account after completing SSO:  1. The user is granted access by the IdP and is not a member of the GitHub enterprise.  1. The user attempts to access the GitHub enterprise and initiates the SAML SSO process, and is not currently signed in to their GitHub account.  1. After successfully authenticating with the SAML SSO IdP, the &#x60;null&#x60; external identity entry is created and the user is prompted to sign in to their GitHub account:    - If the user signs in, their GitHub account is linked to this entry.    - If the user does not sign in (or does not create a new account when prompted), they are not added to the GitHub enterprise, and the external identity &#x60;null&#x60; entry remains in place.
  Future<ScimUserListEnterprise> enterpriseAdminListProvisionedIdentitiesEnterprise(String enterprise, { int startIndex, int count }) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Users".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startIndex != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startIndex", startIndex));
    }
    if(count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "count", count));
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
          apiClient.deserialize(response.body, 'ScimUserListEnterprise') as ScimUserListEnterprise ;
    } else {
      return null;
    }
  }
  /// List runner applications for an enterprise
  ///
  /// Lists binaries for the runner application that you can download and run.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<List<RunnerApplication>> enterpriseAdminListRunnerApplicationsForEnterprise(String enterprise) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runners/downloads".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
        (apiClient.deserialize(response.body, 'List<RunnerApplication>') as List).map((item) => item as RunnerApplication).toList();
    } else {
      return null;
    }
  }
  /// List selected organizations enabled for GitHub Actions in an enterprise
  ///
  /// Lists the organizations that are selected to have GitHub Actions enabled in an enterprise. To use this endpoint, the enterprise permission policy for &#x60;enabled_organizations&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\&quot;  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<InlineResponse2002> enterpriseAdminListSelectedOrganizationsEnabledGithubActionsEnterprise(String enterprise, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/permissions/organizations".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2002') as InlineResponse2002 ;
    } else {
      return null;
    }
  }
  /// List self-hosted runner groups for an enterprise
  ///
  /// Lists all self-hosted runner groups for an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<InlineResponse2003> enterpriseAdminListSelfHostedRunnerGroupsForEnterprise(String enterprise, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2003') as InlineResponse2003 ;
    } else {
      return null;
    }
  }
  /// List self-hosted runners for an enterprise
  ///
  /// Lists all self-hosted runners configured for an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<InlineResponse2004> enterpriseAdminListSelfHostedRunnersForEnterprise(String enterprise, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runners".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2004') as InlineResponse2004 ;
    } else {
      return null;
    }
  }
  /// List self-hosted runners in a group for an enterprise
  ///
  /// Lists the self-hosted runners that are in a specific enterprise group.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<InlineResponse2004> enterpriseAdminListSelfHostedRunnersInGroupForEnterprise(String enterprise, int runnerGroupId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2004') as InlineResponse2004 ;
    } else {
      return null;
    }
  }
  /// Provision a SCIM enterprise group and invite users
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Provision an enterprise group, and invite users to the group. This sends invitation emails to the email address of the invited users to join the GitHub organization that the SCIM group corresponds to.
  Future<ScimEnterpriseGroup> enterpriseAdminProvisionAndInviteEnterpriseGroup(String enterprise, { Body143 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Groups".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'ScimEnterpriseGroup') as ScimEnterpriseGroup ;
    } else {
      return null;
    }
  }
  /// Provision and invite a SCIM enterprise user
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Provision enterprise membership for a user, and send organization invitation emails to the email address.  You can optionally include the groups a user will be invited to join. If you do not provide a list of &#x60;groups&#x60;, the user is provisioned for the enterprise, but no organization invitation emails will be sent.
  Future<ScimEnterpriseUser> enterpriseAdminProvisionAndInviteEnterpriseUser(String enterprise, { Body146 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Users".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'ScimEnterpriseUser') as ScimEnterpriseUser ;
    } else {
      return null;
    }
  }
  /// Remove organization access to a self-hosted runner group in an enterprise
  ///
  /// Removes an organization from the list of selected organizations that can access a self-hosted runner group. The runner group must have &#x60;visibility&#x60; set to &#x60;selected&#x60;. For more information, see \&quot;[Create a self-hosted runner group for an enterprise](#create-a-self-hosted-runner-group-for-an-enterprise).\&quot;  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminRemoveOrgAccessToSelfHostedRunnerGroupInEnterprise(String enterprise, int runnerGroupId, int orgId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }
    if(orgId == null) {
     throw new ApiException(400, "Missing required param: orgId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations/{org_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString()).replaceAll("{" + "org_id" + "}", orgId.toString());

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
  /// Remove a self-hosted runner from a group for an enterprise
  ///
  /// Removes a self-hosted runner from a group configured in an enterprise. The runner is then returned to the default group.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminRemoveSelfHostedRunnerFromGroupForEnterprise(String enterprise, int runnerGroupId, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Set allowed actions for an enterprise
  ///
  /// Sets the actions that are allowed in an enterprise. To use this endpoint, the enterprise permission policy for &#x60;allowed_actions&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\&quot;  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminSetAllowedActionsEnterprise(String enterprise, { SelectedActions body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/permissions/selected-actions".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
  /// Set GitHub Actions permissions for an enterprise
  ///
  /// Sets the GitHub Actions permissions policy for organizations and allowed actions in an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminSetGithubActionsPermissionsEnterprise(String enterprise, { Body11 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/permissions".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
  /// Set SCIM information for a provisioned enterprise group
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Replaces an existing provisioned group’s information. You must provide all the information required for the group as if you were provisioning it for the first time. Any existing group information that you don&#x27;t provide will be removed, including group membership. If you want to only update a specific attribute, use the [Update an attribute for a SCIM enterprise group](#update-an-attribute-for-a-scim-enterprise-group) endpoint instead.
  Future<ScimEnterpriseGroup> enterpriseAdminSetInformationForProvisionedEnterpriseGroup(String enterprise, String scimGroupId, { Body144 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(scimGroupId == null) {
     throw new ApiException(400, "Missing required param: scimGroupId");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "scim_group_id" + "}", scimGroupId.toString());

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
          apiClient.deserialize(response.body, 'ScimEnterpriseGroup') as ScimEnterpriseGroup ;
    } else {
      return null;
    }
  }
  /// Set SCIM information for a provisioned enterprise user
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Replaces an existing provisioned user&#x27;s information. You must provide all the information required for the user as if you were provisioning them for the first time. Any existing user information that you don&#x27;t provide will be removed. If you want to only update a specific attribute, use the [Update an attribute for a SCIM user](#update-an-attribute-for-an-enterprise-scim-user) endpoint instead.  You must at least provide the required values for the user: &#x60;userName&#x60;, &#x60;name&#x60;, and &#x60;emails&#x60;.  **Warning:** Setting &#x60;active: false&#x60; removes the user from the enterprise, deletes the external identity, and deletes the associated &#x60;{scim_user_id}&#x60;.
  Future<ScimEnterpriseUser> enterpriseAdminSetInformationForProvisionedEnterpriseUser(String enterprise, String scimUserId, { Body147 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(scimUserId == null) {
     throw new ApiException(400, "Missing required param: scimUserId");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "scim_user_id" + "}", scimUserId.toString());

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
          apiClient.deserialize(response.body, 'ScimEnterpriseUser') as ScimEnterpriseUser ;
    } else {
      return null;
    }
  }
  /// Set organization access for a self-hosted runner group in an enterprise
  ///
  /// Replaces the list of organizations that have access to a self-hosted runner configured in an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminSetOrgAccessToSelfHostedRunnerGroupInEnterprise(String enterprise, int runnerGroupId, { Body15 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/organizations".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
  /// Set selected organizations enabled for GitHub Actions in an enterprise
  ///
  /// Replaces the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for &#x60;enabled_organizations&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise).\&quot;  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminSetSelectedOrganizationsEnabledGithubActionsEnterprise(String enterprise, { Body12 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/permissions/organizations".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
  /// Set self-hosted runners in a group for an enterprise
  ///
  /// Replaces the list of self-hosted runners that that are part of an enterprise runner group.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future enterpriseAdminSetSelfHostedRunnersInGroupForEnterprise(String enterprise, int runnerGroupId, { Body16 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}/runners".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
  /// Update an attribute for a SCIM enterprise group
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Allows you to change a provisioned group’s individual attributes. To change a group’s values, you must provide a specific Operations JSON format that contains at least one of the add, remove, or replace operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).
  Future<ScimEnterpriseGroup> enterpriseAdminUpdateAttributeForEnterpriseGroup(String enterprise, String scimGroupId, { Body145 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(scimGroupId == null) {
     throw new ApiException(400, "Missing required param: scimGroupId");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Groups/{scim_group_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "scim_group_id" + "}", scimGroupId.toString());

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
          apiClient.deserialize(response.body, 'ScimEnterpriseGroup') as ScimEnterpriseGroup ;
    } else {
      return null;
    }
  }
  /// Update an attribute for a SCIM enterprise user
  ///
  /// **Note:** The SCIM API endpoints for enterprise accounts are currently in beta and are subject to change.  Allows you to change a provisioned user&#x27;s individual attributes. To change a user&#x27;s values, you must provide a specific &#x60;Operations&#x60; JSON format that contains at least one of the &#x60;add&#x60;, &#x60;remove&#x60;, or &#x60;replace&#x60; operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).  **Note:** Complicated SCIM &#x60;path&#x60; selectors that include filters are not supported. For example, a &#x60;path&#x60; selector defined as &#x60;\&quot;path\&quot;: \&quot;emails[type eq \\\&quot;work\\\&quot;]\&quot;&#x60; will not work.  **Warning:** If you set &#x60;active:false&#x60; using the &#x60;replace&#x60; operation (as shown in the JSON example below), it removes the user from the enterprise, deletes the external identity, and deletes the associated &#x60;:scim_user_id&#x60;.  &#x60;&#x60;&#x60; {   \&quot;Operations\&quot;:[{     \&quot;op\&quot;:\&quot;replace\&quot;,     \&quot;value\&quot;:{       \&quot;active\&quot;:false     }   }] } &#x60;&#x60;&#x60;
  Future<ScimEnterpriseUser> enterpriseAdminUpdateAttributeForEnterpriseUser(String enterprise, String scimUserId, { Body148 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(scimUserId == null) {
     throw new ApiException(400, "Missing required param: scimUserId");
    }

    // create path and map variables
    String path = "/scim/v2/enterprises/{enterprise}/Users/{scim_user_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "scim_user_id" + "}", scimUserId.toString());

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
          apiClient.deserialize(response.body, 'ScimEnterpriseUser') as ScimEnterpriseUser ;
    } else {
      return null;
    }
  }
  /// Update a self-hosted runner group for an enterprise
  ///
  /// Updates the &#x60;name&#x60; and &#x60;visibility&#x60; of a self-hosted runner group in an enterprise.  You must authenticate using an access token with the &#x60;admin:enterprise&#x60; scope to use this endpoint.
  Future<RunnerGroupsEnterprise> enterpriseAdminUpdateSelfHostedRunnerGroupForEnterprise(String enterprise, int runnerGroupId, { Body14 body }) async {
    Object postBody = body;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/actions/runner-groups/{runner_group_id}".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
          apiClient.deserialize(response.body, 'RunnerGroupsEnterprise') as RunnerGroupsEnterprise ;
    } else {
      return null;
    }
  }
}

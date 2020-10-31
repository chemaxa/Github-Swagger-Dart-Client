part of swagger.api;



class ScimApi {
  final ApiClient apiClient;

  ScimApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete a SCIM user from an organization
  ///
  /// 
  Future scimDeleteUserFromOrg(String org, String scimUserId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(scimUserId == null) {
     throw new ApiException(400, "Missing required param: scimUserId");
    }

    // create path and map variables
    String path = "/scim/v2/organizations/{org}/Users/{scim_user_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "scim_user_id" + "}", scimUserId.toString());

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
  /// Get SCIM provisioning information for a user
  ///
  /// 
  Future<ScimUser> scimGetProvisioningInformationForUser(String org, String scimUserId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(scimUserId == null) {
     throw new ApiException(400, "Missing required param: scimUserId");
    }

    // create path and map variables
    String path = "/scim/v2/organizations/{org}/Users/{scim_user_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "scim_user_id" + "}", scimUserId.toString());

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
          apiClient.deserialize(response.body, 'ScimUser') as ScimUser ;
    } else {
      return null;
    }
  }
  /// List SCIM provisioned identities
  ///
  /// Retrieves a paginated list of all provisioned organization members, including pending invitations. If you provide the &#x60;filter&#x60; parameter, the resources for all matching provisions members are returned.  When a user with a SAML-provisioned external identity leaves (or is removed from) an organization, the account&#x27;s metadata is immediately removed. However, the returned list of user accounts might not always match the organization or enterprise member list you see on GitHub. This can happen in certain cases where an external identity associated with an organization will not match an organization member:   - When a user with a SCIM-provisioned external identity is removed from an organization, the account&#x27;s metadata is preserved to allow the user to re-join the organization in the future.   - When inviting a user to join an organization, you can expect to see their external identity in the results before they accept the invitation, or if the invitation is cancelled (or never accepted).   - When a user is invited over SCIM, an external identity is created that matches with the invitee&#x27;s email address. However, this identity is only linked to a user account when the user accepts the invitation by going through SAML SSO.  The returned list of external identities can include an entry for a &#x60;null&#x60; user. These are unlinked SAML identities that are created when a user goes through the following Single Sign-On (SSO) process but does not sign in to their GitHub account after completing SSO:  1. The user is granted access by the IdP and is not a member of the GitHub organization.  1. The user attempts to access the GitHub organization and initiates the SAML SSO process, and is not currently signed in to their GitHub account.  1. After successfully authenticating with the SAML SSO IdP, the &#x60;null&#x60; external identity entry is created and the user is prompted to sign in to their GitHub account:    - If the user signs in, their GitHub account is linked to this entry.    - If the user does not sign in (or does not create a new account when prompted), they are not added to the GitHub organization, and the external identity &#x60;null&#x60; entry remains in place.
  Future<ScimUserList> scimListProvisionedIdentities(String org, { int startIndex, int count, String filter }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/scim/v2/organizations/{org}/Users".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filter", filter));
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
          apiClient.deserialize(response.body, 'ScimUserList') as ScimUserList ;
    } else {
      return null;
    }
  }
  /// Provision and invite a SCIM user
  ///
  /// Provision organization membership for a user, and send an activation email to the email address.
  Future<ScimUser> scimProvisionAndInviteUser(String org, { Body149 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/scim/v2/organizations/{org}/Users".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'ScimUser') as ScimUser ;
    } else {
      return null;
    }
  }
  /// Update a provisioned organization membership
  ///
  /// Replaces an existing provisioned user&#x27;s information. You must provide all the information required for the user as if you were provisioning them for the first time. Any existing user information that you don&#x27;t provide will be removed. If you want to only update a specific attribute, use the [Update an attribute for a SCIM user](https://developer.github.com/v3/scim/#update-an-attribute-for-a-scim-user) endpoint instead.  You must at least provide the required values for the user: &#x60;userName&#x60;, &#x60;name&#x60;, and &#x60;emails&#x60;.  **Warning:** Setting &#x60;active: false&#x60; removes the user from the organization, deletes the external identity, and deletes the associated &#x60;{scim_user_id}&#x60;.
  Future<ScimUser> scimSetInformationForProvisionedUser(String org, String scimUserId, { Body150 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(scimUserId == null) {
     throw new ApiException(400, "Missing required param: scimUserId");
    }

    // create path and map variables
    String path = "/scim/v2/organizations/{org}/Users/{scim_user_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "scim_user_id" + "}", scimUserId.toString());

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
          apiClient.deserialize(response.body, 'ScimUser') as ScimUser ;
    } else {
      return null;
    }
  }
  /// Update an attribute for a SCIM user
  ///
  /// Allows you to change a provisioned user&#x27;s individual attributes. To change a user&#x27;s values, you must provide a specific &#x60;Operations&#x60; JSON format that contains at least one of the &#x60;add&#x60;, &#x60;remove&#x60;, or &#x60;replace&#x60; operations. For examples and more information on the SCIM operations format, see the [SCIM specification](https://tools.ietf.org/html/rfc7644#section-3.5.2).  **Note:** Complicated SCIM &#x60;path&#x60; selectors that include filters are not supported. For example, a &#x60;path&#x60; selector defined as &#x60;\&quot;path\&quot;: \&quot;emails[type eq \\\&quot;work\\\&quot;]\&quot;&#x60; will not work.  **Warning:** If you set &#x60;active:false&#x60; using the &#x60;replace&#x60; operation (as shown in the JSON example below), it removes the user from the organization, deletes the external identity, and deletes the associated &#x60;:scim_user_id&#x60;.  &#x60;&#x60;&#x60; {   \&quot;Operations\&quot;:[{     \&quot;op\&quot;:\&quot;replace\&quot;,     \&quot;value\&quot;:{       \&quot;active\&quot;:false     }   }] } &#x60;&#x60;&#x60;
  Future<ScimUser> scimUpdateAttributeForUser(String org, String scimUserId, { Body151 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(scimUserId == null) {
     throw new ApiException(400, "Missing required param: scimUserId");
    }

    // create path and map variables
    String path = "/scim/v2/organizations/{org}/Users/{scim_user_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "scim_user_id" + "}", scimUserId.toString());

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
          apiClient.deserialize(response.body, 'ScimUser') as ScimUser ;
    } else {
      return null;
    }
  }
}

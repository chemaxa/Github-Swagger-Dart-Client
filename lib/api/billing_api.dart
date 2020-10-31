part of swagger.api;



class BillingApi {
  final ApiClient apiClient;

  BillingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get GitHub Actions billing for an enterprise
  ///
  /// Gets the summary of the free and paid GitHub Actions minutes used.  Paid minutes only apply to workflows in private repositories that use GitHub-hosted runners. Minutes used is listed for each GitHub-hosted runner operating system. Any job re-runs are also included in the usage. The usage does not include the multiplier for macOS and Windows runners and is not rounded up to the nearest whole minute. For more information, see \&quot;[Managing billing for GitHub Actions](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-actions)\&quot;.  The authenticated user must be an enterprise admin.
  Future<ActionsBillingUsage> billingGetGithubActionsBillingGhe(String enterprise) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/settings/billing/actions".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'ActionsBillingUsage') as ActionsBillingUsage ;
    } else {
      return null;
    }
  }
  /// Get GitHub Actions billing for an organization
  ///
  /// Gets the summary of the free and paid GitHub Actions minutes used.  Paid minutes only apply to workflows in private repositories that use GitHub-hosted runners. Minutes used is listed for each GitHub-hosted runner operating system. Any job re-runs are also included in the usage. The usage does not include the multiplier for macOS and Windows runners and is not rounded up to the nearest whole minute. For more information, see \&quot;[Managing billing for GitHub Actions](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-actions)\&quot;.  Access tokens must have the &#x60;read:org&#x60; scope.
  Future<ActionsBillingUsage> billingGetGithubActionsBillingOrg(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/settings/billing/actions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'ActionsBillingUsage') as ActionsBillingUsage ;
    } else {
      return null;
    }
  }
  /// Get GitHub Actions billing for a user
  ///
  /// Gets the summary of the free and paid GitHub Actions minutes used.  Paid minutes only apply to workflows in private repositories that use GitHub-hosted runners. Minutes used is listed for each GitHub-hosted runner operating system. Any job re-runs are also included in the usage. The usage does not include the multiplier for macOS and Windows runners and is not rounded up to the nearest whole minute. For more information, see \&quot;[Managing billing for GitHub Actions](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-actions)\&quot;.  Access tokens must have the &#x60;user&#x60; scope.
  Future<ActionsBillingUsage> billingGetGithubActionsBillingUser(String username) async {
    Object postBody = null;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/settings/billing/actions".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'ActionsBillingUsage') as ActionsBillingUsage ;
    } else {
      return null;
    }
  }
  /// Get GitHub Packages billing for an enterprise
  ///
  /// Gets the free and paid storage used for GitHub Packages in gigabytes.  Paid minutes only apply to packages stored for private repositories. For more information, see \&quot;[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\&quot;  The authenticated user must be an enterprise admin.
  Future<PackagesBillingUsage> billingGetGithubPackagesBillingGhe(String enterprise) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/settings/billing/packages".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'PackagesBillingUsage') as PackagesBillingUsage ;
    } else {
      return null;
    }
  }
  /// Get GitHub Packages billing for an organization
  ///
  /// Gets the free and paid storage usued for GitHub Packages in gigabytes.  Paid minutes only apply to packages stored for private repositories. For more information, see \&quot;[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\&quot;  Access tokens must have the &#x60;read:org&#x60; scope.
  Future<PackagesBillingUsage> billingGetGithubPackagesBillingOrg(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/settings/billing/packages".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'PackagesBillingUsage') as PackagesBillingUsage ;
    } else {
      return null;
    }
  }
  /// Get GitHub Packages billing for a user
  ///
  /// Gets the free and paid storage used for GitHub Packages in gigabytes.  Paid minutes only apply to packages stored for private repositories. For more information, see \&quot;[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\&quot;  Access tokens must have the &#x60;user&#x60; scope.
  Future<PackagesBillingUsage> billingGetGithubPackagesBillingUser(String username) async {
    Object postBody = null;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/settings/billing/packages".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'PackagesBillingUsage') as PackagesBillingUsage ;
    } else {
      return null;
    }
  }
  /// Get shared storage billing for an enterprise
  ///
  /// Gets the estimated paid and estimated total storage used for GitHub Actions and Github Packages.  Paid minutes only apply to packages stored for private repositories. For more information, see \&quot;[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\&quot;  The authenticated user must be an enterprise admin.
  Future<CombinedBillingUsage> billingGetSharedStorageBillingGhe(String enterprise) async {
    Object postBody = null;

    // verify required params are set
    if(enterprise == null) {
     throw new ApiException(400, "Missing required param: enterprise");
    }

    // create path and map variables
    String path = "/enterprises/{enterprise}/settings/billing/shared-storage".replaceAll("{format}","json").replaceAll("{" + "enterprise" + "}", enterprise.toString());

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
          apiClient.deserialize(response.body, 'CombinedBillingUsage') as CombinedBillingUsage ;
    } else {
      return null;
    }
  }
  /// Get shared storage billing for an organization
  ///
  /// Gets the estimated paid and estimated total storage used for GitHub Actions and Github Packages.  Paid minutes only apply to packages stored for private repositories. For more information, see \&quot;[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\&quot;  Access tokens must have the &#x60;read:org&#x60; scope.
  Future<CombinedBillingUsage> billingGetSharedStorageBillingOrg(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/settings/billing/shared-storage".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'CombinedBillingUsage') as CombinedBillingUsage ;
    } else {
      return null;
    }
  }
  /// Get shared storage billing for a user
  ///
  /// Gets the estimated paid and estimated total storage used for GitHub Actions and Github Packages.  Paid minutes only apply to packages stored for private repositories. For more information, see \&quot;[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages).\&quot;  Access tokens must have the &#x60;user&#x60; scope.
  Future<CombinedBillingUsage> billingGetSharedStorageBillingUser(String username) async {
    Object postBody = null;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/settings/billing/shared-storage".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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
          apiClient.deserialize(response.body, 'CombinedBillingUsage') as CombinedBillingUsage ;
    } else {
      return null;
    }
  }
}

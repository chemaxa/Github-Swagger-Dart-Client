part of swagger.api;



class ChecksApi {
  final ApiClient apiClient;

  ChecksApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a check run
  ///
  /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty &#x60;pull_requests&#x60; array.  Creates a new check run for a specific commit in a repository. Your GitHub App must have the &#x60;checks:write&#x60; permission to create check runs.  In a check suite, GitHub limits the number of check runs with the same name to 1000. Once these check runs exceed 1000, GitHub will start to automatically delete older check runs.
  Future<CheckRun> checksCreate(String owner, String repo, { Body69 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-runs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'CheckRun') as CheckRun ;
    } else {
      return null;
    }
  }
  /// Create a check suite
  ///
  /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty &#x60;pull_requests&#x60; array and a &#x60;null&#x60; value for &#x60;head_branch&#x60;.  By default, check suites are automatically created when you create a [check run](https://developer.github.com/v3/checks/runs/). You only need to use this endpoint for manually creating check suites when you&#x27;ve disabled automatic creation using \&quot;[Update repository preferences for check suites](https://developer.github.com/v3/checks/suites/#update-repository-preferences-for-check-suites)\&quot;. Your GitHub App must have the &#x60;checks:write&#x60; permission to create check suites.
  Future<CheckSuite> checksCreateSuite(String owner, String repo, { Body71 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-suites".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'CheckSuite') as CheckSuite ;
    } else {
      return null;
    }
  }
  /// Get a check run
  ///
  /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty &#x60;pull_requests&#x60; array.  Gets a single check run using its &#x60;id&#x60;. GitHub Apps must have the &#x60;checks:read&#x60; permission on a private repository or pull access to a public repository to get check runs. OAuth Apps and authenticated users must have the &#x60;repo&#x60; scope to get check runs in a private repository.
  Future<CheckRun> checksGet(String owner, String repo, int checkRunId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(checkRunId == null) {
     throw new ApiException(400, "Missing required param: checkRunId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-runs/{check_run_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "check_run_id" + "}", checkRunId.toString());

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
          apiClient.deserialize(response.body, 'CheckRun') as CheckRun ;
    } else {
      return null;
    }
  }
  /// Get a check suite
  ///
  /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty &#x60;pull_requests&#x60; array and a &#x60;null&#x60; value for &#x60;head_branch&#x60;.  Gets a single check suite using its &#x60;id&#x60;. GitHub Apps must have the &#x60;checks:read&#x60; permission on a private repository or pull access to a public repository to get check suites. OAuth Apps and authenticated users must have the &#x60;repo&#x60; scope to get check suites in a private repository.
  Future<CheckSuite> checksGetSuite(String owner, String repo, int checkSuiteId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(checkSuiteId == null) {
     throw new ApiException(400, "Missing required param: checkSuiteId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-suites/{check_suite_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "check_suite_id" + "}", checkSuiteId.toString());

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
          apiClient.deserialize(response.body, 'CheckSuite') as CheckSuite ;
    } else {
      return null;
    }
  }
  /// List check run annotations
  ///
  /// Lists annotations for a check run using the annotation &#x60;id&#x60;. GitHub Apps must have the &#x60;checks:read&#x60; permission on a private repository or pull access to a public repository to get annotations for a check run. OAuth Apps and authenticated users must have the &#x60;repo&#x60; scope to get annotations for a check run in a private repository.
  Future<List<CheckAnnotation>> checksListAnnotations(String owner, String repo, int checkRunId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(checkRunId == null) {
     throw new ApiException(400, "Missing required param: checkRunId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-runs/{check_run_id}/annotations".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "check_run_id" + "}", checkRunId.toString());

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
        (apiClient.deserialize(response.body, 'List<CheckAnnotation>') as List).map((item) => item as CheckAnnotation).toList();
    } else {
      return null;
    }
  }
  /// List check runs for a Git reference
  ///
  /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty &#x60;pull_requests&#x60; array.  Lists check runs for a commit ref. The &#x60;ref&#x60; can be a SHA, branch name, or a tag name. GitHub Apps must have the &#x60;checks:read&#x60; permission on a private repository or pull access to a public repository to get check runs. OAuth Apps and authenticated users must have the &#x60;repo&#x60; scope to get check runs in a private repository.
  Future<InlineResponse20017> checksListForRef(String owner, String repo, String ref, { String checkName, String status, String filter, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(ref == null) {
     throw new ApiException(400, "Missing required param: ref");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/commits/{ref}/check-runs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "ref" + "}", ref.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(checkName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "check_name", checkName));
    }
    if(status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "status", status));
    }
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
          apiClient.deserialize(response.body, 'InlineResponse20017') as InlineResponse20017 ;
    } else {
      return null;
    }
  }
  /// List check runs in a check suite
  ///
  /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty &#x60;pull_requests&#x60; array.  Lists check runs for a check suite using its &#x60;id&#x60;. GitHub Apps must have the &#x60;checks:read&#x60; permission on a private repository or pull access to a public repository to get check runs. OAuth Apps and authenticated users must have the &#x60;repo&#x60; scope to get check runs in a private repository.
  Future<InlineResponse20017> checksListForSuite(String owner, String repo, int checkSuiteId, { String checkName, String status, String filter, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(checkSuiteId == null) {
     throw new ApiException(400, "Missing required param: checkSuiteId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-suites/{check_suite_id}/check-runs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "check_suite_id" + "}", checkSuiteId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(checkName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "check_name", checkName));
    }
    if(status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "status", status));
    }
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
          apiClient.deserialize(response.body, 'InlineResponse20017') as InlineResponse20017 ;
    } else {
      return null;
    }
  }
  /// List check suites for a Git reference
  ///
  /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty &#x60;pull_requests&#x60; array and a &#x60;null&#x60; value for &#x60;head_branch&#x60;.  Lists check suites for a commit &#x60;ref&#x60;. The &#x60;ref&#x60; can be a SHA, branch name, or a tag name. GitHub Apps must have the &#x60;checks:read&#x60; permission on a private repository or pull access to a public repository to list check suites. OAuth Apps and authenticated users must have the &#x60;repo&#x60; scope to get check suites in a private repository.
  Future<InlineResponse20018> checksListSuitesForRef(String owner, String repo, String ref, { int appId, String checkName, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(ref == null) {
     throw new ApiException(400, "Missing required param: ref");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/commits/{ref}/check-suites".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "ref" + "}", ref.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(appId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "app_id", appId));
    }
    if(checkName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "check_name", checkName));
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
          apiClient.deserialize(response.body, 'InlineResponse20018') as InlineResponse20018 ;
    } else {
      return null;
    }
  }
  /// Rerequest a check suite
  ///
  /// Triggers GitHub to rerequest an existing check suite, without pushing new code to a repository. This endpoint will trigger the [&#x60;check_suite&#x60; webhook](https://developer.github.com/webhooks/event-payloads/#check_suite) event with the action &#x60;rerequested&#x60;. When a check suite is &#x60;rerequested&#x60;, its &#x60;status&#x60; is reset to &#x60;queued&#x60; and the &#x60;conclusion&#x60; is cleared.  To rerequest a check suite, your GitHub App must have the &#x60;checks:read&#x60; permission on a private repository or pull access to a public repository.
  Future checksRerequestSuite(String owner, String repo, int checkSuiteId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(checkSuiteId == null) {
     throw new ApiException(400, "Missing required param: checkSuiteId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-suites/{check_suite_id}/rerequest".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "check_suite_id" + "}", checkSuiteId.toString());

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
  /// Update repository preferences for check suites
  ///
  /// Changes the default automatic flow when creating check suites. By default, a check suite is automatically created each time code is pushed to a repository. When you disable the automatic creation of check suites, you can manually [Create a check suite](https://developer.github.com/v3/checks/suites/#create-a-check-suite). You must have admin permissions in the repository to set preferences for check suites.
  Future<CheckSuitePreference> checksSetSuitesPreferences(String owner, String repo, { Body72 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-suites/preferences".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'CheckSuitePreference') as CheckSuitePreference ;
    } else {
      return null;
    }
  }
  /// Update a check run
  ///
  /// **Note:** The Checks API only looks for pushes in the repository where the check suite or check run were created. Pushes to a branch in a forked repository are not detected and return an empty &#x60;pull_requests&#x60; array.  Updates a check run for a specific commit in a repository. Your GitHub App must have the &#x60;checks:write&#x60; permission to edit check runs.
  Future<CheckRun> checksUpdate(String owner, String repo, int checkRunId, { Body70 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(checkRunId == null) {
     throw new ApiException(400, "Missing required param: checkRunId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/check-runs/{check_run_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "check_run_id" + "}", checkRunId.toString());

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
          apiClient.deserialize(response.body, 'CheckRun') as CheckRun ;
    } else {
      return null;
    }
  }
}

part of swagger.api;



class CodeScanningApi {
  final ApiClient apiClient;

  CodeScanningApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a code scanning alert
  ///
  /// Gets a single code scanning alert. You must use an access token with the &#x60;security_events&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;security_events&#x60; read permission to use this endpoint.  The security &#x60;alert_number&#x60; is found at the end of the security alert&#x27;s URL. For example, the security alert ID for &#x60;https://github.com/Octo-org/octo-repo/security/code-scanning/88&#x60; is &#x60;88&#x60;.
  Future<CodeScanningAlertCodeScanningAlert> codeScanningGetAlert(String owner, String repo, int alertNumber) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(alertNumber == null) {
     throw new ApiException(400, "Missing required param: alertNumber");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "alert_number" + "}", alertNumber.toString());

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
          apiClient.deserialize(response.body, 'CodeScanningAlertCodeScanningAlert') as CodeScanningAlertCodeScanningAlert ;
    } else {
      return null;
    }
  }
  /// List code scanning alerts for a repository
  ///
  /// Lists all open code scanning alerts for the default branch (usually &#x60;master&#x60;) and protected branches in a repository. For private repos, you must use an access token with the &#x60;repo&#x60; scope. For public repos, you must use an access token with &#x60;public_repo&#x60; and &#x60;repo:security_events&#x60; scopes. GitHub Apps must have the &#x60;security_events&#x60; read permission to use this endpoint.
  Future<List<CodeScanningAlertCodeScanningAlertItems>> codeScanningListAlertsForRepo(String owner, String repo, { CodeScanningAlertState state, CodeScanningAlertRef ref }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/code-scanning/alerts".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "state", state));
    }
    if(ref != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ref", ref));
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
        (apiClient.deserialize(response.body, 'List<CodeScanningAlertCodeScanningAlertItems>') as List).map((item) => item as CodeScanningAlertCodeScanningAlertItems).toList();
    } else {
      return null;
    }
  }
  /// List recent code scanning analyses for a repository
  ///
  /// List the details of recent code scanning analyses for a repository. For private repos, you must use an access token with the &#x60;repo&#x60; scope. For public repos, you must use an access token with &#x60;public_repo&#x60; and &#x60;repo:security_events&#x60; scopes. GitHub Apps must have the &#x60;security_events&#x60; read permission to use this endpoint.
  Future<List<CodeScanningAnalysisCodeScanningAnalysis>> codeScanningListRecentAnalyses(String owner, String repo, { CodeScanningAnalysisRef ref, CodeScanningAnalysisToolName toolName }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/code-scanning/analyses".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(ref != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ref", ref));
    }
    if(toolName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tool_name", toolName));
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
        (apiClient.deserialize(response.body, 'List<CodeScanningAnalysisCodeScanningAnalysis>') as List).map((item) => item as CodeScanningAnalysisCodeScanningAnalysis).toList();
    } else {
      return null;
    }
  }
  /// Update a code scanning alert
  ///
  /// Updates the status of a single code scanning alert. For private repos, you must use an access token with the &#x60;repo&#x60; scope. For public repos, you must use an access token with &#x60;public_repo&#x60; and &#x60;repo:security_events&#x60; scopes. GitHub Apps must have the &#x60;security_events&#x60; write permission to use this endpoint.
  Future<CodeScanningAlertCodeScanningAlert> codeScanningUpdateAlert(String owner, String repo, CodeScanningAlertNumber alertNumber, { Body73 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(alertNumber == null) {
     throw new ApiException(400, "Missing required param: alertNumber");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/code-scanning/alerts/{alert_number}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "alert_number" + "}", alertNumber.toString());

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
          apiClient.deserialize(response.body, 'CodeScanningAlertCodeScanningAlert') as CodeScanningAlertCodeScanningAlert ;
    } else {
      return null;
    }
  }
  /// Upload a SARIF file
  ///
  /// Upload a SARIF file containing the results of a code scanning analysis to make the results available in a repository. For private repos, you must use an access token with the &#x60;repo&#x60; scope. For public repos, you must use an access token with &#x60;public_repo&#x60; and &#x60;repo:security_events&#x60; scopes. GitHub Apps must have the &#x60;security_events&#x60; write permission to use this endpoint.
  Future codeScanningUploadSarif(String owner, String repo, { Body74 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/code-scanning/sarifs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          ;
    } else {
      return ;
    }
  }
}

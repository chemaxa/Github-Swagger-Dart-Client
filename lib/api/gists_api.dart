part of swagger.api;



class GistsApi {
  final ApiClient apiClient;

  GistsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Check if a gist is starred
  ///
  /// 
  Future gistsCheckIsStarred(String gistId) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/star".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
  /// Create a gist
  ///
  /// Allows you to add a new gist with one or more files.  **Note:** Don&#x27;t name your files \&quot;gistfile\&quot; with a numerical suffix. This is the format of the automatic naming scheme that Gist uses internally.
  Future<GistFull> gistsCreate({ Body17 body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/gists".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GistFull') as GistFull ;
    } else {
      return null;
    }
  }
  /// Create a gist comment
  ///
  /// 
  Future<GistComment> gistsCreateComment(String gistId, { Body19 body }) async {
    Object postBody = body;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/comments".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
          apiClient.deserialize(response.body, 'GistComment') as GistComment ;
    } else {
      return null;
    }
  }
  /// Delete a gist
  ///
  /// 
  Future gistsDelete(String gistId) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
  /// Delete a gist comment
  ///
  /// 
  Future gistsDeleteComment(String gistId, int commentId) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/comments/{comment_id}".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

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
  /// Fork a gist
  ///
  /// **Note**: This was previously &#x60;/gists/:gist_id/fork&#x60;.
  Future<BaseGist> gistsFork(String gistId) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/forks".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
          apiClient.deserialize(response.body, 'BaseGist') as BaseGist ;
    } else {
      return null;
    }
  }
  /// Get a gist
  ///
  /// 
  Future<GistFull> gistsGet(String gistId) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
          apiClient.deserialize(response.body, 'GistFull') as GistFull ;
    } else {
      return null;
    }
  }
  /// Get a gist comment
  ///
  /// 
  Future<GistComment> gistsGetComment(String gistId, int commentId) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/comments/{comment_id}".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

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
          apiClient.deserialize(response.body, 'GistComment') as GistComment ;
    } else {
      return null;
    }
  }
  /// Get a gist revision
  ///
  /// 
  Future<GistFull> gistsGetRevision(String gistId, String sha) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }
    if(sha == null) {
     throw new ApiException(400, "Missing required param: sha");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/{sha}".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString()).replaceAll("{" + "sha" + "}", sha.toString());

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
          apiClient.deserialize(response.body, 'GistFull') as GistFull ;
    } else {
      return null;
    }
  }
  /// List gists for the authenticated user
  ///
  /// Lists the authenticated user&#x27;s gists or if called anonymously, this endpoint returns all public gists:
  Future<List<BaseGist>> gistsList({ String since, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/gists".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<BaseGist>') as List).map((item) => item as BaseGist).toList();
    } else {
      return null;
    }
  }
  /// List gist comments
  ///
  /// 
  Future<List<GistComment>> gistsListComments(String gistId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/comments".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
        (apiClient.deserialize(response.body, 'List<GistComment>') as List).map((item) => item as GistComment).toList();
    } else {
      return null;
    }
  }
  /// List gist commits
  ///
  /// 
  Future<List<GistCommit>> gistsListCommits(String gistId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/commits".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
        (apiClient.deserialize(response.body, 'List<GistCommit>') as List).map((item) => item as GistCommit).toList();
    } else {
      return null;
    }
  }
  /// List gists for a user
  ///
  /// Lists public gists for the specified user:
  Future<List<BaseGist>> gistsListForUser(String username, { String since, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/users/{username}/gists".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

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
        (apiClient.deserialize(response.body, 'List<BaseGist>') as List).map((item) => item as BaseGist).toList();
    } else {
      return null;
    }
  }
  /// List gist forks
  ///
  /// 
  Future<List<GistFull>> gistsListForks(String gistId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/forks".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
        (apiClient.deserialize(response.body, 'List<GistFull>') as List).map((item) => item as GistFull).toList();
    } else {
      return null;
    }
  }
  /// List public gists
  ///
  /// List public gists sorted by most recently updated to least recently updated.  Note: With [pagination](https://developer.github.com/v3/#pagination), you can fetch up to 3000 gists. For example, you can fetch 100 pages with 30 gists per page or 30 pages with 100 gists per page.
  Future<List<BaseGist>> gistsListPublic({ String since, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/gists/public".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<BaseGist>') as List).map((item) => item as BaseGist).toList();
    } else {
      return null;
    }
  }
  /// List starred gists
  ///
  /// List the authenticated user&#x27;s starred gists:
  Future<List<BaseGist>> gistsListStarred({ String since, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/gists/starred".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<BaseGist>') as List).map((item) => item as BaseGist).toList();
    } else {
      return null;
    }
  }
  /// Star a gist
  ///
  /// Note that you&#x27;ll need to set &#x60;Content-Length&#x60; to zero when calling out to this endpoint. For more information, see \&quot;[HTTP verbs](https://developer.github.com/v3/#http-verbs).\&quot;
  Future gistsStar(String gistId) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/star".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
  /// Unstar a gist
  ///
  /// 
  Future gistsUnstar(String gistId) async {
    Object postBody = null;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/star".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
  /// Update a gist
  ///
  /// Allows you to update or delete a gist file and rename gist files. Files from the previous version of the gist that aren&#x27;t explicitly changed during an edit are unchanged.
  Future<GistFull> gistsUpdate(String gistId, { Body18 body }) async {
    Object postBody = body;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString());

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
          apiClient.deserialize(response.body, 'GistFull') as GistFull ;
    } else {
      return null;
    }
  }
  /// Update a gist comment
  ///
  /// 
  Future<GistComment> gistsUpdateComment(String gistId, int commentId, { Body20 body }) async {
    Object postBody = body;

    // verify required params are set
    if(gistId == null) {
     throw new ApiException(400, "Missing required param: gistId");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/gists/{gist_id}/comments/{comment_id}".replaceAll("{format}","json").replaceAll("{" + "gist_id" + "}", gistId.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

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
          apiClient.deserialize(response.body, 'GistComment') as GistComment ;
    } else {
      return null;
    }
  }
}

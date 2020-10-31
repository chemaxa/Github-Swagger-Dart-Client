part of swagger.api;



class RateLimitApi {
  final ApiClient apiClient;

  RateLimitApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get rate limit status for the authenticated user
  ///
  /// **Note:** Accessing this endpoint does not count against your REST API rate limit.  **Note:** The &#x60;rate&#x60; object is deprecated. If you&#x27;re writing new API client code or updating existing code, you should use the &#x60;core&#x60; object instead of the &#x60;rate&#x60; object. The &#x60;core&#x60; object contains the same information that is present in the &#x60;rate&#x60; object.
  Future<RateLimitOverview> rateLimitGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/rate_limit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'RateLimitOverview') as RateLimitOverview ;
    } else {
      return null;
    }
  }
}

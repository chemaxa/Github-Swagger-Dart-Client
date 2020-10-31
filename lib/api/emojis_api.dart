part of swagger.api;



class EmojisApi {
  final ApiClient apiClient;

  EmojisApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get emojis
  ///
  /// Lists all the emojis available to use on GitHub.
  Future<Map<String, String>> emojisGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/emojis".replaceAll("{format}","json");

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
          new Map<String, String>.from(apiClient.deserialize(response.body, 'Map<String, String>')) ;
    } else {
      return null;
    }
  }
}

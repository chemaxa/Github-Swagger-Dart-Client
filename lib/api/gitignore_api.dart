part of swagger.api;



class GitignoreApi {
  final ApiClient apiClient;

  GitignoreApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get all gitignore templates
  ///
  /// List all templates available to pass as an option when [creating a repository](https://developer.github.com/v3/repos/#create-a-repository-for-the-authenticated-user).
  Future<List<String>> gitignoreGetAllTemplates() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/gitignore/templates".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<String>') as List).map((item) => item as String).toList();
    } else {
      return null;
    }
  }
  /// Get a gitignore template
  ///
  /// The API also allows fetching the source of a single template. Use the raw [media type](https://developer.github.com/v3/media/) to get the raw contents.
  Future<GitignoreTemplate> gitignoreGetTemplate(String name) async {
    Object postBody = null;

    // verify required params are set
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/gitignore/templates/{name}".replaceAll("{format}","json").replaceAll("{" + "name" + "}", name.toString());

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
          apiClient.deserialize(response.body, 'GitignoreTemplate') as GitignoreTemplate ;
    } else {
      return null;
    }
  }
}

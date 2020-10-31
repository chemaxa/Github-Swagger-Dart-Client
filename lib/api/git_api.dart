part of swagger.api;



class GitApi {
  final ApiClient apiClient;

  GitApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a blob
  ///
  /// 
  Future<ShortBlob> gitCreateBlob(String owner, String repo, { Body85 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/blobs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'ShortBlob') as ShortBlob ;
    } else {
      return null;
    }
  }
  /// Create a commit
  ///
  /// Creates a new Git [commit object](https://git-scm.com/book/en/v1/Git-Internals-Git-Objects#Commit-Objects).  **Signature verification object**  The response will include a &#x60;verification&#x60; object that describes the result of verifying the commit&#x27;s signature. The following fields are included in the &#x60;verification&#x60; object:  | Name | Type | Description | | ---- | ---- | ----------- | | &#x60;verified&#x60; | &#x60;boolean&#x60; | Indicates whether GitHub considers the signature in this commit to be verified. | | &#x60;reason&#x60; | &#x60;string&#x60; | The reason for verified value. Possible values and their meanings are enumerated in table below. | | &#x60;signature&#x60; | &#x60;string&#x60; | The signature that was extracted from the commit. | | &#x60;payload&#x60; | &#x60;string&#x60; | The value that was signed. |  These are the possible values for &#x60;reason&#x60; in the &#x60;verification&#x60; object:  | Value | Description | | ----- | ----------- | | &#x60;expired_key&#x60; | The key that made the signature is expired. | | &#x60;not_signing_key&#x60; | The \&quot;signing\&quot; flag is not among the usage flags in the GPG key that made the signature. | | &#x60;gpgverify_error&#x60; | There was an error communicating with the signature verification service. | | &#x60;gpgverify_unavailable&#x60; | The signature verification service is currently unavailable. | | &#x60;unsigned&#x60; | The object does not include a signature. | | &#x60;unknown_signature_type&#x60; | A non-PGP signature was found in the commit. | | &#x60;no_user&#x60; | No user was associated with the &#x60;committer&#x60; email address in the commit. | | &#x60;unverified_email&#x60; | The &#x60;committer&#x60; email address in the commit was associated with a user, but the email address is not verified on her/his account. | | &#x60;bad_email&#x60; | The &#x60;committer&#x60; email address in the commit is not included in the identities of the PGP key that made the signature. | | &#x60;unknown_key&#x60; | The key that made the signature has not been registered with any user&#x27;s account. | | &#x60;malformed_signature&#x60; | There was an error parsing the signature. | | &#x60;invalid&#x60; | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | &#x60;valid&#x60; | None of the above errors applied, so the signature is considered to be verified. |
  Future<GitCommit> gitCreateCommit(String owner, String repo, { Body86 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/commits".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'GitCommit') as GitCommit ;
    } else {
      return null;
    }
  }
  /// Create a reference
  ///
  /// Creates a reference for your repository. You are unable to create new references for empty repositories, even if the commit SHA-1 hash used exists. Empty repositories are repositories without branches.
  Future<GitRef> gitCreateRef(String owner, String repo, { Body87 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/refs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'GitRef') as GitRef ;
    } else {
      return null;
    }
  }
  /// Create a tag object
  ///
  /// Note that creating a tag object does not create the reference that makes a tag in Git. If you want to create an annotated tag in Git, you have to do this call to create the tag object, and then [create](https://developer.github.com/v3/git/refs/#create-a-reference) the &#x60;refs/tags/[tag]&#x60; reference. If you want to create a lightweight tag, you only have to [create](https://developer.github.com/v3/git/refs/#create-a-reference) the tag reference - this call would be unnecessary.  **Signature verification object**  The response will include a &#x60;verification&#x60; object that describes the result of verifying the commit&#x27;s signature. The following fields are included in the &#x60;verification&#x60; object:  | Name | Type | Description | | ---- | ---- | ----------- | | &#x60;verified&#x60; | &#x60;boolean&#x60; | Indicates whether GitHub considers the signature in this commit to be verified. | | &#x60;reason&#x60; | &#x60;string&#x60; | The reason for verified value. Possible values and their meanings are enumerated in table below. | | &#x60;signature&#x60; | &#x60;string&#x60; | The signature that was extracted from the commit. | | &#x60;payload&#x60; | &#x60;string&#x60; | The value that was signed. |  These are the possible values for &#x60;reason&#x60; in the &#x60;verification&#x60; object:  | Value | Description | | ----- | ----------- | | &#x60;expired_key&#x60; | The key that made the signature is expired. | | &#x60;not_signing_key&#x60; | The \&quot;signing\&quot; flag is not among the usage flags in the GPG key that made the signature. | | &#x60;gpgverify_error&#x60; | There was an error communicating with the signature verification service. | | &#x60;gpgverify_unavailable&#x60; | The signature verification service is currently unavailable. | | &#x60;unsigned&#x60; | The object does not include a signature. | | &#x60;unknown_signature_type&#x60; | A non-PGP signature was found in the commit. | | &#x60;no_user&#x60; | No user was associated with the &#x60;committer&#x60; email address in the commit. | | &#x60;unverified_email&#x60; | The &#x60;committer&#x60; email address in the commit was associated with a user, but the email address is not verified on her/his account. | | &#x60;bad_email&#x60; | The &#x60;committer&#x60; email address in the commit is not included in the identities of the PGP key that made the signature. | | &#x60;unknown_key&#x60; | The key that made the signature has not been registered with any user&#x27;s account. | | &#x60;malformed_signature&#x60; | There was an error parsing the signature. | | &#x60;invalid&#x60; | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | &#x60;valid&#x60; | None of the above errors applied, so the signature is considered to be verified. |
  Future<GitTag> gitCreateTag(String owner, String repo, { Body89 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/tags".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'GitTag') as GitTag ;
    } else {
      return null;
    }
  }
  /// Create a tree
  ///
  /// The tree creation API accepts nested entries. If you specify both a tree and a nested path modifying that tree, this endpoint will overwrite the contents of the tree with the new path contents, and create a new tree structure.  If you use this endpoint to add, delete, or modify the file contents in a tree, you will need to commit the tree and then update a branch to point to the commit. For more information see \&quot;[Create a commit](https://developer.github.com/v3/git/commits/#create-a-commit)\&quot; and \&quot;[Update a reference](https://developer.github.com/v3/git/refs/#update-a-reference).\&quot;
  Future<GitTree> gitCreateTree(String owner, String repo, { Body90 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/trees".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'GitTree') as GitTree ;
    } else {
      return null;
    }
  }
  /// Delete a reference
  ///
  /// 
  Future gitDeleteRef(String owner, String repo, String ref) async {
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
    String path = "/repos/{owner}/{repo}/git/refs/{ref}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "ref" + "}", ref.toString());

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
  /// Get a blob
  ///
  /// The &#x60;content&#x60; in the response will always be Base64 encoded.  _Note_: This API supports blobs up to 100 megabytes in size.
  Future<Blob> gitGetBlob(String owner, String repo, String fileSha) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(fileSha == null) {
     throw new ApiException(400, "Missing required param: fileSha");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/blobs/{file_sha}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "file_sha" + "}", fileSha.toString());

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
          apiClient.deserialize(response.body, 'Blob') as Blob ;
    } else {
      return null;
    }
  }
  /// Get a commit
  ///
  /// Gets a Git [commit object](https://git-scm.com/book/en/v1/Git-Internals-Git-Objects#Commit-Objects).  **Signature verification object**  The response will include a &#x60;verification&#x60; object that describes the result of verifying the commit&#x27;s signature. The following fields are included in the &#x60;verification&#x60; object:  | Name | Type | Description | | ---- | ---- | ----------- | | &#x60;verified&#x60; | &#x60;boolean&#x60; | Indicates whether GitHub considers the signature in this commit to be verified. | | &#x60;reason&#x60; | &#x60;string&#x60; | The reason for verified value. Possible values and their meanings are enumerated in table below. | | &#x60;signature&#x60; | &#x60;string&#x60; | The signature that was extracted from the commit. | | &#x60;payload&#x60; | &#x60;string&#x60; | The value that was signed. |  These are the possible values for &#x60;reason&#x60; in the &#x60;verification&#x60; object:  | Value | Description | | ----- | ----------- | | &#x60;expired_key&#x60; | The key that made the signature is expired. | | &#x60;not_signing_key&#x60; | The \&quot;signing\&quot; flag is not among the usage flags in the GPG key that made the signature. | | &#x60;gpgverify_error&#x60; | There was an error communicating with the signature verification service. | | &#x60;gpgverify_unavailable&#x60; | The signature verification service is currently unavailable. | | &#x60;unsigned&#x60; | The object does not include a signature. | | &#x60;unknown_signature_type&#x60; | A non-PGP signature was found in the commit. | | &#x60;no_user&#x60; | No user was associated with the &#x60;committer&#x60; email address in the commit. | | &#x60;unverified_email&#x60; | The &#x60;committer&#x60; email address in the commit was associated with a user, but the email address is not verified on her/his account. | | &#x60;bad_email&#x60; | The &#x60;committer&#x60; email address in the commit is not included in the identities of the PGP key that made the signature. | | &#x60;unknown_key&#x60; | The key that made the signature has not been registered with any user&#x27;s account. | | &#x60;malformed_signature&#x60; | There was an error parsing the signature. | | &#x60;invalid&#x60; | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | &#x60;valid&#x60; | None of the above errors applied, so the signature is considered to be verified. |
  Future<GitCommit> gitGetCommit(String owner, String repo, String commitSha) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commitSha == null) {
     throw new ApiException(400, "Missing required param: commitSha");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/commits/{commit_sha}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "commit_sha" + "}", commitSha.toString());

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
          apiClient.deserialize(response.body, 'GitCommit') as GitCommit ;
    } else {
      return null;
    }
  }
  /// Get a reference
  ///
  /// Returns a single reference from your Git database. The &#x60;:ref&#x60; in the URL must be formatted as &#x60;heads/&lt;branch name&gt;&#x60; for branches and &#x60;tags/&lt;tag name&gt;&#x60; for tags. If the &#x60;:ref&#x60; doesn&#x27;t match an existing ref, a &#x60;404&#x60; is returned.  **Note:** You need to explicitly [request a pull request](https://developer.github.com/v3/pulls/#get-a-pull-request) to trigger a test merge commit, which checks the mergeability of pull requests. For more information, see \&quot;[Checking mergeability of pull requests](https://developer.github.com/v3/git/#checking-mergeability-of-pull-requests)\&quot;.
  Future<GitRef> gitGetRef(String owner, String repo, String ref) async {
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
    String path = "/repos/{owner}/{repo}/git/ref/{ref}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "ref" + "}", ref.toString());

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
          apiClient.deserialize(response.body, 'GitRef') as GitRef ;
    } else {
      return null;
    }
  }
  /// Get a tag
  ///
  /// **Signature verification object**  The response will include a &#x60;verification&#x60; object that describes the result of verifying the commit&#x27;s signature. The following fields are included in the &#x60;verification&#x60; object:  | Name | Type | Description | | ---- | ---- | ----------- | | &#x60;verified&#x60; | &#x60;boolean&#x60; | Indicates whether GitHub considers the signature in this commit to be verified. | | &#x60;reason&#x60; | &#x60;string&#x60; | The reason for verified value. Possible values and their meanings are enumerated in table below. | | &#x60;signature&#x60; | &#x60;string&#x60; | The signature that was extracted from the commit. | | &#x60;payload&#x60; | &#x60;string&#x60; | The value that was signed. |  These are the possible values for &#x60;reason&#x60; in the &#x60;verification&#x60; object:  | Value | Description | | ----- | ----------- | | &#x60;expired_key&#x60; | The key that made the signature is expired. | | &#x60;not_signing_key&#x60; | The \&quot;signing\&quot; flag is not among the usage flags in the GPG key that made the signature. | | &#x60;gpgverify_error&#x60; | There was an error communicating with the signature verification service. | | &#x60;gpgverify_unavailable&#x60; | The signature verification service is currently unavailable. | | &#x60;unsigned&#x60; | The object does not include a signature. | | &#x60;unknown_signature_type&#x60; | A non-PGP signature was found in the commit. | | &#x60;no_user&#x60; | No user was associated with the &#x60;committer&#x60; email address in the commit. | | &#x60;unverified_email&#x60; | The &#x60;committer&#x60; email address in the commit was associated with a user, but the email address is not verified on her/his account. | | &#x60;bad_email&#x60; | The &#x60;committer&#x60; email address in the commit is not included in the identities of the PGP key that made the signature. | | &#x60;unknown_key&#x60; | The key that made the signature has not been registered with any user&#x27;s account. | | &#x60;malformed_signature&#x60; | There was an error parsing the signature. | | &#x60;invalid&#x60; | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | &#x60;valid&#x60; | None of the above errors applied, so the signature is considered to be verified. |
  Future<GitTag> gitGetTag(String owner, String repo, String tagSha) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(tagSha == null) {
     throw new ApiException(400, "Missing required param: tagSha");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/tags/{tag_sha}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "tag_sha" + "}", tagSha.toString());

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
          apiClient.deserialize(response.body, 'GitTag') as GitTag ;
    } else {
      return null;
    }
  }
  /// Get a tree
  ///
  /// Returns a single tree using the SHA1 value for that tree.  If &#x60;truncated&#x60; is &#x60;true&#x60; in the response then the number of items in the &#x60;tree&#x60; array exceeded our maximum limit. If you need to fetch more items, use the non-recursive method of fetching trees, and fetch one sub-tree at a time.
  Future<GitTree> gitGetTree(String owner, String repo, String treeSha, { String recursive }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(treeSha == null) {
     throw new ApiException(400, "Missing required param: treeSha");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/git/trees/{tree_sha}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "tree_sha" + "}", treeSha.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(recursive != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "recursive", recursive));
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
          apiClient.deserialize(response.body, 'GitTree') as GitTree ;
    } else {
      return null;
    }
  }
  /// List matching references
  ///
  /// Returns an array of references from your Git database that match the supplied name. The &#x60;:ref&#x60; in the URL must be formatted as &#x60;heads/&lt;branch name&gt;&#x60; for branches and &#x60;tags/&lt;tag name&gt;&#x60; for tags. If the &#x60;:ref&#x60; doesn&#x27;t exist in the repository, but existing refs start with &#x60;:ref&#x60;, they will be returned as an array.  When you use this endpoint without providing a &#x60;:ref&#x60;, it will return an array of all the references from your Git database, including notes and stashes if they exist on the server. Anything in the namespace is returned, not just &#x60;heads&#x60; and &#x60;tags&#x60;.  **Note:** You need to explicitly [request a pull request](https://developer.github.com/v3/pulls/#get-a-pull-request) to trigger a test merge commit, which checks the mergeability of pull requests. For more information, see \&quot;[Checking mergeability of pull requests](https://developer.github.com/v3/git/#checking-mergeability-of-pull-requests)\&quot;.  If you request matching references for a branch named &#x60;feature&#x60; but the branch &#x60;feature&#x60; doesn&#x27;t exist, the response can still include other matching head refs that start with the word &#x60;feature&#x60;, such as &#x60;featureA&#x60; and &#x60;featureB&#x60;.
  Future<List<GitRef>> gitListMatchingRefs(String owner, String repo, String ref, { int perPage, int page }) async {
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
    String path = "/repos/{owner}/{repo}/git/matching-refs/{ref}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "ref" + "}", ref.toString());

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
        (apiClient.deserialize(response.body, 'List<GitRef>') as List).map((item) => item as GitRef).toList();
    } else {
      return null;
    }
  }
  /// Update a reference
  ///
  /// 
  Future<GitRef> gitUpdateRef(String owner, String repo, String ref, { Body88 body }) async {
    Object postBody = body;

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
    String path = "/repos/{owner}/{repo}/git/refs/{ref}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "ref" + "}", ref.toString());

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
          apiClient.deserialize(response.body, 'GitRef') as GitRef ;
    } else {
      return null;
    }
  }
}

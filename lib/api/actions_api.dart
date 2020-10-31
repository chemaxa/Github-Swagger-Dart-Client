part of swagger.api;



class ActionsApi {
  final ApiClient apiClient;

  ActionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add repository access to a self-hosted runner group in an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;   Adds a repository to the list of selected repositories that can access a self-hosted runner group. The runner group must have &#x60;visibility&#x60; set to &#x60;selected&#x60;. For more information, see \&quot;[Create a self-hosted runner group for an organization](#create-a-self-hosted-runner-group-for-an-organization).\&quot;  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future actionsAddRepoAccessToSelfHostedRunnerGroupInOrg(String org, int runnerGroupId, int repositoryId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }
    if(repositoryId == null) {
     throw new ApiException(400, "Missing required param: repositoryId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString()).replaceAll("{" + "repository_id" + "}", repositoryId.toString());

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
  /// Add selected repository to an organization secret
  ///
  /// Adds a repository to an organization secret when the &#x60;visibility&#x60; for repository access is set to &#x60;selected&#x60;. The visibility is set when you [Create or update an organization secret](https://developer.github.com/v3/actions/secrets/#create-or-update-an-organization-secret). You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.
  Future actionsAddSelectedRepoToOrgSecret(String org, String secretName, int repositoryId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }
    if(repositoryId == null) {
     throw new ApiException(400, "Missing required param: repositoryId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString()).replaceAll("{" + "repository_id" + "}", repositoryId.toString());

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
  /// Add a self-hosted runner to a group for an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;   Adds a self-hosted runner to a runner group configured in an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future actionsAddSelfHostedRunnerToGroupForOrg(String org, int runnerGroupId, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Cancel a workflow run
  ///
  /// Cancels a workflow run using its &#x60;id&#x60;. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;actions:write&#x60; permission to use this endpoint.
  Future actionsCancelWorkflowRun(String owner, String repo, int runId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}/cancel".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

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
  /// Create or update an organization secret
  ///
  /// Creates or updates an organization secret with an encrypted value. Encrypt your secret using [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages). You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.  #### Example encrypting a secret using Node.js  Encrypt your secret using the [tweetsodium](https://github.com/github/tweetsodium) library.  &#x60;&#x60;&#x60; const sodium &#x3D; require(&#x27;tweetsodium&#x27;);  const key &#x3D; \&quot;base64-encoded-public-key\&quot;; const value &#x3D; \&quot;plain-text-secret\&quot;;  // Convert the message and key to Uint8Array&#x27;s (Buffer implements that interface) const messageBytes &#x3D; Buffer.from(value); const keyBytes &#x3D; Buffer.from(key, &#x27;base64&#x27;);  // Encrypt using LibSodium. const encryptedBytes &#x3D; sodium.seal(messageBytes, keyBytes);  // Base64 the encrypted secret const encrypted &#x3D; Buffer.from(encryptedBytes).toString(&#x27;base64&#x27;);  console.log(encrypted); &#x60;&#x60;&#x60;   #### Example encrypting a secret using Python  Encrypt your secret using [pynacl](https://pynacl.readthedocs.io/en/stable/public/#nacl-public-sealedbox) with Python 3.  &#x60;&#x60;&#x60; from base64 import b64encode from nacl import encoding, public  def encrypt(public_key: str, secret_value: str) -&gt; str:   \&quot;\&quot;\&quot;Encrypt a Unicode string using the public key.\&quot;\&quot;\&quot;   public_key &#x3D; public.PublicKey(public_key.encode(\&quot;utf-8\&quot;), encoding.Base64Encoder())   sealed_box &#x3D; public.SealedBox(public_key)   encrypted &#x3D; sealed_box.encrypt(secret_value.encode(\&quot;utf-8\&quot;))   return b64encode(encrypted).decode(\&quot;utf-8\&quot;) &#x60;&#x60;&#x60;  #### Example encrypting a secret using C#  Encrypt your secret using the [Sodium.Core](https://www.nuget.org/packages/Sodium.Core/) package.  &#x60;&#x60;&#x60; var secretValue &#x3D; System.Text.Encoding.UTF8.GetBytes(\&quot;mySecret\&quot;); var publicKey &#x3D; Convert.FromBase64String(\&quot;2Sg8iYjAxxmI2LvUXpJjkYrMxURPc8r+dB7TJyvvcCU&#x3D;\&quot;);  var sealedPublicKeyBox &#x3D; Sodium.SealedPublicKeyBox.Create(secretValue, publicKey);  Console.WriteLine(Convert.ToBase64String(sealedPublicKeyBox)); &#x60;&#x60;&#x60;  #### Example encrypting a secret using Ruby  Encrypt your secret using the [rbnacl](https://github.com/RubyCrypto/rbnacl) gem.  &#x60;&#x60;&#x60;ruby require \&quot;rbnacl\&quot; require \&quot;base64\&quot;  key &#x3D; Base64.decode64(\&quot;+ZYvJDZMHUfBkJdyq5Zm9SKqeuBQ4sj+6sfjlH4CgG0&#x3D;\&quot;) public_key &#x3D; RbNaCl::PublicKey.new(key)  box &#x3D; RbNaCl::Boxes::Sealed.from_public_key(public_key) encrypted_secret &#x3D; box.encrypt(\&quot;my_secret\&quot;)  # Print the base64 encoded secret puts Base64.strict_encode64(encrypted_secret) &#x60;&#x60;&#x60;
  Future actionsCreateOrUpdateOrgSecret(String org, String secretName, { Body31 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets/{secret_name}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString());

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
  /// Create or update a repository secret
  ///
  /// Creates or updates a repository secret with an encrypted value. Encrypt your secret using [LibSodium](https://libsodium.gitbook.io/doc/bindings_for_other_languages). You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; repository permission to use this endpoint.  #### Example encrypting a secret using Node.js  Encrypt your secret using the [tweetsodium](https://github.com/github/tweetsodium) library.  &#x60;&#x60;&#x60; const sodium &#x3D; require(&#x27;tweetsodium&#x27;);  const key &#x3D; \&quot;base64-encoded-public-key\&quot;; const value &#x3D; \&quot;plain-text-secret\&quot;;  // Convert the message and key to Uint8Array&#x27;s (Buffer implements that interface) const messageBytes &#x3D; Buffer.from(value); const keyBytes &#x3D; Buffer.from(key, &#x27;base64&#x27;);  // Encrypt using LibSodium. const encryptedBytes &#x3D; sodium.seal(messageBytes, keyBytes);  // Base64 the encrypted secret const encrypted &#x3D; Buffer.from(encryptedBytes).toString(&#x27;base64&#x27;);  console.log(encrypted); &#x60;&#x60;&#x60;   #### Example encrypting a secret using Python  Encrypt your secret using [pynacl](https://pynacl.readthedocs.io/en/stable/public/#nacl-public-sealedbox) with Python 3.  &#x60;&#x60;&#x60; from base64 import b64encode from nacl import encoding, public  def encrypt(public_key: str, secret_value: str) -&gt; str:   \&quot;\&quot;\&quot;Encrypt a Unicode string using the public key.\&quot;\&quot;\&quot;   public_key &#x3D; public.PublicKey(public_key.encode(\&quot;utf-8\&quot;), encoding.Base64Encoder())   sealed_box &#x3D; public.SealedBox(public_key)   encrypted &#x3D; sealed_box.encrypt(secret_value.encode(\&quot;utf-8\&quot;))   return b64encode(encrypted).decode(\&quot;utf-8\&quot;) &#x60;&#x60;&#x60;  #### Example encrypting a secret using C#  Encrypt your secret using the [Sodium.Core](https://www.nuget.org/packages/Sodium.Core/) package.  &#x60;&#x60;&#x60; var secretValue &#x3D; System.Text.Encoding.UTF8.GetBytes(\&quot;mySecret\&quot;); var publicKey &#x3D; Convert.FromBase64String(\&quot;2Sg8iYjAxxmI2LvUXpJjkYrMxURPc8r+dB7TJyvvcCU&#x3D;\&quot;);  var sealedPublicKeyBox &#x3D; Sodium.SealedPublicKeyBox.Create(secretValue, publicKey);  Console.WriteLine(Convert.ToBase64String(sealedPublicKeyBox)); &#x60;&#x60;&#x60;  #### Example encrypting a secret using Ruby  Encrypt your secret using the [rbnacl](https://github.com/RubyCrypto/rbnacl) gem.  &#x60;&#x60;&#x60;ruby require \&quot;rbnacl\&quot; require \&quot;base64\&quot;  key &#x3D; Base64.decode64(\&quot;+ZYvJDZMHUfBkJdyq5Zm9SKqeuBQ4sj+6sfjlH4CgG0&#x3D;\&quot;) public_key &#x3D; RbNaCl::PublicKey.new(key)  box &#x3D; RbNaCl::Boxes::Sealed.from_public_key(public_key) encrypted_secret &#x3D; box.encrypt(\&quot;my_secret\&quot;)  # Print the base64 encoded secret puts Base64.strict_encode64(encrypted_secret) &#x60;&#x60;&#x60;
  Future actionsCreateOrUpdateRepoSecret(String owner, String repo, String secretName, { Body64 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/secrets/{secret_name}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString());

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
  /// Create a registration token for an organization
  ///
  /// Returns a token that you can pass to the &#x60;config&#x60; script. The token expires after one hour.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.  #### Example using registration token  Configure your self-hosted runner, replacing &#x60;TOKEN&#x60; with the registration token provided by this endpoint.  &#x60;&#x60;&#x60; ./config.sh --url https://github.com/octo-org --token TOKEN &#x60;&#x60;&#x60;
  Future<AuthenticationToken> actionsCreateRegistrationTokenForOrg(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runners/registration-token".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
  /// Create a registration token for a repository
  ///
  /// Returns a token that you can pass to the &#x60;config&#x60; script. The token expires after one hour. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint.  #### Example using registration token   Configure your self-hosted runner, replacing &#x60;TOKEN&#x60; with the registration token provided by this endpoint.  &#x60;&#x60;&#x60; ./config.sh --url https://github.com/octo-org/octo-repo-artifacts --token TOKEN &#x60;&#x60;&#x60;
  Future<AuthenticationToken> actionsCreateRegistrationTokenForRepo(String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runners/registration-token".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Create a remove token for an organization
  ///
  /// Returns a token that you can pass to the &#x60;config&#x60; script to remove a self-hosted runner from an organization. The token expires after one hour.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.  #### Example using remove token  To remove your self-hosted runner from an organization, replace &#x60;TOKEN&#x60; with the remove token provided by this endpoint.  &#x60;&#x60;&#x60; ./config.sh remove --token TOKEN &#x60;&#x60;&#x60;
  Future<AuthenticationToken> actionsCreateRemoveTokenForOrg(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runners/remove-token".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
  /// Create a remove token for a repository
  ///
  /// Returns a token that you can pass to remove a self-hosted runner from a repository. The token expires after one hour. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint.  #### Example using remove token   To remove your self-hosted runner from a repository, replace TOKEN with the remove token provided by this endpoint.  &#x60;&#x60;&#x60; ./config.sh remove --token TOKEN &#x60;&#x60;&#x60;
  Future<AuthenticationToken> actionsCreateRemoveTokenForRepo(String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runners/remove-token".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Create a self-hosted runner group for an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud and GitHub Enterprise Server. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Creates a new self-hosted runner group for an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<RunnerGroupsOrg> actionsCreateSelfHostedRunnerGroupForOrg(String org, { Body27 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'RunnerGroupsOrg') as RunnerGroupsOrg ;
    } else {
      return null;
    }
  }
  /// Create a workflow dispatch event
  ///
  /// You can use this endpoint to manually trigger a GitHub Actions workflow run. You can replace &#x60;workflow_id&#x60; with the workflow file name. For example, you could use &#x60;main.yaml&#x60;.  You must configure your GitHub Actions workflow to run when the [&#x60;workflow_dispatch&#x60; webhook](/developers/webhooks-and-events/webhook-events-and-payloads#workflow_dispatch) event occurs. The &#x60;inputs&#x60; are configured in the workflow file. For more information about how to configure the &#x60;workflow_dispatch&#x60; event in the workflow file, see \&quot;[Events that trigger workflows](/actions/reference/events-that-trigger-workflows#workflow_dispatch).\&quot;  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;actions:write&#x60; permission to use this endpoint. For more information, see \&quot;[Creating a personal access token for the command line](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line).\&quot;
  Future actionsCreateWorkflowDispatch(String owner, String repo, WorkflowId workflowId, { Body65 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(workflowId == null) {
     throw new ApiException(400, "Missing required param: workflowId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "workflow_id" + "}", workflowId.toString());

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
  /// Delete an artifact
  ///
  /// Deletes an artifact for a workflow run. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;actions:write&#x60; permission to use this endpoint.
  Future actionsDeleteArtifact(String owner, String repo, int artifactId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(artifactId == null) {
     throw new ApiException(400, "Missing required param: artifactId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/artifacts/{artifact_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "artifact_id" + "}", artifactId.toString());

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
  /// Delete an organization secret
  ///
  /// Deletes a secret in an organization using the secret name. You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.
  Future actionsDeleteOrgSecret(String org, String secretName) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets/{secret_name}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString());

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
  /// Delete a repository secret
  ///
  /// Deletes a secret in a repository using the secret name. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; repository permission to use this endpoint.
  Future actionsDeleteRepoSecret(String owner, String repo, String secretName) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/secrets/{secret_name}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString());

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
  /// Delete a self-hosted runner from an organization
  ///
  /// Forces the removal of a self-hosted runner from an organization. You can use this endpoint to completely remove the runner when the machine you were using no longer exists.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future actionsDeleteSelfHostedRunnerFromOrg(String org, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Delete a self-hosted runner from a repository
  ///
  /// Forces the removal of a self-hosted runner from a repository. You can use this endpoint to completely remove the runner when the machine you were using no longer exists.  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint.
  Future actionsDeleteSelfHostedRunnerFromRepo(String owner, String repo, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Delete a self-hosted runner group from an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Deletes a self-hosted runner group for an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future actionsDeleteSelfHostedRunnerGroupFromOrg(String org, int runnerGroupId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
  /// Delete a workflow run
  ///
  /// Delete a specific workflow run. Anyone with write access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:write&#x60; permission to use this endpoint.
  Future actionsDeleteWorkflowRun(String owner, String repo, int runId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

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
  /// Delete workflow run logs
  ///
  /// Deletes all logs for a workflow run. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;actions:write&#x60; permission to use this endpoint.
  Future actionsDeleteWorkflowRunLogs(String owner, String repo, int runId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}/logs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

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
  /// Disable a selected repository for GitHub Actions in an organization
  ///
  /// Removes a repository from the list of selected repositories that are enabled for GitHub Actions in an organization. To use this endpoint, the organization permission policy for &#x60;enabled_repositories&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an organization](#set-github-actions-permissions-for-an-organization).\&quot;  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; organization permission to use this API.
  Future actionsDisableSelectedRepositoryGithubActionsOrganization(String org, int repositoryId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(repositoryId == null) {
     throw new ApiException(400, "Missing required param: repositoryId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/permissions/repositories/{repository_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "repository_id" + "}", repositoryId.toString());

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
  /// Disable a workflow
  ///
  /// Disables a workflow and sets the &#x60;state&#x60; of the workflow to &#x60;disabled_manually&#x60;. You can replace &#x60;workflow_id&#x60; with the workflow file name. For example, you could use &#x60;main.yaml&#x60;.  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;actions:write&#x60; permission to use this endpoint.
  Future actionsDisableWorkflow(String owner, String repo, WorkflowId workflowId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(workflowId == null) {
     throw new ApiException(400, "Missing required param: workflowId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/workflows/{workflow_id}/disable".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "workflow_id" + "}", workflowId.toString());

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
  /// Download an artifact
  ///
  /// Gets a redirect URL to download an archive for a repository. This URL expires after 1 minute. Look for &#x60;Location:&#x60; in the response header to find the URL for the download. The &#x60;:archive_format&#x60; must be &#x60;zip&#x60;. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future actionsDownloadArtifact(String owner, String repo, int artifactId, String archiveFormat) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(artifactId == null) {
     throw new ApiException(400, "Missing required param: artifactId");
    }
    if(archiveFormat == null) {
     throw new ApiException(400, "Missing required param: archiveFormat");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/artifacts/{artifact_id}/{archive_format}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "artifact_id" + "}", artifactId.toString()).replaceAll("{" + "archive_format" + "}", archiveFormat.toString());

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
  /// Download job logs for a workflow run
  ///
  /// Gets a redirect URL to download a plain text file of logs for a workflow job. This link expires after 1 minute. Look for &#x60;Location:&#x60; in the response header to find the URL for the download. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future actionsDownloadJobLogsForWorkflowRun(String owner, String repo, int jobId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(jobId == null) {
     throw new ApiException(400, "Missing required param: jobId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/jobs/{job_id}/logs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "job_id" + "}", jobId.toString());

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
  /// Download workflow run logs
  ///
  /// Gets a redirect URL to download an archive of log files for a workflow run. This link expires after 1 minute. Look for &#x60;Location:&#x60; in the response header to find the URL for the download. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future actionsDownloadWorkflowRunLogs(String owner, String repo, int runId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}/logs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

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
  /// Enable a selected repository for GitHub Actions in an organization
  ///
  /// Adds a repository to the list of selected repositories that are enabled for GitHub Actions in an organization. To use this endpoint, the organization permission policy for &#x60;enabled_repositories&#x60; must be must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an organization](#set-github-actions-permissions-for-an-organization).\&quot;  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; organization permission to use this API.
  Future actionsEnableSelectedRepositoryGithubActionsOrganization(String org, int repositoryId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(repositoryId == null) {
     throw new ApiException(400, "Missing required param: repositoryId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/permissions/repositories/{repository_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "repository_id" + "}", repositoryId.toString());

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
  /// Enable a workflow
  ///
  /// Enables a workflow and sets the &#x60;state&#x60; of the workflow to &#x60;active&#x60;. You can replace &#x60;workflow_id&#x60; with the workflow file name. For example, you could use &#x60;main.yaml&#x60;.  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;actions:write&#x60; permission to use this endpoint.
  Future actionsEnableWorkflow(String owner, String repo, WorkflowId workflowId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(workflowId == null) {
     throw new ApiException(400, "Missing required param: workflowId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/workflows/{workflow_id}/enable".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "workflow_id" + "}", workflowId.toString());

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
  /// Get allowed actions for an organization
  ///
  /// Gets the selected actions that are allowed in an organization. To use this endpoint, the organization permission policy for &#x60;allowed_actions&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an organization](#set-github-actions-permissions-for-an-organization).\&quot;\&quot;  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; organization permission to use this API.
  Future<SelectedActions> actionsGetAllowedActionsOrganization(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/permissions/selected-actions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
  /// Get allowed actions for a repository
  ///
  /// Gets the settings for selected actions that are allowed in a repository. To use this endpoint, the repository policy for &#x60;allowed_actions&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for a repository](#set-github-actions-permissions-for-a-repository).\&quot;  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; repository permission to use this API.
  Future<SelectedActions> actionsGetAllowedActionsRepository(String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/permissions/selected-actions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Get an artifact
  ///
  /// Gets a specific artifact for a workflow run. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<Artifact> actionsGetArtifact(String owner, String repo, int artifactId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(artifactId == null) {
     throw new ApiException(400, "Missing required param: artifactId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/artifacts/{artifact_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "artifact_id" + "}", artifactId.toString());

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
          apiClient.deserialize(response.body, 'Artifact') as Artifact ;
    } else {
      return null;
    }
  }
  /// Get GitHub Actions permissions for an organization
  ///
  /// Gets the GitHub Actions permissions policy for repositories and allowed actions in an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; organization permission to use this API.
  Future<ActionsOrganizationPermissions> actionsGetGithubActionsPermissionsOrganization(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/permissions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'ActionsOrganizationPermissions') as ActionsOrganizationPermissions ;
    } else {
      return null;
    }
  }
  /// Get GitHub Actions permissions for a repository
  ///
  /// Gets the GitHub Actions permissions policy for a repository, including whether GitHub Actions is enabled and the actions allowed to run in the repository.  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; repository permission to use this API.
  Future<ActionsRepositoryPermissions> actionsGetGithubActionsPermissionsRepository(String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/permissions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'ActionsRepositoryPermissions') as ActionsRepositoryPermissions ;
    } else {
      return null;
    }
  }
  /// Get a job for a workflow run
  ///
  /// Gets a specific job in a workflow run. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<Job> actionsGetJobForWorkflowRun(String owner, String repo, int jobId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(jobId == null) {
     throw new ApiException(400, "Missing required param: jobId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/jobs/{job_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "job_id" + "}", jobId.toString());

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
          apiClient.deserialize(response.body, 'Job') as Job ;
    } else {
      return null;
    }
  }
  /// Get an organization public key
  ///
  /// Gets your public key, which you need to encrypt secrets. You need to encrypt a secret before you can create or update secrets. You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.
  Future<ActionsPublicKey> actionsGetOrgPublicKey(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets/public-key".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'ActionsPublicKey') as ActionsPublicKey ;
    } else {
      return null;
    }
  }
  /// Get an organization secret
  ///
  /// Gets a single organization secret without revealing its encrypted value. You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.
  Future<OrganizationActionsSecret> actionsGetOrgSecret(String org, String secretName) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets/{secret_name}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString());

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
          apiClient.deserialize(response.body, 'OrganizationActionsSecret') as OrganizationActionsSecret ;
    } else {
      return null;
    }
  }
  /// Get a repository public key
  ///
  /// Gets your public key, which you need to encrypt secrets. You need to encrypt a secret before you can create or update secrets. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;secrets&#x60; repository permission to use this endpoint.
  Future<ActionsPublicKey> actionsGetRepoPublicKey(String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/secrets/public-key".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'ActionsPublicKey') as ActionsPublicKey ;
    } else {
      return null;
    }
  }
  /// Get a repository secret
  ///
  /// Gets a single repository secret without revealing its encrypted value. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; repository permission to use this endpoint.
  Future<ActionsSecret> actionsGetRepoSecret(String owner, String repo, String secretName) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/secrets/{secret_name}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString());

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
          apiClient.deserialize(response.body, 'ActionsSecret') as ActionsSecret ;
    } else {
      return null;
    }
  }
  /// Get a self-hosted runner for an organization
  ///
  /// Gets a specific self-hosted runner configured in an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<Runner> actionsGetSelfHostedRunnerForOrg(String org, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Get a self-hosted runner for a repository
  ///
  /// Gets a specific self-hosted runner configured in a repository.  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint.
  Future<Runner> actionsGetSelfHostedRunnerForRepo(String owner, String repo, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Get a self-hosted runner group for an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Gets a specific self-hosted runner group for an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<RunnerGroupsOrg> actionsGetSelfHostedRunnerGroupForOrg(String org, int runnerGroupId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
          apiClient.deserialize(response.body, 'RunnerGroupsOrg') as RunnerGroupsOrg ;
    } else {
      return null;
    }
  }
  /// Get a workflow
  ///
  /// Gets a specific workflow. You can replace &#x60;workflow_id&#x60; with the workflow file name. For example, you could use &#x60;main.yaml&#x60;. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<Workflow> actionsGetWorkflow(String owner, String repo, WorkflowId workflowId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(workflowId == null) {
     throw new ApiException(400, "Missing required param: workflowId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/workflows/{workflow_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "workflow_id" + "}", workflowId.toString());

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
          apiClient.deserialize(response.body, 'Workflow') as Workflow ;
    } else {
      return null;
    }
  }
  /// Get a workflow run
  ///
  /// Gets a specific workflow run. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<WorkflowRun> actionsGetWorkflowRun(String owner, String repo, int runId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

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
          apiClient.deserialize(response.body, 'WorkflowRun') as WorkflowRun ;
    } else {
      return null;
    }
  }
  /// Get workflow run usage
  ///
  /// **Warning:** This GitHub Actions usage endpoint is currently in public beta and subject to change. For more information, see \&quot;[GitHub Actions API workflow usage](https://developer.github.com/changes/2020-05-15-actions-api-workflow-usage).\&quot;  Gets the number of billable minutes and total run time for a specific workflow run. Billable minutes only apply to workflows in private repositories that use GitHub-hosted runners. Usage is listed for each GitHub-hosted runner operating system in milliseconds. Any job re-runs are also included in the usage. The usage does not include the multiplier for macOS and Windows runners and is not rounded up to the nearest whole minute. For more information, see \&quot;[Managing billing for GitHub Actions](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-actions)\&quot;.  Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<WorkflowRunUsage> actionsGetWorkflowRunUsage(String owner, String repo, int runId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}/timing".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

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
          apiClient.deserialize(response.body, 'WorkflowRunUsage') as WorkflowRunUsage ;
    } else {
      return null;
    }
  }
  /// Get workflow usage
  ///
  /// **Warning:** This GitHub Actions usage endpoint is currently in public beta and subject to change. For more information, see \&quot;[GitHub Actions API workflow usage](https://developer.github.com/changes/2020-05-15-actions-api-workflow-usage).\&quot;  Gets the number of billable minutes used by a specific workflow during the current billing cycle. Billable minutes only apply to workflows in private repositories that use GitHub-hosted runners. Usage is listed for each GitHub-hosted runner operating system in milliseconds. Any job re-runs are also included in the usage. The usage does not include the multiplier for macOS and Windows runners and is not rounded up to the nearest whole minute. For more information, see \&quot;[Managing billing for GitHub Actions](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-actions)\&quot;.  You can replace &#x60;workflow_id&#x60; with the workflow file name. For example, you could use &#x60;main.yaml&#x60;. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<WorkflowUsage> actionsGetWorkflowUsage(String owner, String repo, WorkflowId workflowId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(workflowId == null) {
     throw new ApiException(400, "Missing required param: workflowId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/workflows/{workflow_id}/timing".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "workflow_id" + "}", workflowId.toString());

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
          apiClient.deserialize(response.body, 'WorkflowUsage') as WorkflowUsage ;
    } else {
      return null;
    }
  }
  /// List artifacts for a repository
  ///
  /// Lists all artifacts for a repository. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<InlineResponse20012> actionsListArtifactsForRepo(String owner, String repo, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/artifacts".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse20012') as InlineResponse20012 ;
    } else {
      return null;
    }
  }
  /// List jobs for a workflow run
  ///
  /// Lists jobs for a workflow run. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint. You can use parameters to narrow the list of results. For more information about using parameters, see [Parameters](https://developer.github.com/v3/#parameters).
  Future<InlineResponse20014> actionsListJobsForWorkflowRun(String owner, String repo, int runId, { String filter, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}/jobs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
          apiClient.deserialize(response.body, 'InlineResponse20014') as InlineResponse20014 ;
    } else {
      return null;
    }
  }
  /// List organization secrets
  ///
  /// Lists all secrets available in an organization without revealing their encrypted values. You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.
  Future<InlineResponse2009> actionsListOrgSecrets(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2009') as InlineResponse2009 ;
    } else {
      return null;
    }
  }
  /// List repository access to a self-hosted runner group in an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud and GitHub Enterprise Server. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Lists the repositories with access to a self-hosted runner group configured in an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<InlineResponse2006> actionsListRepoAccessToSelfHostedRunnerGroupInOrg(String org, int runnerGroupId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// List repository secrets
  ///
  /// Lists all secrets available in a repository without revealing their encrypted values. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; repository permission to use this endpoint.
  Future<InlineResponse20015> actionsListRepoSecrets(String owner, String repo, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/secrets".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse20015') as InlineResponse20015 ;
    } else {
      return null;
    }
  }
  /// List repository workflows
  ///
  /// Lists the workflows in a repository. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<InlineResponse20016> actionsListRepoWorkflows(String owner, String repo, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/workflows".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse20016') as InlineResponse20016 ;
    } else {
      return null;
    }
  }
  /// List runner applications for an organization
  ///
  /// Lists binaries for the runner application that you can download and run.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<List<RunnerApplication>> actionsListRunnerApplicationsForOrg(String org) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runners/downloads".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
  /// List runner applications for a repository
  ///
  /// Lists binaries for the runner application that you can download and run.  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint.
  Future<List<RunnerApplication>> actionsListRunnerApplicationsForRepo(String owner, String repo) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runners/downloads".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// List selected repositories for an organization secret
  ///
  /// Lists all repositories that have been selected when the &#x60;visibility&#x60; for repository access to a secret is set to &#x60;selected&#x60;. You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.
  Future<InlineResponse20010> actionsListSelectedReposForOrgSecret(String org, String secretName) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets/{secret_name}/repositories".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse20010') as InlineResponse20010 ;
    } else {
      return null;
    }
  }
  /// List selected repositories enabled for GitHub Actions in an organization
  ///
  /// Lists the selected repositories that are enabled for GitHub Actions in an organization. To use this endpoint, the organization permission policy for &#x60;enabled_repositories&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an organization](#set-github-actions-permissions-for-an-organization).\&quot;  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; organization permission to use this API.
  Future<InlineResponse2006> actionsListSelectedRepositoriesEnabledGithubActionsOrganization(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/permissions/repositories".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// List self-hosted runner groups for an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Lists all self-hosted runner groups configured in an organization and inherited from an enterprise.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<InlineResponse2007> actionsListSelfHostedRunnerGroupsForOrg(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2007') as InlineResponse2007 ;
    } else {
      return null;
    }
  }
  /// List self-hosted runners for an organization
  ///
  /// Lists all self-hosted runners configured in an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<InlineResponse2008> actionsListSelfHostedRunnersForOrg(String org, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runners".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2008') as InlineResponse2008 ;
    } else {
      return null;
    }
  }
  /// List self-hosted runners for a repository
  ///
  /// Lists all self-hosted runners configured in a repository. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint.
  Future<InlineResponse2008> actionsListSelfHostedRunnersForRepo(String owner, String repo, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runners".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2008') as InlineResponse2008 ;
    } else {
      return null;
    }
  }
  /// List self-hosted runners in a group for an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Lists self-hosted runners that are in a specific organization group.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<InlineResponse2004> actionsListSelfHostedRunnersInGroupForOrg(String org, int runnerGroupId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}/runners".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
  /// List workflow run artifacts
  ///
  /// Lists artifacts for a workflow run. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<InlineResponse20012> actionsListWorkflowRunArtifacts(String owner, String repo, int runId, { int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}/artifacts".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse20012') as InlineResponse20012 ;
    } else {
      return null;
    }
  }
  /// List workflow runs
  ///
  /// List all workflow runs for a workflow. You can replace &#x60;workflow_id&#x60; with the workflow file name. For example, you could use &#x60;main.yaml&#x60;. You can use parameters to narrow the list of results. For more information about using parameters, see [Parameters](https://developer.github.com/v3/#parameters).  Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope.
  Future<InlineResponse20013> actionsListWorkflowRuns(String owner, String repo, WorkflowId workflowId, { String actor, String branch, String event, String status, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(workflowId == null) {
     throw new ApiException(400, "Missing required param: workflowId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/workflows/{workflow_id}/runs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "workflow_id" + "}", workflowId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(actor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "actor", actor));
    }
    if(branch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "branch", branch));
    }
    if(event != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "event", event));
    }
    if(status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "status", status));
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
          apiClient.deserialize(response.body, 'InlineResponse20013') as InlineResponse20013 ;
    } else {
      return null;
    }
  }
  /// List workflow runs for a repository
  ///
  /// Lists all workflow runs for a repository. You can use parameters to narrow the list of results. For more information about using parameters, see [Parameters](https://developer.github.com/v3/#parameters).  Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the &#x60;repo&#x60; scope. GitHub Apps must have the &#x60;actions:read&#x60; permission to use this endpoint.
  Future<InlineResponse20013> actionsListWorkflowRunsForRepo(String owner, String repo, { String actor, String branch, String event, String status, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(actor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "actor", actor));
    }
    if(branch != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "branch", branch));
    }
    if(event != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "event", event));
    }
    if(status != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "status", status));
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
          apiClient.deserialize(response.body, 'InlineResponse20013') as InlineResponse20013 ;
    } else {
      return null;
    }
  }
  /// Re-run a workflow
  ///
  /// Re-runs your workflow run using its &#x60;id&#x60;. You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;actions:write&#x60; permission to use this endpoint.
  Future actionsReRunWorkflow(String owner, String repo, int runId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(runId == null) {
     throw new ApiException(400, "Missing required param: runId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/runs/{run_id}/rerun".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "run_id" + "}", runId.toString());

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
  /// Remove repository access to a self-hosted runner group in an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;   Removes a repository from the list of selected repositories that can access a self-hosted runner group. The runner group must have &#x60;visibility&#x60; set to &#x60;selected&#x60;. For more information, see \&quot;[Create a self-hosted runner group for an organization](#create-a-self-hosted-runner-group-for-an-organization).\&quot;  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future actionsRemoveRepoAccessToSelfHostedRunnerGroupInOrg(String org, int runnerGroupId, int repositoryId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }
    if(repositoryId == null) {
     throw new ApiException(400, "Missing required param: repositoryId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories/{repository_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString()).replaceAll("{" + "repository_id" + "}", repositoryId.toString());

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
  /// Remove selected repository from an organization secret
  ///
  /// Removes a repository from an organization secret when the &#x60;visibility&#x60; for repository access is set to &#x60;selected&#x60;. The visibility is set when you [Create or update an organization secret](https://developer.github.com/v3/actions/secrets/#create-or-update-an-organization-secret). You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.
  Future actionsRemoveSelectedRepoFromOrgSecret(String org, String secretName, int repositoryId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }
    if(repositoryId == null) {
     throw new ApiException(400, "Missing required param: repositoryId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets/{secret_name}/repositories/{repository_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString()).replaceAll("{" + "repository_id" + "}", repositoryId.toString());

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
  /// Remove a self-hosted runner from a group for an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;   Removes a self-hosted runner from a group configured in an organization. The runner is then returned to the default group.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future actionsRemoveSelfHostedRunnerFromGroupForOrg(String org, int runnerGroupId, int runnerId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }
    if(runnerId == null) {
     throw new ApiException(400, "Missing required param: runnerId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}/runners/{runner_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString()).replaceAll("{" + "runner_id" + "}", runnerId.toString());

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
  /// Set allowed actions for an organization
  ///
  /// Sets the actions that are allowed in an organization. To use this endpoint, the organization permission policy for &#x60;allowed_actions&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an organization](#set-github-actions-permissions-for-an-organization).\&quot;  If the organization belongs to an enterprise that has &#x60;selected&#x60; actions set at the enterprise level, then you cannot override any of the enterprise&#x27;s allowed actions settings.  To use the &#x60;patterns_allowed&#x60; setting for private repositories, the organization must belong to an enterprise. If the organization does not belong to an enterprise, then the &#x60;patterns_allowed&#x60; setting only applies to public repositories in the organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; organization permission to use this API.
  Future actionsSetAllowedActionsOrganization(String org, { SelectedActions body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/permissions/selected-actions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
  /// Set allowed actions for a repository
  ///
  /// Sets the actions that are allowed in a repository. To use this endpoint, the repository permission policy for &#x60;allowed_actions&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for a repository](#set-github-actions-permissions-for-a-repository).\&quot;  If the repository belongs to an organization or enterprise that has &#x60;selected&#x60; actions set at the organization or enterprise levels, then you cannot override any of the allowed actions settings.  To use the &#x60;patterns_allowed&#x60; setting for private repositories, the repository must belong to an enterprise. If the repository does not belong to an enterprise, then the &#x60;patterns_allowed&#x60; setting only applies to public repositories.  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; repository permission to use this API.
  Future actionsSetAllowedActionsRepository(String owner, String repo, { SelectedActions body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/permissions/selected-actions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Set GitHub Actions permissions for an organization
  ///
  /// Sets the GitHub Actions permissions policy for repositories and allowed actions in an organization.  If the organization belongs to an enterprise that has set restrictive permissions at the enterprise level, such as &#x60;allowed_actions&#x60; to &#x60;selected&#x60; actions, then you cannot override them for the organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; organization permission to use this API.
  Future actionsSetGithubActionsPermissionsOrganization(String org, { Body25 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/permissions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
  /// Set GitHub Actions permissions for a repository
  ///
  /// Sets the GitHub Actions permissions policy for enabling GitHub Actions and allowed actions in the repository.  If the repository belongs to an organization or enterprise that has set restrictive permissions at the organization or enterprise levels, such as &#x60;allowed_actions&#x60; to &#x60;selected&#x60; actions, then you cannot override them for the repository.  You must authenticate using an access token with the &#x60;repo&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; repository permission to use this API.
  Future actionsSetGithubActionsPermissionsRepository(String owner, String repo, { Body63 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/actions/permissions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString());

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
  /// Set repository access for a self-hosted runner group in an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Replaces the list of repositories that have access to a self-hosted runner group configured in an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future actionsSetRepoAccessToSelfHostedRunnerGroupInOrg(String org, int runnerGroupId, { Body29 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}/repositories".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
  /// Set selected repositories for an organization secret
  ///
  /// Replaces all repositories for an organization secret when the &#x60;visibility&#x60; for repository access is set to &#x60;selected&#x60;. The visibility is set when you [Create or update an organization secret](https://developer.github.com/v3/actions/secrets/#create-or-update-an-organization-secret). You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;secrets&#x60; organization permission to use this endpoint.
  Future actionsSetSelectedReposForOrgSecret(String org, String secretName, { Body32 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(secretName == null) {
     throw new ApiException(400, "Missing required param: secretName");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/secrets/{secret_name}/repositories".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "secret_name" + "}", secretName.toString());

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
  /// Set selected repositories enabled for GitHub Actions in an organization
  ///
  /// Replaces the list of selected repositories that are enabled for GitHub Actions in an organization. To use this endpoint, the organization permission policy for &#x60;enabled_repositories&#x60; must be configured to &#x60;selected&#x60;. For more information, see \&quot;[Set GitHub Actions permissions for an organization](#set-github-actions-permissions-for-an-organization).\&quot;  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint. GitHub Apps must have the &#x60;administration&#x60; organization permission to use this API.
  Future actionsSetSelectedRepositoriesEnabledGithubActionsOrganization(String org, { Body26 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/permissions/repositories".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString());

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
  /// Set self-hosted runners in a group for an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Replaces the list of self-hosted runners that are part of an organization runner group.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future actionsSetSelfHostedRunnersInGroupForOrg(String org, int runnerGroupId, { Body30 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}/runners".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
  /// Update a self-hosted runner group for an organization
  ///
  /// The self-hosted runner groups REST API is available with GitHub Enterprise Cloud. For more information, see \&quot;[GitHub&#x27;s products](https://docs.github.com/github/getting-started-with-github/githubs-products).\&quot;  Updates the &#x60;name&#x60; and &#x60;visibility&#x60; of a self-hosted runner group in an organization.  You must authenticate using an access token with the &#x60;admin:org&#x60; scope to use this endpoint.
  Future<RunnerGroupsOrg> actionsUpdateSelfHostedRunnerGroupForOrg(String org, int runnerGroupId, { Body28 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(runnerGroupId == null) {
     throw new ApiException(400, "Missing required param: runnerGroupId");
    }

    // create path and map variables
    String path = "/orgs/{org}/actions/runner-groups/{runner_group_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "runner_group_id" + "}", runnerGroupId.toString());

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
          apiClient.deserialize(response.body, 'RunnerGroupsOrg') as RunnerGroupsOrg ;
    } else {
      return null;
    }
  }
}

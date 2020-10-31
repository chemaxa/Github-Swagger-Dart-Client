# swagger.api.GitApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gitCreateBlob**](GitApi.md#gitCreateBlob) | **POST** /repos/{owner}/{repo}/git/blobs | Create a blob
[**gitCreateCommit**](GitApi.md#gitCreateCommit) | **POST** /repos/{owner}/{repo}/git/commits | Create a commit
[**gitCreateRef**](GitApi.md#gitCreateRef) | **POST** /repos/{owner}/{repo}/git/refs | Create a reference
[**gitCreateTag**](GitApi.md#gitCreateTag) | **POST** /repos/{owner}/{repo}/git/tags | Create a tag object
[**gitCreateTree**](GitApi.md#gitCreateTree) | **POST** /repos/{owner}/{repo}/git/trees | Create a tree
[**gitDeleteRef**](GitApi.md#gitDeleteRef) | **DELETE** /repos/{owner}/{repo}/git/refs/{ref} | Delete a reference
[**gitGetBlob**](GitApi.md#gitGetBlob) | **GET** /repos/{owner}/{repo}/git/blobs/{file_sha} | Get a blob
[**gitGetCommit**](GitApi.md#gitGetCommit) | **GET** /repos/{owner}/{repo}/git/commits/{commit_sha} | Get a commit
[**gitGetRef**](GitApi.md#gitGetRef) | **GET** /repos/{owner}/{repo}/git/ref/{ref} | Get a reference
[**gitGetTag**](GitApi.md#gitGetTag) | **GET** /repos/{owner}/{repo}/git/tags/{tag_sha} | Get a tag
[**gitGetTree**](GitApi.md#gitGetTree) | **GET** /repos/{owner}/{repo}/git/trees/{tree_sha} | Get a tree
[**gitListMatchingRefs**](GitApi.md#gitListMatchingRefs) | **GET** /repos/{owner}/{repo}/git/matching-refs/{ref} | List matching references
[**gitUpdateRef**](GitApi.md#gitUpdateRef) | **PATCH** /repos/{owner}/{repo}/git/refs/{ref} | Update a reference

# **gitCreateBlob**
> ShortBlob gitCreateBlob(owner, repo, body)

Create a blob

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body85(); // Body85 | 

try {
    var result = api_instance.gitCreateBlob(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitCreateBlob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body85**](Body85.md)|  | [optional] 

### Return type

[**ShortBlob**](ShortBlob.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitCreateCommit**
> GitCommit gitCreateCommit(owner, repo, body)

Create a commit

Creates a new Git [commit object](https://git-scm.com/book/en/v1/Git-Internals-Git-Objects#Commit-Objects).  **Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body86(); // Body86 | 

try {
    var result = api_instance.gitCreateCommit(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitCreateCommit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body86**](Body86.md)|  | [optional] 

### Return type

[**GitCommit**](GitCommit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitCreateRef**
> GitRef gitCreateRef(owner, repo, body)

Create a reference

Creates a reference for your repository. You are unable to create new references for empty repositories, even if the commit SHA-1 hash used exists. Empty repositories are repositories without branches.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body87(); // Body87 | 

try {
    var result = api_instance.gitCreateRef(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitCreateRef: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body87**](Body87.md)|  | [optional] 

### Return type

[**GitRef**](GitRef.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitCreateTag**
> GitTag gitCreateTag(owner, repo, body)

Create a tag object

Note that creating a tag object does not create the reference that makes a tag in Git. If you want to create an annotated tag in Git, you have to do this call to create the tag object, and then [create](https://developer.github.com/v3/git/refs/#create-a-reference) the `refs/tags/[tag]` reference. If you want to create a lightweight tag, you only have to [create](https://developer.github.com/v3/git/refs/#create-a-reference) the tag reference - this call would be unnecessary.  **Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body89(); // Body89 | 

try {
    var result = api_instance.gitCreateTag(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitCreateTag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body89**](Body89.md)|  | [optional] 

### Return type

[**GitTag**](GitTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitCreateTree**
> GitTree gitCreateTree(owner, repo, body)

Create a tree

The tree creation API accepts nested entries. If you specify both a tree and a nested path modifying that tree, this endpoint will overwrite the contents of the tree with the new path contents, and create a new tree structure.  If you use this endpoint to add, delete, or modify the file contents in a tree, you will need to commit the tree and then update a branch to point to the commit. For more information see \"[Create a commit](https://developer.github.com/v3/git/commits/#create-a-commit)\" and \"[Update a reference](https://developer.github.com/v3/git/refs/#update-a-reference).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body90(); // Body90 | 

try {
    var result = api_instance.gitCreateTree(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitCreateTree: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body90**](Body90.md)|  | [optional] 

### Return type

[**GitTree**](GitTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitDeleteRef**
> gitDeleteRef(owner, repo, ref)

Delete a reference

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | ref+ parameter

try {
    api_instance.gitDeleteRef(owner, repo, ref);
} catch (e) {
    print("Exception when calling GitApi->gitDeleteRef: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**| ref+ parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitGetBlob**
> Blob gitGetBlob(owner, repo, fileSha)

Get a blob

The `content` in the response will always be Base64 encoded.  _Note_: This API supports blobs up to 100 megabytes in size.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var fileSha = fileSha_example; // String | 

try {
    var result = api_instance.gitGetBlob(owner, repo, fileSha);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitGetBlob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **fileSha** | **String**|  | 

### Return type

[**Blob**](Blob.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitGetCommit**
> GitCommit gitGetCommit(owner, repo, commitSha)

Get a commit

Gets a Git [commit object](https://git-scm.com/book/en/v1/Git-Internals-Git-Objects#Commit-Objects).  **Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commitSha = commitSha_example; // String | commit_sha+ parameter

try {
    var result = api_instance.gitGetCommit(owner, repo, commitSha);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitGetCommit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commitSha** | **String**| commit_sha+ parameter | 

### Return type

[**GitCommit**](GitCommit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitGetRef**
> GitRef gitGetRef(owner, repo, ref)

Get a reference

Returns a single reference from your Git database. The `:ref` in the URL must be formatted as `heads/<branch name>` for branches and `tags/<tag name>` for tags. If the `:ref` doesn't match an existing ref, a `404` is returned.  **Note:** You need to explicitly [request a pull request](https://developer.github.com/v3/pulls/#get-a-pull-request) to trigger a test merge commit, which checks the mergeability of pull requests. For more information, see \"[Checking mergeability of pull requests](https://developer.github.com/v3/git/#checking-mergeability-of-pull-requests)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | ref+ parameter

try {
    var result = api_instance.gitGetRef(owner, repo, ref);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitGetRef: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**| ref+ parameter | 

### Return type

[**GitRef**](GitRef.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitGetTag**
> GitTag gitGetTag(owner, repo, tagSha)

Get a tag

**Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var tagSha = tagSha_example; // String | 

try {
    var result = api_instance.gitGetTag(owner, repo, tagSha);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitGetTag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **tagSha** | **String**|  | 

### Return type

[**GitTag**](GitTag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitGetTree**
> GitTree gitGetTree(owner, repo, treeSha, recursive)

Get a tree

Returns a single tree using the SHA1 value for that tree.  If `truncated` is `true` in the response then the number of items in the `tree` array exceeded our maximum limit. If you need to fetch more items, use the non-recursive method of fetching trees, and fetch one sub-tree at a time.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var treeSha = treeSha_example; // String | 
var recursive = recursive_example; // String | Setting this parameter to any value returns the objects or subtrees referenced by the tree specified in `:tree_sha`. For example, setting `recursive` to any of the following will enable returning objects or subtrees: `0`, `1`, `\"true\"`, and `\"false\"`. Omit this parameter to prevent recursively returning objects or subtrees.

try {
    var result = api_instance.gitGetTree(owner, repo, treeSha, recursive);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitGetTree: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **treeSha** | **String**|  | 
 **recursive** | **String**| Setting this parameter to any value returns the objects or subtrees referenced by the tree specified in &#x60;:tree_sha&#x60;. For example, setting &#x60;recursive&#x60; to any of the following will enable returning objects or subtrees: &#x60;0&#x60;, &#x60;1&#x60;, &#x60;\&quot;true\&quot;&#x60;, and &#x60;\&quot;false\&quot;&#x60;. Omit this parameter to prevent recursively returning objects or subtrees. | [optional] 

### Return type

[**GitTree**](GitTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitListMatchingRefs**
> List<GitRef> gitListMatchingRefs(owner, repo, ref, perPage, page)

List matching references

Returns an array of references from your Git database that match the supplied name. The `:ref` in the URL must be formatted as `heads/<branch name>` for branches and `tags/<tag name>` for tags. If the `:ref` doesn't exist in the repository, but existing refs start with `:ref`, they will be returned as an array.  When you use this endpoint without providing a `:ref`, it will return an array of all the references from your Git database, including notes and stashes if they exist on the server. Anything in the namespace is returned, not just `heads` and `tags`.  **Note:** You need to explicitly [request a pull request](https://developer.github.com/v3/pulls/#get-a-pull-request) to trigger a test merge commit, which checks the mergeability of pull requests. For more information, see \"[Checking mergeability of pull requests](https://developer.github.com/v3/git/#checking-mergeability-of-pull-requests)\".  If you request matching references for a branch named `feature` but the branch `feature` doesn't exist, the response can still include other matching head refs that start with the word `feature`, such as `featureA` and `featureB`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | ref+ parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.gitListMatchingRefs(owner, repo, ref, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitListMatchingRefs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**| ref+ parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<GitRef>**](GitRef.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gitUpdateRef**
> GitRef gitUpdateRef(owner, repo, ref, body)

Update a reference

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new GitApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | ref+ parameter
var body = new Body88(); // Body88 | 

try {
    var result = api_instance.gitUpdateRef(owner, repo, ref, body);
    print(result);
} catch (e) {
    print("Exception when calling GitApi->gitUpdateRef: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**| ref+ parameter | 
 **body** | [**Body88**](Body88.md)|  | [optional] 

### Return type

[**GitRef**](GitRef.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# swagger.api.SearchApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchCode**](SearchApi.md#searchCode) | **GET** /search/code | Search code
[**searchCommits**](SearchApi.md#searchCommits) | **GET** /search/commits | Search commits
[**searchIssuesAndPullRequests**](SearchApi.md#searchIssuesAndPullRequests) | **GET** /search/issues | Search issues and pull requests
[**searchLabels**](SearchApi.md#searchLabels) | **GET** /search/labels | Search labels
[**searchRepos**](SearchApi.md#searchRepos) | **GET** /search/repositories | Search repositories
[**searchTopics**](SearchApi.md#searchTopics) | **GET** /search/topics | Search topics
[**searchUsers**](SearchApi.md#searchUsers) | **GET** /search/users | Search users

# **searchCode**
> InlineResponse20020 searchCode(q, sort, order, perPage, page)

Search code

Searches for query terms inside of a file. This method returns up to 100 results [per page](https://developer.github.com/v3/#pagination).  When searching for code, you can get text match metadata for the file **content** and file **path** fields when you pass the `text-match` media type. For more details about how to receive highlighted search results, see [Text match metadata](https://developer.github.com/v3/search/#text-match-metadata).  For example, if you want to find the definition of the `addClass` function inside [jQuery](https://github.com/jquery/jquery) repository, your query would look something like this:  `q=addClass+in:file+language:js+repo:jquery/jquery`  This query searches for the keyword `addClass` within a file's contents. The query limits the search to files where the language is JavaScript in the `jquery/jquery` repository.  #### Considerations for code search  Due to the complexity of searching code, there are a few restrictions on how searches are performed:  *   Only the _default branch_ is considered. In most cases, this will be the `master` branch. *   Only files smaller than 384 KB are searchable. *   You must always include at least one search term when searching source code. For example, searching for [`language:go`](https://github.com/search?utf8=%E2%9C%93&q=language%3Ago&type=Code) is not valid, while [`amazing language:go`](https://github.com/search?utf8=%E2%9C%93&q=amazing+language%3Ago&type=Code) is.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var q = q_example; // String | The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \"[Searching code](https://help.github.com/articles/searching-code/)\" for a detailed list of qualifiers.
var sort = sort_example; // String | Sorts the results of your query. Can only be `indexed`, which indicates how recently a file has been indexed by the GitHub search infrastructure. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results)
var order = order_example; // String | Determines whether the first search result returned is the highest number of matches (`desc`) or lowest number of matches (`asc`). This parameter is ignored unless you provide `sort`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.searchCode(q, sort, order, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCode: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \&quot;[Searching code](https://help.github.com/articles/searching-code/)\&quot; for a detailed list of qualifiers. | 
 **sort** | **String**| Sorts the results of your query. Can only be &#x60;indexed&#x60;, which indicates how recently a file has been indexed by the GitHub search infrastructure. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results) | [optional] 
 **order** | **String**| Determines whether the first search result returned is the highest number of matches (&#x60;desc&#x60;) or lowest number of matches (&#x60;asc&#x60;). This parameter is ignored unless you provide &#x60;sort&#x60;. | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCommits**
> InlineResponse20021 searchCommits(q, sort, order, perPage, page)

Search commits

Find commits via various criteria on the default branch (usually `master`). This method returns up to 100 results [per page](https://developer.github.com/v3/#pagination).  When searching for commits, you can get text match metadata for the **message** field when you provide the `text-match` media type. For more details about how to receive highlighted search results, see [Text match metadata](https://developer.github.com/v3/search/#text-match-metadata).  For example, if you want to find commits related to CSS in the [octocat/Spoon-Knife](https://github.com/octocat/Spoon-Knife) repository. Your query would look something like this:  `q=repo:octocat/Spoon-Knife+css`

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var q = q_example; // String | The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \"[Searching commits](https://help.github.com/articles/searching-commits/)\" for a detailed list of qualifiers.
var sort = sort_example; // String | Sorts the results of your query by `author-date` or `committer-date`. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results)
var order = order_example; // String | Determines whether the first search result returned is the highest number of matches (`desc`) or lowest number of matches (`asc`). This parameter is ignored unless you provide `sort`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.searchCommits(q, sort, order, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchCommits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \&quot;[Searching commits](https://help.github.com/articles/searching-commits/)\&quot; for a detailed list of qualifiers. | 
 **sort** | **String**| Sorts the results of your query by &#x60;author-date&#x60; or &#x60;committer-date&#x60;. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results) | [optional] 
 **order** | **String**| Determines whether the first search result returned is the highest number of matches (&#x60;desc&#x60;) or lowest number of matches (&#x60;asc&#x60;). This parameter is ignored unless you provide &#x60;sort&#x60;. | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIssuesAndPullRequests**
> InlineResponse20022 searchIssuesAndPullRequests(q, sort, order, perPage, page)

Search issues and pull requests

Find issues by state and keyword. This method returns up to 100 results [per page](https://developer.github.com/v3/#pagination).  When searching for issues, you can get text match metadata for the issue **title**, issue **body**, and issue **comment body** fields when you pass the `text-match` media type. For more details about how to receive highlighted search results, see [Text match metadata](https://developer.github.com/v3/search/#text-match-metadata).  For example, if you want to find the oldest unresolved Python bugs on Windows. Your query might look something like this.  `q=windows+label:bug+language:python+state:open&sort=created&order=asc`  This query searches for the keyword `windows`, within any open issue that is labeled as `bug`. The search runs across repositories whose primary language is Python. The results are sorted by creation date in ascending order, whick means the oldest issues appear first in the search results.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var q = q_example; // String | The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \"[Searching issues and pull requests](https://help.github.com/articles/searching-issues-and-pull-requests/)\" for a detailed list of qualifiers.
var sort = sort_example; // String | Sorts the results of your query by the number of `comments`, `reactions`, `reactions-+1`, `reactions--1`, `reactions-smile`, `reactions-thinking_face`, `reactions-heart`, `reactions-tada`, or `interactions`. You can also sort results by how recently the items were `created` or `updated`, Default: [best match](https://developer.github.com/v3/search/#ranking-search-results)
var order = order_example; // String | Determines whether the first search result returned is the highest number of matches (`desc`) or lowest number of matches (`asc`). This parameter is ignored unless you provide `sort`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.searchIssuesAndPullRequests(q, sort, order, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchIssuesAndPullRequests: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \&quot;[Searching issues and pull requests](https://help.github.com/articles/searching-issues-and-pull-requests/)\&quot; for a detailed list of qualifiers. | 
 **sort** | **String**| Sorts the results of your query by the number of &#x60;comments&#x60;, &#x60;reactions&#x60;, &#x60;reactions-+1&#x60;, &#x60;reactions--1&#x60;, &#x60;reactions-smile&#x60;, &#x60;reactions-thinking_face&#x60;, &#x60;reactions-heart&#x60;, &#x60;reactions-tada&#x60;, or &#x60;interactions&#x60;. You can also sort results by how recently the items were &#x60;created&#x60; or &#x60;updated&#x60;, Default: [best match](https://developer.github.com/v3/search/#ranking-search-results) | [optional] 
 **order** | **String**| Determines whether the first search result returned is the highest number of matches (&#x60;desc&#x60;) or lowest number of matches (&#x60;asc&#x60;). This parameter is ignored unless you provide &#x60;sort&#x60;. | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchLabels**
> InlineResponse20023 searchLabels(repositoryId, q, sort, order)

Search labels

Find labels in a repository with names or descriptions that match search keywords. Returns up to 100 results [per page](https://developer.github.com/v3/#pagination).  When searching for labels, you can get text match metadata for the label **name** and **description** fields when you pass the `text-match` media type. For more details about how to receive highlighted search results, see [Text match metadata](https://developer.github.com/v3/search/#text-match-metadata).  For example, if you want to find labels in the `linguist` repository that match `bug`, `defect`, or `enhancement`. Your query might look like this:  `q=bug+defect+enhancement&repository_id=64778136`  The labels that best match the query appear first in the search results.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var repositoryId = 56; // int | The id of the repository.
var q = q_example; // String | The search keywords. This endpoint does not accept qualifiers in the query. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query).
var sort = sort_example; // String | Sorts the results of your query by when the label was `created` or `updated`. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results)
var order = order_example; // String | Determines whether the first search result returned is the highest number of matches (`desc`) or lowest number of matches (`asc`). This parameter is ignored unless you provide `sort`.

try {
    var result = api_instance.searchLabels(repositoryId, q, sort, order);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchLabels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repositoryId** | **int**| The id of the repository. | 
 **q** | **String**| The search keywords. This endpoint does not accept qualifiers in the query. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). | 
 **sort** | **String**| Sorts the results of your query by when the label was &#x60;created&#x60; or &#x60;updated&#x60;. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results) | [optional] 
 **order** | **String**| Determines whether the first search result returned is the highest number of matches (&#x60;desc&#x60;) or lowest number of matches (&#x60;asc&#x60;). This parameter is ignored unless you provide &#x60;sort&#x60;. | [optional] [default to desc]

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchRepos**
> InlineResponse20024 searchRepos(q, sort, order, perPage, page)

Search repositories

Find repositories via various criteria. This method returns up to 100 results [per page](https://developer.github.com/v3/#pagination).  When searching for repositories, you can get text match metadata for the **name** and **description** fields when you pass the `text-match` media type. For more details about how to receive highlighted search results, see [Text match metadata](https://developer.github.com/v3/search/#text-match-metadata).  For example, if you want to search for popular Tetris repositories written in assembly code, your query might look like this:  `q=tetris+language:assembly&sort=stars&order=desc`  This query searches for repositories with the word `tetris` in the name, the description, or the README. The results are limited to repositories where the primary language is assembly. The results are sorted by stars in descending order, so that the most popular repositories appear first in the search results.  When you include the `mercy` preview header, you can also search for multiple topics by adding more `topic:` instances. For example, your query might look like this:  `q=topic:ruby+topic:rails`

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var q = q_example; // String | The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \"[Searching for repositories](https://help.github.com/articles/searching-for-repositories/)\" for a detailed list of qualifiers.
var sort = sort_example; // String | Sorts the results of your query by number of `stars`, `forks`, or `help-wanted-issues` or how recently the items were `updated`. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results)
var order = order_example; // String | Determines whether the first search result returned is the highest number of matches (`desc`) or lowest number of matches (`asc`). This parameter is ignored unless you provide `sort`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.searchRepos(q, sort, order, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchRepos: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \&quot;[Searching for repositories](https://help.github.com/articles/searching-for-repositories/)\&quot; for a detailed list of qualifiers. | 
 **sort** | **String**| Sorts the results of your query by number of &#x60;stars&#x60;, &#x60;forks&#x60;, or &#x60;help-wanted-issues&#x60; or how recently the items were &#x60;updated&#x60;. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results) | [optional] 
 **order** | **String**| Determines whether the first search result returned is the highest number of matches (&#x60;desc&#x60;) or lowest number of matches (&#x60;asc&#x60;). This parameter is ignored unless you provide &#x60;sort&#x60;. | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchTopics**
> InlineResponse20025 searchTopics(q)

Search topics

Find topics via various criteria. Results are sorted by best match. This method returns up to 100 results [per page](https://developer.github.com/v3/#pagination). See \"[Searching topics](https://help.github.com/articles/searching-topics/)\" for a detailed list of qualifiers.  When searching for topics, you can get text match metadata for the topic's **short\\_description**, **description**, **name**, or **display\\_name** field when you pass the `text-match` media type. For more details about how to receive highlighted search results, see [Text match metadata](https://developer.github.com/v3/search/#text-match-metadata).  For example, if you want to search for topics related to Ruby that are featured on https://github.com/topics. Your query might look like this:  `q=ruby+is:featured`  This query searches for topics with the keyword `ruby` and limits the results to find only topics that are featured. The topics that are the best match for the query appear first in the search results.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var q = q_example; // String | The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query).

try {
    var result = api_instance.searchTopics(q);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchTopics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). | 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUsers**
> InlineResponse20026 searchUsers(q, sort, order, perPage, page)

Search users

Find users via various criteria. This method returns up to 100 results [per page](https://developer.github.com/v3/#pagination).  When searching for users, you can get text match metadata for the issue **login**, **email**, and **name** fields when you pass the `text-match` media type. For more details about highlighting search results, see [Text match metadata](https://developer.github.com/v3/search/#text-match-metadata). For more details about how to receive highlighted search results, see [Text match metadata](https://developer.github.com/v3/search/#text-match-metadata).  For example, if you're looking for a list of popular users, you might try this query:  `q=tom+repos:%3E42+followers:%3E1000`  This query searches for users with the name `tom`. The results are restricted to users with more than 42 repositories and over 1,000 followers.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SearchApi();
var q = q_example; // String | The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \"[Searching users](https://help.github.com/articles/searching-users/)\" for a detailed list of qualifiers.
var sort = sort_example; // String | Sorts the results of your query by number of `followers` or `repositories`, or when the person `joined` GitHub. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results)
var order = order_example; // String | Determines whether the first search result returned is the highest number of matches (`desc`) or lowest number of matches (`asc`). This parameter is ignored unless you provide `sort`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.searchUsers(q, sort, order, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling SearchApi->searchUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| The query contains one or more search keywords and qualifiers. Qualifiers allow you to limit your search to specific areas of GitHub. The REST API supports the same qualifiers as GitHub.com. To learn more about the format of the query, see [Constructing a search query](https://developer.github.com/v3/search/#constructing-a-search-query). See \&quot;[Searching users](https://help.github.com/articles/searching-users/)\&quot; for a detailed list of qualifiers. | 
 **sort** | **String**| Sorts the results of your query by number of &#x60;followers&#x60; or &#x60;repositories&#x60;, or when the person &#x60;joined&#x60; GitHub. Default: [best match](https://developer.github.com/v3/search/#ranking-search-results) | [optional] 
 **order** | **String**| Determines whether the first search result returned is the highest number of matches (&#x60;desc&#x60;) or lowest number of matches (&#x60;asc&#x60;). This parameter is ignored unless you provide &#x60;sort&#x60;. | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


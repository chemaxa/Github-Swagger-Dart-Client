# swagger.api.MigrationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**migrationsCancelImport**](MigrationsApi.md#migrationsCancelImport) | **DELETE** /repos/{owner}/{repo}/import | Cancel an import
[**migrationsDeleteArchiveForAuthenticatedUser**](MigrationsApi.md#migrationsDeleteArchiveForAuthenticatedUser) | **DELETE** /user/migrations/{migration_id}/archive | Delete a user migration archive
[**migrationsDeleteArchiveForOrg**](MigrationsApi.md#migrationsDeleteArchiveForOrg) | **DELETE** /orgs/{org}/migrations/{migration_id}/archive | Delete an organization migration archive
[**migrationsDownloadArchiveForOrg**](MigrationsApi.md#migrationsDownloadArchiveForOrg) | **GET** /orgs/{org}/migrations/{migration_id}/archive | Download an organization migration archive
[**migrationsGetArchiveForAuthenticatedUser**](MigrationsApi.md#migrationsGetArchiveForAuthenticatedUser) | **GET** /user/migrations/{migration_id}/archive | Download a user migration archive
[**migrationsGetCommitAuthors**](MigrationsApi.md#migrationsGetCommitAuthors) | **GET** /repos/{owner}/{repo}/import/authors | Get commit authors
[**migrationsGetImportStatus**](MigrationsApi.md#migrationsGetImportStatus) | **GET** /repos/{owner}/{repo}/import | Get an import status
[**migrationsGetLargeFiles**](MigrationsApi.md#migrationsGetLargeFiles) | **GET** /repos/{owner}/{repo}/import/large_files | Get large files
[**migrationsGetStatusForAuthenticatedUser**](MigrationsApi.md#migrationsGetStatusForAuthenticatedUser) | **GET** /user/migrations/{migration_id} | Get a user migration status
[**migrationsGetStatusForOrg**](MigrationsApi.md#migrationsGetStatusForOrg) | **GET** /orgs/{org}/migrations/{migration_id} | Get an organization migration status
[**migrationsListForAuthenticatedUser**](MigrationsApi.md#migrationsListForAuthenticatedUser) | **GET** /user/migrations | List user migrations
[**migrationsListForOrg**](MigrationsApi.md#migrationsListForOrg) | **GET** /orgs/{org}/migrations | List organization migrations
[**migrationsListReposForOrg**](MigrationsApi.md#migrationsListReposForOrg) | **GET** /orgs/{org}/migrations/{migration_id}/repositories | List repositories in an organization migration
[**migrationsListReposForUser**](MigrationsApi.md#migrationsListReposForUser) | **GET** /user/migrations/{migration_id}/repositories | List repositories for a user migration
[**migrationsMapCommitAuthor**](MigrationsApi.md#migrationsMapCommitAuthor) | **PATCH** /repos/{owner}/{repo}/import/authors/{author_id} | Map a commit author
[**migrationsSetLfsPreference**](MigrationsApi.md#migrationsSetLfsPreference) | **PATCH** /repos/{owner}/{repo}/import/lfs | Update Git LFS preference
[**migrationsStartForAuthenticatedUser**](MigrationsApi.md#migrationsStartForAuthenticatedUser) | **POST** /user/migrations | Start a user migration
[**migrationsStartForOrg**](MigrationsApi.md#migrationsStartForOrg) | **POST** /orgs/{org}/migrations | Start an organization migration
[**migrationsStartImport**](MigrationsApi.md#migrationsStartImport) | **PUT** /repos/{owner}/{repo}/import | Start an import
[**migrationsUnlockRepoForAuthenticatedUser**](MigrationsApi.md#migrationsUnlockRepoForAuthenticatedUser) | **DELETE** /user/migrations/{migration_id}/repos/{repo_name}/lock | Unlock a user repository
[**migrationsUnlockRepoForOrg**](MigrationsApi.md#migrationsUnlockRepoForOrg) | **DELETE** /orgs/{org}/migrations/{migration_id}/repos/{repo_name}/lock | Unlock an organization repository
[**migrationsUpdateImport**](MigrationsApi.md#migrationsUpdateImport) | **PATCH** /repos/{owner}/{repo}/import | Update an import

# **migrationsCancelImport**
> migrationsCancelImport(owner, repo)

Cancel an import

Stop an import for a repository.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.migrationsCancelImport(owner, repo);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsCancelImport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsDeleteArchiveForAuthenticatedUser**
> migrationsDeleteArchiveForAuthenticatedUser(migrationId)

Delete a user migration archive

Deletes a previous migration archive. Downloadable migration archives are automatically deleted after seven days. Migration metadata, which is returned in the [List user migrations](https://developer.github.com/v3/migrations/users/#list-user-migrations) and [Get a user migration status](https://developer.github.com/v3/migrations/users/#get-a-user-migration-status) endpoints, will continue to be available even after an archive is deleted.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var migrationId = 56; // int | migration_id parameter

try {
    api_instance.migrationsDeleteArchiveForAuthenticatedUser(migrationId);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsDeleteArchiveForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationId** | **int**| migration_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsDeleteArchiveForOrg**
> migrationsDeleteArchiveForOrg(org, migrationId)

Delete an organization migration archive

Deletes a previous migration archive. Migration archives are automatically deleted after seven days.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var org = org_example; // String | 
var migrationId = 56; // int | migration_id parameter

try {
    api_instance.migrationsDeleteArchiveForOrg(org, migrationId);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsDeleteArchiveForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **migrationId** | **int**| migration_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsDownloadArchiveForOrg**
> migrationsDownloadArchiveForOrg(org, migrationId)

Download an organization migration archive

Fetches the URL to a migration archive.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var org = org_example; // String | 
var migrationId = 56; // int | migration_id parameter

try {
    api_instance.migrationsDownloadArchiveForOrg(org, migrationId);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsDownloadArchiveForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **migrationId** | **int**| migration_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsGetArchiveForAuthenticatedUser**
> migrationsGetArchiveForAuthenticatedUser(migrationId)

Download a user migration archive

Fetches the URL to download the migration archive as a `tar.gz` file. Depending on the resources your repository uses, the migration archive can contain JSON files with data for these objects:  *   attachments *   bases *   commit\\_comments *   issue\\_comments *   issue\\_events *   issues *   milestones *   organizations *   projects *   protected\\_branches *   pull\\_request\\_reviews *   pull\\_requests *   releases *   repositories *   review\\_comments *   schema *   users  The archive will also contain an `attachments` directory that includes all attachment files uploaded to GitHub.com and a `repositories` directory that contains the repository's Git data.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var migrationId = 56; // int | migration_id parameter

try {
    api_instance.migrationsGetArchiveForAuthenticatedUser(migrationId);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsGetArchiveForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationId** | **int**| migration_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsGetCommitAuthors**
> List<PorterAuthor> migrationsGetCommitAuthors(owner, repo, since)

Get commit authors

Each type of source control system represents authors in a different way. For example, a Git commit author has a display name and an email address, but a Subversion commit author just has a username. The GitHub Importer will make the author information valid, but the author might not be correct. For example, it will change the bare Subversion username `hubot` into something like `hubot <hubot@12341234-abab-fefe-8787-fedcba987654>`.  This endpoint and the [Map a commit author](https://developer.github.com/v3/migrations/source_imports/#map-a-commit-author) endpoint allow you to provide correct Git author information.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var since = 56; // int | A user ID. Only return users with an ID greater than this ID.

try {
    var result = api_instance.migrationsGetCommitAuthors(owner, repo, since);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsGetCommitAuthors: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **since** | **int**| A user ID. Only return users with an ID greater than this ID. | [optional] 

### Return type

[**List<PorterAuthor>**](PorterAuthor.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsGetImportStatus**
> ModelImport migrationsGetImportStatus(owner, repo)

Get an import status

View the progress of an import.  **Import status**  This section includes details about the possible values of the `status` field of the Import Progress response.  An import that does not have errors will progress through these steps:  *   `detecting` - the \"detection\" step of the import is in progress because the request did not include a `vcs` parameter. The import is identifying the type of source control present at the URL. *   `importing` - the \"raw\" step of the import is in progress. This is where commit data is fetched from the original repository. The import progress response will include `commit_count` (the total number of raw commits that will be imported) and `percent` (0 - 100, the current progress through the import). *   `mapping` - the \"rewrite\" step of the import is in progress. This is where SVN branches are converted to Git branches, and where author updates are applied. The import progress response does not include progress information. *   `pushing` - the \"push\" step of the import is in progress. This is where the importer updates the repository on GitHub. The import progress response will include `push_percent`, which is the percent value reported by `git push` when it is \"Writing objects\". *   `complete` - the import is complete, and the repository is ready on GitHub.  If there are problems, you will see one of these in the `status` field:  *   `auth_failed` - the import requires authentication in order to connect to the original repository. To update authentication for the import, please see the [Update an import](https://developer.github.com/v3/migrations/source_imports/#update-an-import) section. *   `error` - the import encountered an error. The import progress response will include the `failed_step` and an error message. Contact [GitHub Support](https://github.com/contact) or [GitHub Premium Support](https://premium.githubsupport.com) for more information. *   `detection_needs_auth` - the importer requires authentication for the originating repository to continue detection. To update authentication for the import, please see the [Update an import](https://developer.github.com/v3/migrations/source_imports/#update-an-import) section. *   `detection_found_nothing` - the importer didn't recognize any source control at the URL. To resolve, [Cancel the import](https://developer.github.com/v3/migrations/source_imports/#cancel-an-import) and [retry](https://developer.github.com/v3/migrations/source_imports/#start-an-import) with the correct URL. *   `detection_found_multiple` - the importer found several projects or repositories at the provided URL. When this is the case, the Import Progress response will also include a `project_choices` field with the possible project choices as values. To update project choice, please see the [Update an import](https://developer.github.com/v3/migrations/source_imports/#update-an-import) section.  **The project_choices field**  When multiple projects are found at the provided URL, the response hash will include a `project_choices` field, the value of which is an array of hashes each representing a project choice. The exact key/value pairs of the project hashes will differ depending on the version control type.  **Git LFS related fields**  This section includes details about Git LFS related fields that may be present in the Import Progress response.  *   `use_lfs` - describes whether the import has been opted in or out of using Git LFS. The value can be `opt_in`, `opt_out`, or `undecided` if no action has been taken. *   `has_large_files` - the boolean value describing whether files larger than 100MB were found during the `importing` step. *   `large_files_size` - the total size in gigabytes of files larger than 100MB found in the originating repository. *   `large_files_count` - the total number of files larger than 100MB found in the originating repository. To see a list of these files, make a \"Get Large Files\" request.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.migrationsGetImportStatus(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsGetImportStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**ModelImport**](ModelImport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsGetLargeFiles**
> List<PorterLargeFile> migrationsGetLargeFiles(owner, repo)

Get large files

List files larger than 100MB found during the import

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.migrationsGetLargeFiles(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsGetLargeFiles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**List<PorterLargeFile>**](PorterLargeFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsGetStatusForAuthenticatedUser**
> Migration migrationsGetStatusForAuthenticatedUser(migrationId, exclude)

Get a user migration status

Fetches a single user migration. The response includes the `state` of the migration, which can be one of the following values:  *   `pending` - the migration hasn't started yet. *   `exporting` - the migration is in progress. *   `exported` - the migration finished successfully. *   `failed` - the migration failed.  Once the migration has been `exported` you can [download the migration archive](https://developer.github.com/v3/migrations/users/#download-a-user-migration-archive).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var migrationId = 56; // int | migration_id parameter
var exclude = []; // List<String> | 

try {
    var result = api_instance.migrationsGetStatusForAuthenticatedUser(migrationId, exclude);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsGetStatusForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationId** | **int**| migration_id parameter | 
 **exclude** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**Migration**](Migration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsGetStatusForOrg**
> Migration migrationsGetStatusForOrg(org, migrationId)

Get an organization migration status

Fetches the status of a migration.  The `state` of a migration can be one of the following values:  *   `pending`, which means the migration hasn't started yet. *   `exporting`, which means the migration is in progress. *   `exported`, which means the migration finished successfully. *   `failed`, which means the migration failed.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var org = org_example; // String | 
var migrationId = 56; // int | migration_id parameter

try {
    var result = api_instance.migrationsGetStatusForOrg(org, migrationId);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsGetStatusForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **migrationId** | **int**| migration_id parameter | 

### Return type

[**Migration**](Migration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsListForAuthenticatedUser**
> List<Migration> migrationsListForAuthenticatedUser(perPage, page)

List user migrations

Lists all migrations a user has started.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.migrationsListForAuthenticatedUser(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsListForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Migration>**](Migration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsListForOrg**
> List<Migration> migrationsListForOrg(org, perPage, page)

List organization migrations

Lists the most recent migrations.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.migrationsListForOrg(org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsListForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Migration>**](Migration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsListReposForOrg**
> List<MinimalRepository> migrationsListReposForOrg(org, migrationId, perPage, page)

List repositories in an organization migration

List all the repositories for this organization migration.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var org = org_example; // String | 
var migrationId = 56; // int | migration_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.migrationsListReposForOrg(org, migrationId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsListReposForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **migrationId** | **int**| migration_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MinimalRepository>**](MinimalRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsListReposForUser**
> List<MinimalRepository> migrationsListReposForUser(migrationId, perPage, page)

List repositories for a user migration

Lists all the repositories for this user migration.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var migrationId = 56; // int | migration_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.migrationsListReposForUser(migrationId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsListReposForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationId** | **int**| migration_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MinimalRepository>**](MinimalRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsMapCommitAuthor**
> PorterAuthor migrationsMapCommitAuthor(owner, repo, authorId, body)

Map a commit author

Update an author's identity for the import. Your application can continue updating authors any time before you push new commits to the repository.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var authorId = 56; // int | 
var body = new Body96(); // Body96 | 

try {
    var result = api_instance.migrationsMapCommitAuthor(owner, repo, authorId, body);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsMapCommitAuthor: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **authorId** | **int**|  | 
 **body** | [**Body96**](Body96.md)|  | [optional] 

### Return type

[**PorterAuthor**](PorterAuthor.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsSetLfsPreference**
> ModelImport migrationsSetLfsPreference(owner, repo, body)

Update Git LFS preference

You can import repositories from Subversion, Mercurial, and TFS that include files larger than 100MB. This ability is powered by [Git LFS](https://git-lfs.github.com). You can learn more about our LFS feature and working with large files [on our help site](https://help.github.com/articles/versioning-large-files/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body97(); // Body97 | 

try {
    var result = api_instance.migrationsSetLfsPreference(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsSetLfsPreference: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body97**](Body97.md)|  | [optional] 

### Return type

[**ModelImport**](ModelImport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsStartForAuthenticatedUser**
> Migration migrationsStartForAuthenticatedUser(body)

Start a user migration

Initiates the generation of a user migration archive.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var body = new Body170(); // Body170 | 

try {
    var result = api_instance.migrationsStartForAuthenticatedUser(body);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsStartForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body170**](Body170.md)|  | [optional] 

### Return type

[**Migration**](Migration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsStartForOrg**
> Migration migrationsStartForOrg(org, body)

Start an organization migration

Initiates the generation of a migration archive.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var org = org_example; // String | 
var body = new Body39(); // Body39 | 

try {
    var result = api_instance.migrationsStartForOrg(org, body);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsStartForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body39**](Body39.md)|  | [optional] 

### Return type

[**Migration**](Migration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsStartImport**
> ModelImport migrationsStartImport(owner, repo, body)

Start an import

Start a source import to a GitHub repository using GitHub Importer.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body94(); // Body94 | 

try {
    var result = api_instance.migrationsStartImport(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsStartImport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body94**](Body94.md)|  | [optional] 

### Return type

[**ModelImport**](ModelImport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsUnlockRepoForAuthenticatedUser**
> migrationsUnlockRepoForAuthenticatedUser(migrationId, repoName)

Unlock a user repository

Unlocks a repository. You can lock repositories when you [start a user migration](https://developer.github.com/v3/migrations/users/#start-a-user-migration). Once the migration is complete you can unlock each repository to begin using it again or [delete the repository](https://developer.github.com/v3/repos/#delete-a-repository) if you no longer need the source data. Returns a status of `404 Not Found` if the repository is not locked.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var migrationId = 56; // int | migration_id parameter
var repoName = repoName_example; // String | repo_name parameter

try {
    api_instance.migrationsUnlockRepoForAuthenticatedUser(migrationId, repoName);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsUnlockRepoForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationId** | **int**| migration_id parameter | 
 **repoName** | **String**| repo_name parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsUnlockRepoForOrg**
> migrationsUnlockRepoForOrg(org, migrationId, repoName)

Unlock an organization repository

Unlocks a repository that was locked for migration. You should unlock each migrated repository and [delete them](https://developer.github.com/v3/repos/#delete-a-repository) when the migration is complete and you no longer need the source data.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var org = org_example; // String | 
var migrationId = 56; // int | migration_id parameter
var repoName = repoName_example; // String | repo_name parameter

try {
    api_instance.migrationsUnlockRepoForOrg(org, migrationId, repoName);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsUnlockRepoForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **migrationId** | **int**| migration_id parameter | 
 **repoName** | **String**| repo_name parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationsUpdateImport**
> ModelImport migrationsUpdateImport(owner, repo, body)

Update an import

An import can be updated with credentials or a project choice by passing in the appropriate parameters in this API request. If no parameters are provided, the import will be restarted.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MigrationsApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body95(); // Body95 | 

try {
    var result = api_instance.migrationsUpdateImport(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling MigrationsApi->migrationsUpdateImport: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body95**](Body95.md)|  | [optional] 

### Return type

[**ModelImport**](ModelImport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


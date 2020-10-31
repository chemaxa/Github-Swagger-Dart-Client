# swagger.api.ReposApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reposAcceptInvitation**](ReposApi.md#reposAcceptInvitation) | **PATCH** /user/repository_invitations/{invitation_id} | Accept a repository invitation
[**reposAddAppAccessRestrictions**](ReposApi.md#reposAddAppAccessRestrictions) | **POST** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps | Add app access restrictions
[**reposAddCollaborator**](ReposApi.md#reposAddCollaborator) | **PUT** /repos/{owner}/{repo}/collaborators/{username} | Add a repository collaborator
[**reposAddStatusCheckContexts**](ReposApi.md#reposAddStatusCheckContexts) | **POST** /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts | Add status check contexts
[**reposAddTeamAccessRestrictions**](ReposApi.md#reposAddTeamAccessRestrictions) | **POST** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams | Add team access restrictions
[**reposAddUserAccessRestrictions**](ReposApi.md#reposAddUserAccessRestrictions) | **POST** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users | Add user access restrictions
[**reposCheckCollaborator**](ReposApi.md#reposCheckCollaborator) | **GET** /repos/{owner}/{repo}/collaborators/{username} | Check if a user is a repository collaborator
[**reposCheckVulnerabilityAlerts**](ReposApi.md#reposCheckVulnerabilityAlerts) | **GET** /repos/{owner}/{repo}/vulnerability-alerts | Check if vulnerability alerts are enabled for a repository
[**reposCompareCommits**](ReposApi.md#reposCompareCommits) | **GET** /repos/{owner}/{repo}/compare/{base}...{head} | Compare two commits
[**reposCreateCommitComment**](ReposApi.md#reposCreateCommitComment) | **POST** /repos/{owner}/{repo}/commits/{commit_sha}/comments | Create a commit comment
[**reposCreateCommitSignatureProtection**](ReposApi.md#reposCreateCommitSignatureProtection) | **POST** /repos/{owner}/{repo}/branches/{branch}/protection/required_signatures | Create commit signature protection
[**reposCreateCommitStatus**](ReposApi.md#reposCreateCommitStatus) | **POST** /repos/{owner}/{repo}/statuses/{sha} | Create a commit status
[**reposCreateDeployKey**](ReposApi.md#reposCreateDeployKey) | **POST** /repos/{owner}/{repo}/keys | Create a deploy key
[**reposCreateDeployment**](ReposApi.md#reposCreateDeployment) | **POST** /repos/{owner}/{repo}/deployments | Create a deployment
[**reposCreateDeploymentStatus**](ReposApi.md#reposCreateDeploymentStatus) | **POST** /repos/{owner}/{repo}/deployments/{deployment_id}/statuses | Create a deployment status
[**reposCreateDispatchEvent**](ReposApi.md#reposCreateDispatchEvent) | **POST** /repos/{owner}/{repo}/dispatches | Create a repository dispatch event
[**reposCreateForAuthenticatedUser**](ReposApi.md#reposCreateForAuthenticatedUser) | **POST** /user/repos | Create a repository for the authenticated user
[**reposCreateFork**](ReposApi.md#reposCreateFork) | **POST** /repos/{owner}/{repo}/forks | Create a fork
[**reposCreateInOrg**](ReposApi.md#reposCreateInOrg) | **POST** /orgs/{org}/repos | Create an organization repository
[**reposCreateOrUpdateFileContents**](ReposApi.md#reposCreateOrUpdateFileContents) | **PUT** /repos/{owner}/{repo}/contents/{path} | Create or update file contents
[**reposCreatePagesSite**](ReposApi.md#reposCreatePagesSite) | **POST** /repos/{owner}/{repo}/pages | Create a GitHub Pages site
[**reposCreateRelease**](ReposApi.md#reposCreateRelease) | **POST** /repos/{owner}/{repo}/releases | Create a release
[**reposCreateUsingTemplate**](ReposApi.md#reposCreateUsingTemplate) | **POST** /repos/{template_owner}/{template_repo}/generate | Create a repository using a template
[**reposCreateWebhook**](ReposApi.md#reposCreateWebhook) | **POST** /repos/{owner}/{repo}/hooks | Create a repository webhook
[**reposDeclineInvitation**](ReposApi.md#reposDeclineInvitation) | **DELETE** /user/repository_invitations/{invitation_id} | Decline a repository invitation
[**reposDelete**](ReposApi.md#reposDelete) | **DELETE** /repos/{owner}/{repo} | Delete a repository
[**reposDeleteAccessRestrictions**](ReposApi.md#reposDeleteAccessRestrictions) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions | Delete access restrictions
[**reposDeleteAdminBranchProtection**](ReposApi.md#reposDeleteAdminBranchProtection) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins | Delete admin branch protection
[**reposDeleteBranchProtection**](ReposApi.md#reposDeleteBranchProtection) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection | Delete branch protection
[**reposDeleteCommitComment**](ReposApi.md#reposDeleteCommitComment) | **DELETE** /repos/{owner}/{repo}/comments/{comment_id} | Delete a commit comment
[**reposDeleteCommitSignatureProtection**](ReposApi.md#reposDeleteCommitSignatureProtection) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/required_signatures | Delete commit signature protection
[**reposDeleteDeployKey**](ReposApi.md#reposDeleteDeployKey) | **DELETE** /repos/{owner}/{repo}/keys/{key_id} | Delete a deploy key
[**reposDeleteDeployment**](ReposApi.md#reposDeleteDeployment) | **DELETE** /repos/{owner}/{repo}/deployments/{deployment_id} | Delete a deployment
[**reposDeleteFile**](ReposApi.md#reposDeleteFile) | **DELETE** /repos/{owner}/{repo}/contents/{path} | Delete a file
[**reposDeleteInvitation**](ReposApi.md#reposDeleteInvitation) | **DELETE** /repos/{owner}/{repo}/invitations/{invitation_id} | Delete a repository invitation
[**reposDeletePagesSite**](ReposApi.md#reposDeletePagesSite) | **DELETE** /repos/{owner}/{repo}/pages | Delete a GitHub Pages site
[**reposDeletePullRequestReviewProtection**](ReposApi.md#reposDeletePullRequestReviewProtection) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews | Delete pull request review protection
[**reposDeleteRelease**](ReposApi.md#reposDeleteRelease) | **DELETE** /repos/{owner}/{repo}/releases/{release_id} | Delete a release
[**reposDeleteReleaseAsset**](ReposApi.md#reposDeleteReleaseAsset) | **DELETE** /repos/{owner}/{repo}/releases/assets/{asset_id} | Delete a release asset
[**reposDeleteWebhook**](ReposApi.md#reposDeleteWebhook) | **DELETE** /repos/{owner}/{repo}/hooks/{hook_id} | Delete a repository webhook
[**reposDisableAutomatedSecurityFixes**](ReposApi.md#reposDisableAutomatedSecurityFixes) | **DELETE** /repos/{owner}/{repo}/automated-security-fixes | Disable automated security fixes
[**reposDisableVulnerabilityAlerts**](ReposApi.md#reposDisableVulnerabilityAlerts) | **DELETE** /repos/{owner}/{repo}/vulnerability-alerts | Disable vulnerability alerts
[**reposDownloadTarballArchive**](ReposApi.md#reposDownloadTarballArchive) | **GET** /repos/{owner}/{repo}/tarball/{ref} | Download a repository archive (tar)
[**reposDownloadZipballArchive**](ReposApi.md#reposDownloadZipballArchive) | **GET** /repos/{owner}/{repo}/zipball/{ref} | Download a repository archive (zip)
[**reposEnableAutomatedSecurityFixes**](ReposApi.md#reposEnableAutomatedSecurityFixes) | **PUT** /repos/{owner}/{repo}/automated-security-fixes | Enable automated security fixes
[**reposEnableVulnerabilityAlerts**](ReposApi.md#reposEnableVulnerabilityAlerts) | **PUT** /repos/{owner}/{repo}/vulnerability-alerts | Enable vulnerability alerts
[**reposGet**](ReposApi.md#reposGet) | **GET** /repos/{owner}/{repo} | Get a repository
[**reposGetAccessRestrictions**](ReposApi.md#reposGetAccessRestrictions) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions | Get access restrictions
[**reposGetAdminBranchProtection**](ReposApi.md#reposGetAdminBranchProtection) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins | Get admin branch protection
[**reposGetAllStatusCheckContexts**](ReposApi.md#reposGetAllStatusCheckContexts) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts | Get all status check contexts
[**reposGetAllTopics**](ReposApi.md#reposGetAllTopics) | **GET** /repos/{owner}/{repo}/topics | Get all repository topics
[**reposGetAppsWithAccessToProtectedBranch**](ReposApi.md#reposGetAppsWithAccessToProtectedBranch) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps | Get apps with access to the protected branch
[**reposGetBranch**](ReposApi.md#reposGetBranch) | **GET** /repos/{owner}/{repo}/branches/{branch} | Get a branch
[**reposGetBranchProtection**](ReposApi.md#reposGetBranchProtection) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection | Get branch protection
[**reposGetClones**](ReposApi.md#reposGetClones) | **GET** /repos/{owner}/{repo}/traffic/clones | Get repository clones
[**reposGetCodeFrequencyStats**](ReposApi.md#reposGetCodeFrequencyStats) | **GET** /repos/{owner}/{repo}/stats/code_frequency | Get the weekly commit activity
[**reposGetCollaboratorPermissionLevel**](ReposApi.md#reposGetCollaboratorPermissionLevel) | **GET** /repos/{owner}/{repo}/collaborators/{username}/permission | Get repository permissions for a user
[**reposGetCombinedStatusForRef**](ReposApi.md#reposGetCombinedStatusForRef) | **GET** /repos/{owner}/{repo}/commits/{ref}/status | Get the combined status for a specific reference
[**reposGetCommit**](ReposApi.md#reposGetCommit) | **GET** /repos/{owner}/{repo}/commits/{ref} | Get a commit
[**reposGetCommitActivityStats**](ReposApi.md#reposGetCommitActivityStats) | **GET** /repos/{owner}/{repo}/stats/commit_activity | Get the last year of commit activity
[**reposGetCommitComment**](ReposApi.md#reposGetCommitComment) | **GET** /repos/{owner}/{repo}/comments/{comment_id} | Get a commit comment
[**reposGetCommitSignatureProtection**](ReposApi.md#reposGetCommitSignatureProtection) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/required_signatures | Get commit signature protection
[**reposGetCommunityProfileMetrics**](ReposApi.md#reposGetCommunityProfileMetrics) | **GET** /repos/{owner}/{repo}/community/profile | Get community profile metrics
[**reposGetContent**](ReposApi.md#reposGetContent) | **GET** /repos/{owner}/{repo}/contents/{path} | Get repository content
[**reposGetContributorsStats**](ReposApi.md#reposGetContributorsStats) | **GET** /repos/{owner}/{repo}/stats/contributors | Get all contributor commit activity
[**reposGetDeployKey**](ReposApi.md#reposGetDeployKey) | **GET** /repos/{owner}/{repo}/keys/{key_id} | Get a deploy key
[**reposGetDeployment**](ReposApi.md#reposGetDeployment) | **GET** /repos/{owner}/{repo}/deployments/{deployment_id} | Get a deployment
[**reposGetDeploymentStatus**](ReposApi.md#reposGetDeploymentStatus) | **GET** /repos/{owner}/{repo}/deployments/{deployment_id}/statuses/{status_id} | Get a deployment status
[**reposGetLatestPagesBuild**](ReposApi.md#reposGetLatestPagesBuild) | **GET** /repos/{owner}/{repo}/pages/builds/latest | Get latest Pages build
[**reposGetLatestRelease**](ReposApi.md#reposGetLatestRelease) | **GET** /repos/{owner}/{repo}/releases/latest | Get the latest release
[**reposGetPages**](ReposApi.md#reposGetPages) | **GET** /repos/{owner}/{repo}/pages | Get a GitHub Pages site
[**reposGetPagesBuild**](ReposApi.md#reposGetPagesBuild) | **GET** /repos/{owner}/{repo}/pages/builds/{build_id} | Get GitHub Pages build
[**reposGetParticipationStats**](ReposApi.md#reposGetParticipationStats) | **GET** /repos/{owner}/{repo}/stats/participation | Get the weekly commit count
[**reposGetPullRequestReviewProtection**](ReposApi.md#reposGetPullRequestReviewProtection) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews | Get pull request review protection
[**reposGetPunchCardStats**](ReposApi.md#reposGetPunchCardStats) | **GET** /repos/{owner}/{repo}/stats/punch_card | Get the hourly commit count for each day
[**reposGetReadme**](ReposApi.md#reposGetReadme) | **GET** /repos/{owner}/{repo}/readme | Get a repository README
[**reposGetRelease**](ReposApi.md#reposGetRelease) | **GET** /repos/{owner}/{repo}/releases/{release_id} | Get a release
[**reposGetReleaseAsset**](ReposApi.md#reposGetReleaseAsset) | **GET** /repos/{owner}/{repo}/releases/assets/{asset_id} | Get a release asset
[**reposGetReleaseByTag**](ReposApi.md#reposGetReleaseByTag) | **GET** /repos/{owner}/{repo}/releases/tags/{tag} | Get a release by tag name
[**reposGetStatusChecksProtection**](ReposApi.md#reposGetStatusChecksProtection) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks | Get status checks protection
[**reposGetTeamsWithAccessToProtectedBranch**](ReposApi.md#reposGetTeamsWithAccessToProtectedBranch) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams | Get teams with access to the protected branch
[**reposGetTopPaths**](ReposApi.md#reposGetTopPaths) | **GET** /repos/{owner}/{repo}/traffic/popular/paths | Get top referral paths
[**reposGetTopReferrers**](ReposApi.md#reposGetTopReferrers) | **GET** /repos/{owner}/{repo}/traffic/popular/referrers | Get top referral sources
[**reposGetUsersWithAccessToProtectedBranch**](ReposApi.md#reposGetUsersWithAccessToProtectedBranch) | **GET** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users | Get users with access to the protected branch
[**reposGetViews**](ReposApi.md#reposGetViews) | **GET** /repos/{owner}/{repo}/traffic/views | Get page views
[**reposGetWebhook**](ReposApi.md#reposGetWebhook) | **GET** /repos/{owner}/{repo}/hooks/{hook_id} | Get a repository webhook
[**reposGetWebhookConfigForRepo**](ReposApi.md#reposGetWebhookConfigForRepo) | **GET** /repos/{owner}/{repo}/hooks/{hook_id}/config | Get a webhook configuration for a repository
[**reposListBranches**](ReposApi.md#reposListBranches) | **GET** /repos/{owner}/{repo}/branches | List branches
[**reposListBranchesForHeadCommit**](ReposApi.md#reposListBranchesForHeadCommit) | **GET** /repos/{owner}/{repo}/commits/{commit_sha}/branches-where-head | List branches for HEAD commit
[**reposListCollaborators**](ReposApi.md#reposListCollaborators) | **GET** /repos/{owner}/{repo}/collaborators | List repository collaborators
[**reposListCommentsForCommit**](ReposApi.md#reposListCommentsForCommit) | **GET** /repos/{owner}/{repo}/commits/{commit_sha}/comments | List commit comments
[**reposListCommitCommentsForRepo**](ReposApi.md#reposListCommitCommentsForRepo) | **GET** /repos/{owner}/{repo}/comments | List commit comments for a repository
[**reposListCommitStatusesForRef**](ReposApi.md#reposListCommitStatusesForRef) | **GET** /repos/{owner}/{repo}/commits/{ref}/statuses | List commit statuses for a reference
[**reposListCommits**](ReposApi.md#reposListCommits) | **GET** /repos/{owner}/{repo}/commits | List commits
[**reposListContributors**](ReposApi.md#reposListContributors) | **GET** /repos/{owner}/{repo}/contributors | List repository contributors
[**reposListDeployKeys**](ReposApi.md#reposListDeployKeys) | **GET** /repos/{owner}/{repo}/keys | List deploy keys
[**reposListDeploymentStatuses**](ReposApi.md#reposListDeploymentStatuses) | **GET** /repos/{owner}/{repo}/deployments/{deployment_id}/statuses | List deployment statuses
[**reposListDeployments**](ReposApi.md#reposListDeployments) | **GET** /repos/{owner}/{repo}/deployments | List deployments
[**reposListForAuthenticatedUser**](ReposApi.md#reposListForAuthenticatedUser) | **GET** /user/repos | List repositories for the authenticated user
[**reposListForOrg**](ReposApi.md#reposListForOrg) | **GET** /orgs/{org}/repos | List organization repositories
[**reposListForUser**](ReposApi.md#reposListForUser) | **GET** /users/{username}/repos | List repositories for a user
[**reposListForks**](ReposApi.md#reposListForks) | **GET** /repos/{owner}/{repo}/forks | List forks
[**reposListInvitations**](ReposApi.md#reposListInvitations) | **GET** /repos/{owner}/{repo}/invitations | List repository invitations
[**reposListInvitationsForAuthenticatedUser**](ReposApi.md#reposListInvitationsForAuthenticatedUser) | **GET** /user/repository_invitations | List repository invitations for the authenticated user
[**reposListLanguages**](ReposApi.md#reposListLanguages) | **GET** /repos/{owner}/{repo}/languages | List repository languages
[**reposListPagesBuilds**](ReposApi.md#reposListPagesBuilds) | **GET** /repos/{owner}/{repo}/pages/builds | List GitHub Pages builds
[**reposListPublic**](ReposApi.md#reposListPublic) | **GET** /repositories | List public repositories
[**reposListPullRequestsAssociatedWithCommit**](ReposApi.md#reposListPullRequestsAssociatedWithCommit) | **GET** /repos/{owner}/{repo}/commits/{commit_sha}/pulls | List pull requests associated with a commit
[**reposListReleaseAssets**](ReposApi.md#reposListReleaseAssets) | **GET** /repos/{owner}/{repo}/releases/{release_id}/assets | List release assets
[**reposListReleases**](ReposApi.md#reposListReleases) | **GET** /repos/{owner}/{repo}/releases | List releases
[**reposListTags**](ReposApi.md#reposListTags) | **GET** /repos/{owner}/{repo}/tags | List repository tags
[**reposListTeams**](ReposApi.md#reposListTeams) | **GET** /repos/{owner}/{repo}/teams | List repository teams
[**reposListWebhooks**](ReposApi.md#reposListWebhooks) | **GET** /repos/{owner}/{repo}/hooks | List repository webhooks
[**reposMerge**](ReposApi.md#reposMerge) | **POST** /repos/{owner}/{repo}/merges | Merge a branch
[**reposPingWebhook**](ReposApi.md#reposPingWebhook) | **POST** /repos/{owner}/{repo}/hooks/{hook_id}/pings | Ping a repository webhook
[**reposRemoveAppAccessRestrictions**](ReposApi.md#reposRemoveAppAccessRestrictions) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps | Remove app access restrictions
[**reposRemoveCollaborator**](ReposApi.md#reposRemoveCollaborator) | **DELETE** /repos/{owner}/{repo}/collaborators/{username} | Remove a repository collaborator
[**reposRemoveStatusCheckContexts**](ReposApi.md#reposRemoveStatusCheckContexts) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts | Remove status check contexts
[**reposRemoveStatusCheckProtection**](ReposApi.md#reposRemoveStatusCheckProtection) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks | Remove status check protection
[**reposRemoveTeamAccessRestrictions**](ReposApi.md#reposRemoveTeamAccessRestrictions) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams | Remove team access restrictions
[**reposRemoveUserAccessRestrictions**](ReposApi.md#reposRemoveUserAccessRestrictions) | **DELETE** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users | Remove user access restrictions
[**reposReplaceAllTopics**](ReposApi.md#reposReplaceAllTopics) | **PUT** /repos/{owner}/{repo}/topics | Replace all repository topics
[**reposRequestPagesBuild**](ReposApi.md#reposRequestPagesBuild) | **POST** /repos/{owner}/{repo}/pages/builds | Request a GitHub Pages build
[**reposSetAdminBranchProtection**](ReposApi.md#reposSetAdminBranchProtection) | **POST** /repos/{owner}/{repo}/branches/{branch}/protection/enforce_admins | Set admin branch protection
[**reposSetAppAccessRestrictions**](ReposApi.md#reposSetAppAccessRestrictions) | **PUT** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/apps | Set app access restrictions
[**reposSetStatusCheckContexts**](ReposApi.md#reposSetStatusCheckContexts) | **PUT** /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks/contexts | Set status check contexts
[**reposSetTeamAccessRestrictions**](ReposApi.md#reposSetTeamAccessRestrictions) | **PUT** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/teams | Set team access restrictions
[**reposSetUserAccessRestrictions**](ReposApi.md#reposSetUserAccessRestrictions) | **PUT** /repos/{owner}/{repo}/branches/{branch}/protection/restrictions/users | Set user access restrictions
[**reposTestPushWebhook**](ReposApi.md#reposTestPushWebhook) | **POST** /repos/{owner}/{repo}/hooks/{hook_id}/tests | Test the push repository webhook
[**reposTransfer**](ReposApi.md#reposTransfer) | **POST** /repos/{owner}/{repo}/transfer | Transfer a repository
[**reposUpdate**](ReposApi.md#reposUpdate) | **PATCH** /repos/{owner}/{repo} | Update a repository
[**reposUpdateBranchProtection**](ReposApi.md#reposUpdateBranchProtection) | **PUT** /repos/{owner}/{repo}/branches/{branch}/protection | Update branch protection
[**reposUpdateCommitComment**](ReposApi.md#reposUpdateCommitComment) | **PATCH** /repos/{owner}/{repo}/comments/{comment_id} | Update a commit comment
[**reposUpdateInformationAboutPagesSite**](ReposApi.md#reposUpdateInformationAboutPagesSite) | **PUT** /repos/{owner}/{repo}/pages | Update information about a GitHub Pages site
[**reposUpdateInvitation**](ReposApi.md#reposUpdateInvitation) | **PATCH** /repos/{owner}/{repo}/invitations/{invitation_id} | Update a repository invitation
[**reposUpdatePullRequestReviewProtection**](ReposApi.md#reposUpdatePullRequestReviewProtection) | **PATCH** /repos/{owner}/{repo}/branches/{branch}/protection/required_pull_request_reviews | Update pull request review protection
[**reposUpdateRelease**](ReposApi.md#reposUpdateRelease) | **PATCH** /repos/{owner}/{repo}/releases/{release_id} | Update a release
[**reposUpdateReleaseAsset**](ReposApi.md#reposUpdateReleaseAsset) | **PATCH** /repos/{owner}/{repo}/releases/assets/{asset_id} | Update a release asset
[**reposUpdateStatusCheckProtection**](ReposApi.md#reposUpdateStatusCheckProtection) | **PATCH** /repos/{owner}/{repo}/branches/{branch}/protection/required_status_checks | Update status check protection
[**reposUpdateWebhook**](ReposApi.md#reposUpdateWebhook) | **PATCH** /repos/{owner}/{repo}/hooks/{hook_id} | Update a repository webhook
[**reposUpdateWebhookConfigForRepo**](ReposApi.md#reposUpdateWebhookConfigForRepo) | **PATCH** /repos/{owner}/{repo}/hooks/{hook_id}/config | Update a webhook configuration for a repository
[**reposUploadReleaseAsset**](ReposApi.md#reposUploadReleaseAsset) | **POST** /repos/{owner}/{repo}/releases/{release_id}/assets | Upload a release asset

# **reposAcceptInvitation**
> reposAcceptInvitation(invitationId)

Accept a repository invitation

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var invitationId = 56; // int | invitation_id parameter

try {
    api_instance.reposAcceptInvitation(invitationId);
} catch (e) {
    print("Exception when calling ReposApi->reposAcceptInvitation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **int**| invitation_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposAddAppAccessRestrictions**
> List<Integration> reposAddAppAccessRestrictions(owner, repo, branch, body)

Add app access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Grants the specified apps push access for this branch. Only installed GitHub Apps with `write` access to the `contents` permission can be added as authorized actors on a protected branch.  | Type    | Description                                                                                                                                                | | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | The GitHub Apps that have push access to this branch. Use the app's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposAddAppAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposAddAppAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<Integration>**](Integration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposAddCollaborator**
> RepositoryInvitation reposAddCollaborator(owner, repo, username, body)

Add a repository collaborator

This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.  For more information the permission levels, see \"[Repository permission levels for an organization](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization)\".  Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"  The invitee will receive a notification that they have been invited to the repository, which they must accept or decline. They may do this via the notifications page, the email they receive, or by using the [repository invitations API endpoints](https://developer.github.com/v3/repos/invitations/).  **Rate limits**  To prevent abuse, you are limited to sending 50 invitations to a repository per 24 hour period. Note there is no limit if you are inviting organization members to an organization repository.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var username = username_example; // String | 
var body = new Body75(); // Body75 | 

try {
    var result = api_instance.reposAddCollaborator(owner, repo, username, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposAddCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **username** | **String**|  | 
 **body** | [**Body75**](Body75.md)|  | [optional] 

### Return type

[**RepositoryInvitation**](RepositoryInvitation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposAddStatusCheckContexts**
> List<String> reposAddStatusCheckContexts(owner, repo, branch, body)

Add status check contexts

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposAddStatusCheckContexts(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposAddStatusCheckContexts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposAddTeamAccessRestrictions**
> List<Team> reposAddTeamAccessRestrictions(owner, repo, branch, body)

Add team access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Grants the specified teams push access for this branch. You can also give push access to child teams.  | Type    | Description                                                                                                                                | | ------- | ------------------------------------------------------------------------------------------------------------------------------------------ | | `array` | The teams that can have push access. Use the team's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposAddTeamAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposAddTeamAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<Team>**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposAddUserAccessRestrictions**
> List<SimpleUser> reposAddUserAccessRestrictions(owner, repo, branch, body)

Add user access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Grants the specified people push access for this branch.  | Type    | Description                                                                                                                   | | ------- | ----------------------------------------------------------------------------------------------------------------------------- | | `array` | Usernames for people who can have push access. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposAddUserAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposAddUserAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCheckCollaborator**
> reposCheckCollaborator(owner, repo, username)

Check if a user is a repository collaborator

For organization-owned repositories, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners.  Team members will include the members of child teams.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var username = username_example; // String | 

try {
    api_instance.reposCheckCollaborator(owner, repo, username);
} catch (e) {
    print("Exception when calling ReposApi->reposCheckCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCheckVulnerabilityAlerts**
> reposCheckVulnerabilityAlerts(owner, repo)

Check if vulnerability alerts are enabled for a repository

Shows whether dependency alerts are enabled or disabled for a repository. The authenticated user must have admin access to the repository. For more information, see \"[About security alerts for vulnerable dependencies](https://help.github.com/en/articles/about-security-alerts-for-vulnerable-dependencies)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.reposCheckVulnerabilityAlerts(owner, repo);
} catch (e) {
    print("Exception when calling ReposApi->reposCheckVulnerabilityAlerts: $e\n");
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

# **reposCompareCommits**
> CommitComparison reposCompareCommits(owner, repo, base, head)

Compare two commits

Both `:base` and `:head` must be branch names in `:repo`. To compare branches across other repositories in the same network as `:repo`, use the format `<USERNAME>:branch`.  The response from the API is equivalent to running the `git log base..head` command; however, commits are returned in chronological order. Pass the appropriate [media type](https://developer.github.com/v3/media/#commits-commit-comparison-and-pull-requests) to fetch diff and patch formats.  The response also includes details on the files that were changed between the two commits. This includes the status of the change (for example, if a file was added, removed, modified, or renamed), and details of the change itself. For example, files with a `renamed` status have a `previous_filename` field showing the previous filename of the file, and files with a `modified` status have a `patch` field showing the changes made to the file.  **Working with large comparisons**  The response will include a comparison of up to 250 commits. If you are working with a larger commit range, you can use the [List commits](https://developer.github.com/v3/repos/commits/#list-commits) to enumerate all commits in the range.  For comparisons with extremely large diffs, you may receive an error response indicating that the diff took too long to generate. You can typically resolve this error by using a smaller commit range.  **Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var base = base_example; // String | 
var head = head_example; // String | 

try {
    var result = api_instance.reposCompareCommits(owner, repo, base, head);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCompareCommits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **base** | **String**|  | 
 **head** | **String**|  | 

### Return type

[**CommitComparison**](CommitComparison.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateCommitComment**
> CommitComment reposCreateCommitComment(owner, repo, commitSha, body)

Create a commit comment

Create a comment for a commit using its `:commit_sha`.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commitSha = commitSha_example; // String | commit_sha+ parameter
var body = new Body78(); // Body78 | 

try {
    var result = api_instance.reposCreateCommitComment(owner, repo, commitSha, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateCommitComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commitSha** | **String**| commit_sha+ parameter | 
 **body** | [**Body78**](Body78.md)|  | [optional] 

### Return type

[**CommitComment**](CommitComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateCommitSignatureProtection**
> ProtectedBranchAdminEnforced reposCreateCommitSignatureProtection(owner, repo, branch)

Create commit signature protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  When authenticated with admin or owner permissions to the repository, you can use this endpoint to require signed commits on a branch. You must enable branch protection to require signed commits.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposCreateCommitSignatureProtection(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateCommitSignatureProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**ProtectedBranchAdminEnforced**](ProtectedBranchAdminEnforced.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateCommitStatus**
> Status reposCreateCommitStatus(owner, repo, sha, body)

Create a commit status

Users with push access in a repository can create commit statuses for a given SHA.  Note: there is a limit of 1000 statuses per `sha` and `context` within a repository. Attempts to create more than 1000 statuses will result in a validation error.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var sha = sha_example; // String | 
var body = new Body138(); // Body138 | 

try {
    var result = api_instance.reposCreateCommitStatus(owner, repo, sha, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateCommitStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **sha** | **String**|  | 
 **body** | [**Body138**](Body138.md)|  | [optional] 

### Return type

[**Status**](Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateDeployKey**
> DeployKey reposCreateDeployKey(owner, repo, body)

Create a deploy key

You can create a read-only deploy key.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body111(); // Body111 | 

try {
    var result = api_instance.reposCreateDeployKey(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateDeployKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body111**](Body111.md)|  | [optional] 

### Return type

[**DeployKey**](DeployKey.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateDeployment**
> Deployment reposCreateDeployment(owner, repo, body)

Create a deployment

Deployments offer a few configurable parameters with certain defaults.  The `ref` parameter can be any named branch, tag, or SHA. At GitHub we often deploy branches and verify them before we merge a pull request.  The `environment` parameter allows deployments to be issued to different runtime environments. Teams often have multiple environments for verifying their applications, such as `production`, `staging`, and `qa`. This parameter makes it easier to track which environments have requested deployments. The default environment is `production`.  The `auto_merge` parameter is used to ensure that the requested ref is not behind the repository's default branch. If the ref _is_ behind the default branch for the repository, we will attempt to merge it for you. If the merge succeeds, the API will return a successful merge commit. If merge conflicts prevent the merge from succeeding, the API will return a failure response.  By default, [commit statuses](https://developer.github.com/v3/repos/statuses) for every submitted context must be in a `success` state. The `required_contexts` parameter allows you to specify a subset of contexts that must be `success`, or to specify contexts that have not yet been submitted. You are not required to use commit statuses to deploy. If you do not require any contexts or create any commit statuses, the deployment will always succeed.  The `payload` parameter is available for any extra information that a deployment system might need. It is a JSON text field that will be passed on when a deployment event is dispatched.  The `task` parameter is used by the deployment system to allow different execution paths. In the web world this might be `deploy:migrations` to run schema changes on the system. In the compiled world this could be a flag to compile an application with debugging enabled.  Users with `repo` or `repo_deployment` scopes can create a deployment for a given ref.  #### Merged branch response You will see this response when GitHub automatically merges the base branch into the topic branch instead of creating a deployment. This auto-merge happens when: *   Auto-merge option is enabled in the repository *   Topic branch does not include the latest changes on the base branch, which is `master` in the response example *   There are no merge conflicts  If there are no new commits in the base branch, a new request to create a deployment should give a successful response.  #### Merge conflict response This error happens when the `auto_merge` option is enabled and when the default branch (in this case `master`), can't be merged into the branch that's being deployed (in this case `topic-branch`), due to merge conflicts.  #### Failed commit status checks This error happens when the `required_contexts` parameter indicates that one or more contexts need to have a `success` status for the commit to be deployed, but one or more of the required contexts do not have a state of `success`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body81(); // Body81 | 

try {
    var result = api_instance.reposCreateDeployment(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateDeployment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body81**](Body81.md)|  | [optional] 

### Return type

[**Deployment**](Deployment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateDeploymentStatus**
> DeploymentStatus reposCreateDeploymentStatus(owner, repo, deploymentId, body)

Create a deployment status

Users with `push` access can create deployment statuses for a given deployment.  GitHub Apps require `read & write` access to \"Deployments\" and `read-only` access to \"Repo contents\" (for private repos). OAuth Apps require the `repo_deployment` scope.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var deploymentId = 56; // int | deployment_id parameter
var body = new Body82(); // Body82 | 

try {
    var result = api_instance.reposCreateDeploymentStatus(owner, repo, deploymentId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateDeploymentStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **deploymentId** | **int**| deployment_id parameter | 
 **body** | [**Body82**](Body82.md)|  | [optional] 

### Return type

[**DeploymentStatus**](DeploymentStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateDispatchEvent**
> reposCreateDispatchEvent(owner, repo, body)

Create a repository dispatch event

You can use this endpoint to trigger a webhook event called `repository_dispatch` when you want activity that happens outside of GitHub to trigger a GitHub Actions workflow or GitHub App webhook. You must configure your GitHub Actions workflow or GitHub App to run when the `repository_dispatch` event occurs. For an example `repository_dispatch` webhook payload, see \"[RepositoryDispatchEvent](https://developer.github.com/webhooks/event-payloads/#repository_dispatch).\"  The `client_payload` parameter is available for any extra information that your workflow might need. This parameter is a JSON payload that will be passed on when the webhook event is dispatched. For example, the `client_payload` can include a message that a user would like to send using a GitHub Actions workflow. Or the `client_payload` can be used as a test to debug your workflow. For a test example, see the [input example](https://developer.github.com/v3/repos/#example-4).  To give you write access to the repository, you must use a personal access token with the `repo` scope. For more information, see \"[Creating a personal access token for the command line](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line)\" in the GitHub Help documentation.  This input example shows how you can use the `client_payload` as a test to debug your workflow.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body83(); // Body83 | 

try {
    api_instance.reposCreateDispatchEvent(owner, repo, body);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateDispatchEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body83**](Body83.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateForAuthenticatedUser**
> Repository reposCreateForAuthenticatedUser(body)

Create a repository for the authenticated user

Creates a new repository for the authenticated user.  **OAuth scope requirements**  When using [OAuth](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), authorizations must include:  *   `public_repo` scope or `repo` scope to create a public repository *   `repo` scope to create a private repository

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var body = new Body172(); // Body172 | 

try {
    var result = api_instance.reposCreateForAuthenticatedUser(body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body172**](Body172.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/scim+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateFork**
> Repository reposCreateFork(owner, repo, body)

Create a fork

Create a fork for the authenticated user.  **Note**: Forking a Repository happens asynchronously. You may have to wait a short period of time before you can access the git objects. If this takes longer than 5 minutes, be sure to contact [GitHub Support](https://github.com/contact) or [GitHub Premium Support](https://premium.githubsupport.com).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body84(); // Body84 | 

try {
    var result = api_instance.reposCreateFork(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateFork: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body84**](Body84.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/scim+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateInOrg**
> Repository reposCreateInOrg(org, body)

Create an organization repository

Creates a new repository in the specified organization. The authenticated user must be a member of the organization.  **OAuth scope requirements**  When using [OAuth](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), authorizations must include:  *   `public_repo` scope or `repo` scope to create a public repository *   `repo` scope to create a private repository

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var org = org_example; // String | 
var body = new Body41(); // Body41 | 

try {
    var result = api_instance.reposCreateInOrg(org, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body41**](Body41.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateOrUpdateFileContents**
> FileCommit reposCreateOrUpdateFileContents(owner, repo, path, body)

Create or update file contents

Creates a new file or replaces an existing file in a repository.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var path = path_example; // String | path+ parameter
var body = new Body79(); // Body79 | 

try {
    var result = api_instance.reposCreateOrUpdateFileContents(owner, repo, path, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateOrUpdateFileContents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **path** | **String**| path+ parameter | 
 **body** | [**Body79**](Body79.md)|  | [optional] 

### Return type

[**FileCommit**](FileCommit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreatePagesSite**
> Page reposCreatePagesSite(owner, repo, body)

Create a GitHub Pages site

Configures a GitHub Pages site. For more information, see \"[About GitHub Pages](/github/working-with-github-pages/about-github-pages).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body119(); // Body119 | 

try {
    var result = api_instance.reposCreatePagesSite(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreatePagesSite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body119**](Body119.md)|  | [optional] 

### Return type

[**Page**](Page.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateRelease**
> Release reposCreateRelease(owner, repo, body)

Create a release

Users with push access to the repository can create a release.  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body135(); // Body135 | 

try {
    var result = api_instance.reposCreateRelease(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body135**](Body135.md)|  | [optional] 

### Return type

[**Release**](Release.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateUsingTemplate**
> Repository reposCreateUsingTemplate(templateOwner, templateRepo, body)

Create a repository using a template

Creates a new repository using a repository template. Use the `template_owner` and `template_repo` route parameters to specify the repository to use as the template. The authenticated user must own or be a member of an organization that owns the repository. To check if a repository is available to use as a template, get the repository's information using the [Get a repository](https://developer.github.com/v3/repos/#get-a-repository) endpoint and check that the `is_template` key is `true`.  **OAuth scope requirements**  When using [OAuth](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), authorizations must include:  *   `public_repo` scope or `repo` scope to create a public repository *   `repo` scope to create a private repository

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var templateOwner = templateOwner_example; // String | 
var templateRepo = templateRepo_example; // String | 
var body = new Body142(); // Body142 | 

try {
    var result = api_instance.reposCreateUsingTemplate(templateOwner, templateRepo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateUsingTemplate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateOwner** | **String**|  | 
 **templateRepo** | **String**|  | 
 **body** | [**Body142**](Body142.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposCreateWebhook**
> Hook reposCreateWebhook(owner, repo, body)

Create a repository webhook

Repositories can have multiple webhooks installed. Each webhook should have a unique `config`. Multiple webhooks can share the same `config` as long as those webhooks do not have any `events` that overlap.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body91(); // Body91 | 

try {
    var result = api_instance.reposCreateWebhook(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposCreateWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body91**](Body91.md)|  | [optional] 

### Return type

[**Hook**](Hook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeclineInvitation**
> reposDeclineInvitation(invitationId)

Decline a repository invitation

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var invitationId = 56; // int | invitation_id parameter

try {
    api_instance.reposDeclineInvitation(invitationId);
} catch (e) {
    print("Exception when calling ReposApi->reposDeclineInvitation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **int**| invitation_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDelete**
> reposDelete(owner, repo)

Delete a repository

Deleting a repository requires admin access. If OAuth is used, the `delete_repo` scope is required.  If an organization owner has configured the organization to prevent members from deleting organization-owned repositories, you will get a `403 Forbidden` response.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.reposDelete(owner, repo);
} catch (e) {
    print("Exception when calling ReposApi->reposDelete: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteAccessRestrictions**
> reposDeleteAccessRestrictions(owner, repo, branch)

Delete access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Disables the ability to restrict who can push to this branch.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    api_instance.reposDeleteAccessRestrictions(owner, repo, branch);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteAdminBranchProtection**
> reposDeleteAdminBranchProtection(owner, repo, branch)

Delete admin branch protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Removing admin enforcement requires admin or owner permissions to the repository and branch protection to be enabled.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    api_instance.reposDeleteAdminBranchProtection(owner, repo, branch);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteAdminBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteBranchProtection**
> reposDeleteBranchProtection(owner, repo, branch)

Delete branch protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    api_instance.reposDeleteBranchProtection(owner, repo, branch);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteCommitComment**
> reposDeleteCommitComment(owner, repo, commentId)

Delete a commit comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter

try {
    api_instance.reposDeleteCommitComment(owner, repo, commentId);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteCommitComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteCommitSignatureProtection**
> reposDeleteCommitSignatureProtection(owner, repo, branch)

Delete commit signature protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  When authenticated with admin or owner permissions to the repository, you can use this endpoint to disable required signed commits on a branch. You must enable branch protection to require signed commits.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    api_instance.reposDeleteCommitSignatureProtection(owner, repo, branch);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteCommitSignatureProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteDeployKey**
> reposDeleteDeployKey(owner, repo, keyId)

Delete a deploy key

Deploy keys are immutable. If you need to update a key, remove the key and create a new one instead.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var keyId = 56; // int | key_id parameter

try {
    api_instance.reposDeleteDeployKey(owner, repo, keyId);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteDeployKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **keyId** | **int**| key_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteDeployment**
> reposDeleteDeployment(owner, repo, deploymentId)

Delete a deployment

To ensure there can always be an active deployment, you can only delete an _inactive_ deployment. Anyone with `repo` or `repo_deployment` scopes can delete an inactive deployment.  To set a deployment as inactive, you must:  *   Create a new deployment that is active so that the system has a record of the current state, then delete the previously active deployment. *   Mark the active deployment as inactive by adding any non-successful deployment status.  For more information, see \"[Create a deployment](https://developer.github.com/v3/repos/deployments/#create-a-deployment)\" and \"[Create a deployment status](https://developer.github.com/v3/repos/deployments/#create-a-deployment-status).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var deploymentId = 56; // int | deployment_id parameter

try {
    api_instance.reposDeleteDeployment(owner, repo, deploymentId);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteDeployment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **deploymentId** | **int**| deployment_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteFile**
> FileCommit reposDeleteFile(owner, repo, path, body)

Delete a file

Deletes a file in a repository.  You can provide an additional `committer` parameter, which is an object containing information about the committer. Or, you can provide an `author` parameter, which is an object containing information about the author.  The `author` section is optional and is filled in with the `committer` information if omitted. If the `committer` information is omitted, the authenticated user's information is used.  You must provide values for both `name` and `email`, whether you choose to use `author` or `committer`. Otherwise, you'll receive a `422` status code.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var path = path_example; // String | path+ parameter
var body = new Body80(); // Body80 | 

try {
    var result = api_instance.reposDeleteFile(owner, repo, path, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **path** | **String**| path+ parameter | 
 **body** | [**Body80**](Body80.md)|  | [optional] 

### Return type

[**FileCommit**](FileCommit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteInvitation**
> reposDeleteInvitation(owner, repo, invitationId)

Delete a repository invitation

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var invitationId = 56; // int | invitation_id parameter

try {
    api_instance.reposDeleteInvitation(owner, repo, invitationId);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteInvitation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **invitationId** | **int**| invitation_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeletePagesSite**
> reposDeletePagesSite(owner, repo)

Delete a GitHub Pages site

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.reposDeletePagesSite(owner, repo);
} catch (e) {
    print("Exception when calling ReposApi->reposDeletePagesSite: $e\n");
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeletePullRequestReviewProtection**
> reposDeletePullRequestReviewProtection(owner, repo, branch)

Delete pull request review protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    api_instance.reposDeletePullRequestReviewProtection(owner, repo, branch);
} catch (e) {
    print("Exception when calling ReposApi->reposDeletePullRequestReviewProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteRelease**
> reposDeleteRelease(owner, repo, releaseId)

Delete a release

Users with push access to the repository can delete a release.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var releaseId = 56; // int | release_id parameter

try {
    api_instance.reposDeleteRelease(owner, repo, releaseId);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **releaseId** | **int**| release_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteReleaseAsset**
> reposDeleteReleaseAsset(owner, repo, assetId)

Delete a release asset

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var assetId = 56; // int | asset_id parameter

try {
    api_instance.reposDeleteReleaseAsset(owner, repo, assetId);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteReleaseAsset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **assetId** | **int**| asset_id parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDeleteWebhook**
> reposDeleteWebhook(owner, repo, hookId)

Delete a repository webhook

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var hookId = 56; // int | 

try {
    api_instance.reposDeleteWebhook(owner, repo, hookId);
} catch (e) {
    print("Exception when calling ReposApi->reposDeleteWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDisableAutomatedSecurityFixes**
> reposDisableAutomatedSecurityFixes(owner, repo)

Disable automated security fixes

Disables automated security fixes for a repository. The authenticated user must have admin access to the repository. For more information, see \"[Configuring automated security fixes](https://help.github.com/en/articles/configuring-automated-security-fixes)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.reposDisableAutomatedSecurityFixes(owner, repo);
} catch (e) {
    print("Exception when calling ReposApi->reposDisableAutomatedSecurityFixes: $e\n");
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

# **reposDisableVulnerabilityAlerts**
> reposDisableVulnerabilityAlerts(owner, repo)

Disable vulnerability alerts

Disables dependency alerts and the dependency graph for a repository. The authenticated user must have admin access to the repository. For more information, see \"[About security alerts for vulnerable dependencies](https://help.github.com/en/articles/about-security-alerts-for-vulnerable-dependencies)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.reposDisableVulnerabilityAlerts(owner, repo);
} catch (e) {
    print("Exception when calling ReposApi->reposDisableVulnerabilityAlerts: $e\n");
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

# **reposDownloadTarballArchive**
> reposDownloadTarballArchive(owner, repo, ref)

Download a repository archive (tar)

Gets a redirect URL to download a tar archive for a repository. If you omit `:ref`, the repository’s default branch (usually `master`) will be used. Please make sure your HTTP framework is configured to follow redirects or you will need to use the `Location` header to make a second `GET` request. **Note**: For private repositories, these links are temporary and expire after five minutes.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | 

try {
    api_instance.reposDownloadTarballArchive(owner, repo, ref);
} catch (e) {
    print("Exception when calling ReposApi->reposDownloadTarballArchive: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposDownloadZipballArchive**
> reposDownloadZipballArchive(owner, repo, ref)

Download a repository archive (zip)

Gets a redirect URL to download a zip archive for a repository. If you omit `:ref`, the repository’s default branch (usually `master`) will be used. Please make sure your HTTP framework is configured to follow redirects or you will need to use the `Location` header to make a second `GET` request. **Note**: For private repositories, these links are temporary and expire after five minutes.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | 

try {
    api_instance.reposDownloadZipballArchive(owner, repo, ref);
} catch (e) {
    print("Exception when calling ReposApi->reposDownloadZipballArchive: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposEnableAutomatedSecurityFixes**
> reposEnableAutomatedSecurityFixes(owner, repo)

Enable automated security fixes

Enables automated security fixes for a repository. The authenticated user must have admin access to the repository. For more information, see \"[Configuring automated security fixes](https://help.github.com/en/articles/configuring-automated-security-fixes)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.reposEnableAutomatedSecurityFixes(owner, repo);
} catch (e) {
    print("Exception when calling ReposApi->reposEnableAutomatedSecurityFixes: $e\n");
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

# **reposEnableVulnerabilityAlerts**
> reposEnableVulnerabilityAlerts(owner, repo)

Enable vulnerability alerts

Enables dependency alerts and the dependency graph for a repository. The authenticated user must have admin access to the repository. For more information, see \"[About security alerts for vulnerable dependencies](https://help.github.com/en/articles/about-security-alerts-for-vulnerable-dependencies)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.reposEnableVulnerabilityAlerts(owner, repo);
} catch (e) {
    print("Exception when calling ReposApi->reposEnableVulnerabilityAlerts: $e\n");
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

# **reposGet**
> FullRepository reposGet(owner, repo)

Get a repository

When you pass the `scarlet-witch-preview` media type, requests to get a repository will also return the repository's code of conduct if it can be detected from the repository's code of conduct file.  The `parent` and `source` objects are present when the repository is a fork. `parent` is the repository this repository was forked from, `source` is the ultimate source for the network.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGet(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**FullRepository**](FullRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetAccessRestrictions**
> BranchRestrictionPolicy reposGetAccessRestrictions(owner, repo, branch)

Get access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists who has access to this protected branch.  **Note**: Users, apps, and teams `restrictions` are only available for organization-owned repositories.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetAccessRestrictions(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**BranchRestrictionPolicy**](BranchRestrictionPolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetAdminBranchProtection**
> ProtectedBranchAdminEnforced reposGetAdminBranchProtection(owner, repo, branch)

Get admin branch protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetAdminBranchProtection(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetAdminBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**ProtectedBranchAdminEnforced**](ProtectedBranchAdminEnforced.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetAllStatusCheckContexts**
> List<String> reposGetAllStatusCheckContexts(owner, repo, branch)

Get all status check contexts

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetAllStatusCheckContexts(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetAllStatusCheckContexts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetAllTopics**
> Topic reposGetAllTopics(owner, repo)

Get all repository topics

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetAllTopics(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetAllTopics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**Topic**](Topic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetAppsWithAccessToProtectedBranch**
> List<Integration> reposGetAppsWithAccessToProtectedBranch(owner, repo, branch)

Get apps with access to the protected branch

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists the GitHub Apps that have push access to this branch. Only installed GitHub Apps with `write` access to the `contents` permission can be added as authorized actors on a protected branch.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetAppsWithAccessToProtectedBranch(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetAppsWithAccessToProtectedBranch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**List<Integration>**](Integration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetBranch**
> BranchWithProtection reposGetBranch(owner, repo, branch)

Get a branch

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetBranch(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetBranch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**BranchWithProtection**](BranchWithProtection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetBranchProtection**
> BranchProtection reposGetBranchProtection(owner, repo, branch)

Get branch protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetBranchProtection(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**BranchProtection**](BranchProtection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetClones**
> CloneTraffic reposGetClones(owner, repo, per)

Get repository clones

Get the total number of clones and breakdown per day or week for the last 14 days. Timestamps are aligned to UTC midnight of the beginning of the day or week. Week begins on Monday.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var per = per_example; // String | Must be one of: `day`, `week`.

try {
    var result = api_instance.reposGetClones(owner, repo, per);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetClones: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **per** | **String**| Must be one of: &#x60;day&#x60;, &#x60;week&#x60;. | [optional] [default to day]

### Return type

[**CloneTraffic**](CloneTraffic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetCodeFrequencyStats**
> List<CodeFrequencyStat> reposGetCodeFrequencyStats(owner, repo)

Get the weekly commit activity

Returns a weekly aggregate of the number of additions and deletions pushed to a repository.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetCodeFrequencyStats(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetCodeFrequencyStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**List<CodeFrequencyStat>**](CodeFrequencyStat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetCollaboratorPermissionLevel**
> RepositoryCollaboratorPermission reposGetCollaboratorPermissionLevel(owner, repo, username)

Get repository permissions for a user

Checks the repository permission of a collaborator. The possible repository permissions are `admin`, `write`, `read`, and `none`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var username = username_example; // String | 

try {
    var result = api_instance.reposGetCollaboratorPermissionLevel(owner, repo, username);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetCollaboratorPermissionLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **username** | **String**|  | 

### Return type

[**RepositoryCollaboratorPermission**](RepositoryCollaboratorPermission.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetCombinedStatusForRef**
> CombinedCommitStatus reposGetCombinedStatusForRef(owner, repo, ref)

Get the combined status for a specific reference

Users with pull access in a repository can access a combined view of commit statuses for a given ref. The ref can be a SHA, a branch name, or a tag name.  The most recent status for each context is returned, up to 100. This field [paginates](https://developer.github.com/v3/#pagination) if there are over 100 contexts.  Additionally, a combined `state` is returned. The `state` is one of:  *   **failure** if any of the contexts report as `error` or `failure` *   **pending** if there are no statuses or a context is `pending` *   **success** if the latest status for all contexts is `success`

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | ref+ parameter

try {
    var result = api_instance.reposGetCombinedStatusForRef(owner, repo, ref);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetCombinedStatusForRef: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**| ref+ parameter | 

### Return type

[**CombinedCommitStatus**](CombinedCommitStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetCommit**
> Commit reposGetCommit(owner, repo, ref)

Get a commit

Returns the contents of a single commit reference. You must have `read` access for the repository to use this endpoint.  **Note:** If there are more than 300 files in the commit diff, the response will include pagination link headers for the remaining files, up to a limit of 3000 files. Each page contains the static commit information, and the only changes are to the file listing.  You can pass the appropriate [media type](https://developer.github.com/v3/media/#commits-commit-comparison-and-pull-requests) to  fetch `diff` and `patch` formats. Diffs with binary data will have no `patch` property.  To return only the SHA-1 hash of the commit reference, you can provide the `sha` custom [media type](https://developer.github.com/v3/media/#commits-commit-comparison-and-pull-requests) in the `Accept` header. You can use this endpoint to check if a remote reference's SHA-1 hash is the same as your local reference's SHA-1 hash by providing the local SHA-1 reference as the ETag.  **Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | ref+ parameter

try {
    var result = api_instance.reposGetCommit(owner, repo, ref);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetCommit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**| ref+ parameter | 

### Return type

[**Commit**](Commit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetCommitActivityStats**
> List<CommitActivity> reposGetCommitActivityStats(owner, repo)

Get the last year of commit activity

Returns the last year of commit activity grouped by week. The `days` array is a group of commits per day, starting on `Sunday`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetCommitActivityStats(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetCommitActivityStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**List<CommitActivity>**](CommitActivity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetCommitComment**
> CommitComment reposGetCommitComment(owner, repo, commentId)

Get a commit comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter

try {
    var result = api_instance.reposGetCommitComment(owner, repo, commentId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetCommitComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 

### Return type

[**CommitComment**](CommitComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetCommitSignatureProtection**
> ProtectedBranchAdminEnforced reposGetCommitSignatureProtection(owner, repo, branch)

Get commit signature protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  When authenticated with admin or owner permissions to the repository, you can use this endpoint to check whether a branch requires signed commits. An enabled status of `true` indicates you must sign commits on this branch. For more information, see [Signing commits with GPG](https://help.github.com/articles/signing-commits-with-gpg) in GitHub Help.  **Note**: You must enable branch protection to require signed commits.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetCommitSignatureProtection(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetCommitSignatureProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**ProtectedBranchAdminEnforced**](ProtectedBranchAdminEnforced.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetCommunityProfileMetrics**
> CommunityProfile reposGetCommunityProfileMetrics(owner, repo)

Get community profile metrics

This endpoint will return all community profile metrics, including an overall health score, repository description, the presence of documentation, detected code of conduct, detected license, and the presence of ISSUE\\_TEMPLATE, PULL\\_REQUEST\\_TEMPLATE, README, and CONTRIBUTING files.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetCommunityProfileMetrics(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetCommunityProfileMetrics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**CommunityProfile**](CommunityProfile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetContent**
> ContentTree reposGetContent(owner, repo, path, ref)

Get repository content

Gets the contents of a file or directory in a repository. Specify the file path or directory in `:path`. If you omit `:path`, you will receive the contents of all files in the repository.  Files and symlinks support [a custom media type](https://developer.github.com/v3/repos/contents/#custom-media-types) for retrieving the raw content or rendered HTML (when supported). All content types support [a custom media type](https://developer.github.com/v3/repos/contents/#custom-media-types) to ensure the content is returned in a consistent object format.  **Note**: *   To get a repository's contents recursively, you can [recursively get the tree](https://developer.github.com/v3/git/trees/). *   This API has an upper limit of 1,000 files for a directory. If you need to retrieve more files, use the [Git Trees API](https://developer.github.com/v3/git/trees/#get-a-tree). *   This API supports files up to 1 megabyte in size.  #### If the content is a directory The response will be an array of objects, one object for each item in the directory. When listing the contents of a directory, submodules have their \"type\" specified as \"file\". Logically, the value _should_ be \"submodule\". This behavior exists in API v3 [for backwards compatibility purposes](https://git.io/v1YCW). In the next major version of the API, the type will be returned as \"submodule\".  #### If the content is a symlink  If the requested `:path` points to a symlink, and the symlink's target is a normal file in the repository, then the API responds with the content of the file (in the format shown in the example. Otherwise, the API responds with an object  describing the symlink itself.  #### If the content is a submodule The `submodule_git_url` identifies the location of the submodule repository, and the `sha` identifies a specific commit within the submodule repository. Git uses the given URL when cloning the submodule repository, and checks out the submodule at that specific commit.  If the submodule repository is not hosted on github.com, the Git URLs (`git_url` and `_links[\"git\"]`) and the github.com URLs (`html_url` and `_links[\"html\"]`) will have null values.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var path = path_example; // String | path+ parameter
var ref = ref_example; // String | The name of the commit/branch/tag. Default: the repository’s default branch (usually `master`)

try {
    var result = api_instance.reposGetContent(owner, repo, path, ref);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetContent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **path** | **String**| path+ parameter | 
 **ref** | **String**| The name of the commit/branch/tag. Default: the repository’s default branch (usually &#x60;master&#x60;) | [optional] 

### Return type

[**ContentTree**](ContentTree.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.github.v3.object, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetContributorsStats**
> List<ContributorActivity> reposGetContributorsStats(owner, repo)

Get all contributor commit activity

 Returns the `total` number of commits authored by the contributor. In addition, the response includes a Weekly Hash (`weeks` array) with the following information:  *   `w` - Start of the week, given as a [Unix timestamp](http://en.wikipedia.org/wiki/Unix_time). *   `a` - Number of additions *   `d` - Number of deletions *   `c` - Number of commits

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetContributorsStats(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetContributorsStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**List<ContributorActivity>**](ContributorActivity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetDeployKey**
> DeployKey reposGetDeployKey(owner, repo, keyId)

Get a deploy key

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var keyId = 56; // int | key_id parameter

try {
    var result = api_instance.reposGetDeployKey(owner, repo, keyId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetDeployKey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **keyId** | **int**| key_id parameter | 

### Return type

[**DeployKey**](DeployKey.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetDeployment**
> Deployment reposGetDeployment(owner, repo, deploymentId)

Get a deployment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var deploymentId = 56; // int | deployment_id parameter

try {
    var result = api_instance.reposGetDeployment(owner, repo, deploymentId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetDeployment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **deploymentId** | **int**| deployment_id parameter | 

### Return type

[**Deployment**](Deployment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetDeploymentStatus**
> DeploymentStatus reposGetDeploymentStatus(owner, repo, deploymentId, statusId)

Get a deployment status

Users with pull access can view a deployment status for a deployment:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var deploymentId = 56; // int | deployment_id parameter
var statusId = 56; // int | 

try {
    var result = api_instance.reposGetDeploymentStatus(owner, repo, deploymentId, statusId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetDeploymentStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **deploymentId** | **int**| deployment_id parameter | 
 **statusId** | **int**|  | 

### Return type

[**DeploymentStatus**](DeploymentStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetLatestPagesBuild**
> PageBuild reposGetLatestPagesBuild(owner, repo)

Get latest Pages build

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetLatestPagesBuild(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetLatestPagesBuild: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**PageBuild**](PageBuild.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetLatestRelease**
> Release reposGetLatestRelease(owner, repo)

Get the latest release

View the latest published full release for the repository.  The latest release is the most recent non-prerelease, non-draft release, sorted by the `created_at` attribute. The `created_at` attribute is the date of the commit used for the release, and not the date when the release was drafted or published.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetLatestRelease(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetLatestRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**Release**](Release.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetPages**
> Page reposGetPages(owner, repo)

Get a GitHub Pages site

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetPages(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetPages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**Page**](Page.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetPagesBuild**
> PageBuild reposGetPagesBuild(owner, repo, buildId)

Get GitHub Pages build

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var buildId = 56; // int | 

try {
    var result = api_instance.reposGetPagesBuild(owner, repo, buildId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetPagesBuild: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **buildId** | **int**|  | 

### Return type

[**PageBuild**](PageBuild.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetParticipationStats**
> ParticipationStats reposGetParticipationStats(owner, repo)

Get the weekly commit count

Returns the total commit counts for the `owner` and total commit counts in `all`. `all` is everyone combined, including the `owner` in the last 52 weeks. If you'd like to get the commit counts for non-owners, you can subtract `owner` from `all`.  The array order is oldest week (index 0) to most recent week.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetParticipationStats(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetParticipationStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**ParticipationStats**](ParticipationStats.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetPullRequestReviewProtection**
> ProtectedBranchPullRequestReview reposGetPullRequestReviewProtection(owner, repo, branch)

Get pull request review protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetPullRequestReviewProtection(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetPullRequestReviewProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**ProtectedBranchPullRequestReview**](ProtectedBranchPullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.github.luke-cage-preview+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetPunchCardStats**
> List<CodeFrequencyStat> reposGetPunchCardStats(owner, repo)

Get the hourly commit count for each day

Each array contains the day number, hour number, and number of commits:  *   `0-6`: Sunday - Saturday *   `0-23`: Hour of day *   Number of commits  For example, `[2, 14, 25]` indicates that there were 25 total commits, during the 2:00pm hour on Tuesdays. All times are based on the time zone of individual commits.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetPunchCardStats(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetPunchCardStats: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**List<CodeFrequencyStat>**](CodeFrequencyStat.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetReadme**
> ContentFile reposGetReadme(owner, repo, ref)

Get a repository README

Gets the preferred README for a repository.  READMEs support [custom media types](https://developer.github.com/v3/repos/contents/#custom-media-types) for retrieving the raw content or rendered HTML.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | The name of the commit/branch/tag. Default: the repository’s default branch (usually `master`)

try {
    var result = api_instance.reposGetReadme(owner, repo, ref);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetReadme: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **ref** | **String**| The name of the commit/branch/tag. Default: the repository’s default branch (usually &#x60;master&#x60;) | [optional] 

### Return type

[**ContentFile**](ContentFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetRelease**
> Release reposGetRelease(owner, repo, releaseId)

Get a release

**Note:** This returns an `upload_url` key corresponding to the endpoint for uploading release assets. This key is a [hypermedia resource](https://developer.github.com/v3/#hypermedia).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var releaseId = 56; // int | release_id parameter

try {
    var result = api_instance.reposGetRelease(owner, repo, releaseId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **releaseId** | **int**| release_id parameter | 

### Return type

[**Release**](Release.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetReleaseAsset**
> ReleaseAsset reposGetReleaseAsset(owner, repo, assetId)

Get a release asset

To download the asset's binary content, set the `Accept` header of the request to [`application/octet-stream`](https://developer.github.com/v3/media/#media-types). The API will either redirect the client to the location, or stream it directly if possible. API clients should handle both a `200` or `302` response.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var assetId = 56; // int | asset_id parameter

try {
    var result = api_instance.reposGetReleaseAsset(owner, repo, assetId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetReleaseAsset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **assetId** | **int**| asset_id parameter | 

### Return type

[**ReleaseAsset**](ReleaseAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetReleaseByTag**
> Release reposGetReleaseByTag(owner, repo, tag)

Get a release by tag name

Get a published release with the specified tag.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var tag = tag_example; // String | tag+ parameter

try {
    var result = api_instance.reposGetReleaseByTag(owner, repo, tag);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetReleaseByTag: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **tag** | **String**| tag+ parameter | 

### Return type

[**Release**](Release.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetStatusChecksProtection**
> StatusCheckPolicy reposGetStatusChecksProtection(owner, repo, branch)

Get status checks protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetStatusChecksProtection(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetStatusChecksProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**StatusCheckPolicy**](StatusCheckPolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetTeamsWithAccessToProtectedBranch**
> List<Team> reposGetTeamsWithAccessToProtectedBranch(owner, repo, branch)

Get teams with access to the protected branch

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists the teams who have push access to this branch. The list includes child teams.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetTeamsWithAccessToProtectedBranch(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetTeamsWithAccessToProtectedBranch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**List<Team>**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetTopPaths**
> List<ContentTraffic> reposGetTopPaths(owner, repo)

Get top referral paths

Get the top 10 popular contents over the last 14 days.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetTopPaths(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetTopPaths: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**List<ContentTraffic>**](ContentTraffic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetTopReferrers**
> List<ReferrerTraffic> reposGetTopReferrers(owner, repo)

Get top referral sources

Get the top 10 referrers over the last 14 days.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposGetTopReferrers(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetTopReferrers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**List<ReferrerTraffic>**](ReferrerTraffic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetUsersWithAccessToProtectedBranch**
> List<SimpleUser> reposGetUsersWithAccessToProtectedBranch(owner, repo, branch)

Get users with access to the protected branch

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists the people who have push access to this branch.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposGetUsersWithAccessToProtectedBranch(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetUsersWithAccessToProtectedBranch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetViews**
> ViewTraffic reposGetViews(owner, repo, per)

Get page views

Get the total number of views and breakdown per day or week for the last 14 days. Timestamps are aligned to UTC midnight of the beginning of the day or week. Week begins on Monday.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var per = per_example; // String | Must be one of: `day`, `week`.

try {
    var result = api_instance.reposGetViews(owner, repo, per);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetViews: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **per** | **String**| Must be one of: &#x60;day&#x60;, &#x60;week&#x60;. | [optional] [default to day]

### Return type

[**ViewTraffic**](ViewTraffic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetWebhook**
> Hook reposGetWebhook(owner, repo, hookId)

Get a repository webhook

Returns a webhook configured in a repository. To get only the webhook `config` properties, see \"[Get a webhook configuration for a repository](/rest/reference/repos#get-a-webhook-configuration-for-a-repository).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var hookId = 56; // int | 

try {
    var result = api_instance.reposGetWebhook(owner, repo, hookId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

[**Hook**](Hook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposGetWebhookConfigForRepo**
> WebhookConfig reposGetWebhookConfigForRepo(owner, repo, hookId)

Get a webhook configuration for a repository

Returns the webhook configuration for a repository. To get more information about the webhook, including the `active` state and `events`, use \"[Get a repository webhook](/rest/reference/orgs#get-a-repository-webhook).\"  Access tokens must have the `read:repo_hook` or `repo` scope, and GitHub Apps must have the `repository_hooks:read` permission.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var hookId = 56; // int | 

try {
    var result = api_instance.reposGetWebhookConfigForRepo(owner, repo, hookId);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposGetWebhookConfigForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

[**WebhookConfig**](WebhookConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListBranches**
> List<ShortBranch> reposListBranches(owner, repo, protected, perPage, page)

List branches

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var protected = true; // bool | Setting to `true` returns only protected branches. When set to `false`, only unprotected branches are returned. Omitting this parameter returns all branches.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListBranches(owner, repo, protected, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListBranches: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **protected** | **bool**| Setting to &#x60;true&#x60; returns only protected branches. When set to &#x60;false&#x60;, only unprotected branches are returned. Omitting this parameter returns all branches. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<ShortBranch>**](ShortBranch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListBranchesForHeadCommit**
> List<BranchShort> reposListBranchesForHeadCommit(owner, repo, commitSha)

List branches for HEAD commit

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Returns all branches where the given commit SHA is the HEAD, or latest commit for the branch.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commitSha = commitSha_example; // String | commit_sha+ parameter

try {
    var result = api_instance.reposListBranchesForHeadCommit(owner, repo, commitSha);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListBranchesForHeadCommit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commitSha** | **String**| commit_sha+ parameter | 

### Return type

[**List<BranchShort>**](BranchShort.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListCollaborators**
> List<Collaborator> reposListCollaborators(owner, repo, affiliation, perPage, page)

List repository collaborators

For organization-owned repositories, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners.  Team members will include the members of child teams.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var affiliation = affiliation_example; // String | Filter collaborators returned by their affiliation. Can be one of:   \\* `outside`: All outside collaborators of an organization-owned repository.   \\* `direct`: All collaborators with permissions to an organization-owned repository, regardless of organization membership status.   \\* `all`: All collaborators the authenticated user can see.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListCollaborators(owner, repo, affiliation, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListCollaborators: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **affiliation** | **String**| Filter collaborators returned by their affiliation. Can be one of:   \\* &#x60;outside&#x60;: All outside collaborators of an organization-owned repository.   \\* &#x60;direct&#x60;: All collaborators with permissions to an organization-owned repository, regardless of organization membership status.   \\* &#x60;all&#x60;: All collaborators the authenticated user can see. | [optional] [default to all]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Collaborator>**](Collaborator.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListCommentsForCommit**
> List<CommitComment> reposListCommentsForCommit(owner, repo, commitSha, perPage, page)

List commit comments

Use the `:commit_sha` to specify the commit that will have its comments listed.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commitSha = commitSha_example; // String | commit_sha+ parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListCommentsForCommit(owner, repo, commitSha, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListCommentsForCommit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commitSha** | **String**| commit_sha+ parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<CommitComment>**](CommitComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListCommitCommentsForRepo**
> List<CommitComment> reposListCommitCommentsForRepo(owner, repo, perPage, page)

List commit comments for a repository

Commit Comments use [these custom media types](https://developer.github.com/v3/repos/comments/#custom-media-types). You can read more about the use of media types in the API [here](https://developer.github.com/v3/media/).  Comments are ordered by ascending ID.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListCommitCommentsForRepo(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListCommitCommentsForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<CommitComment>**](CommitComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListCommitStatusesForRef**
> List<Status> reposListCommitStatusesForRef(owner, repo, ref, perPage, page)

List commit statuses for a reference

Users with pull access in a repository can view commit statuses for a given ref. The ref can be a SHA, a branch name, or a tag name. Statuses are returned in reverse chronological order. The first status in the list will be the latest one.  This resource is also available via a legacy route: `GET /repos/:owner/:repo/statuses/:ref`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var ref = ref_example; // String | ref+ parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListCommitStatusesForRef(owner, repo, ref, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListCommitStatusesForRef: $e\n");
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

[**List<Status>**](Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListCommits**
> List<SimpleCommit> reposListCommits(owner, repo, sha, path, author, since, until, perPage, page)

List commits

**Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var sha = sha_example; // String | SHA or branch to start listing commits from. Default: the repository’s default branch (usually `master`).
var path = path_example; // String | Only commits containing this file path will be returned.
var author = author_example; // String | GitHub login or email address by which to filter by commit author.
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var until = until_example; // String | Only commits before this date will be returned. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListCommits(owner, repo, sha, path, author, since, until, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListCommits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **sha** | **String**| SHA or branch to start listing commits from. Default: the repository’s default branch (usually &#x60;master&#x60;). | [optional] 
 **path** | **String**| Only commits containing this file path will be returned. | [optional] 
 **author** | **String**| GitHub login or email address by which to filter by commit author. | [optional] 
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **until** | **String**| Only commits before this date will be returned. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<SimpleCommit>**](SimpleCommit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/scim+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListContributors**
> List<Contributor> reposListContributors(owner, repo, anon, perPage, page)

List repository contributors

Lists contributors to the specified repository and sorts them by the number of commits per contributor in descending order. This endpoint may return information that is a few hours old because the GitHub REST API v3 caches contributor data to improve performance.  GitHub identifies contributors by author email address. This endpoint groups contribution counts by GitHub user, which includes all associated email addresses. To improve performance, only the first 500 author email addresses in the repository link to GitHub users. The rest will appear as anonymous contributors without associated GitHub user information.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var anon = anon_example; // String | Set to `1` or `true` to include anonymous contributors in results.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListContributors(owner, repo, anon, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListContributors: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **anon** | **String**| Set to &#x60;1&#x60; or &#x60;true&#x60; to include anonymous contributors in results. | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Contributor>**](Contributor.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListDeployKeys**
> List<DeployKey> reposListDeployKeys(owner, repo, perPage, page)

List deploy keys

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListDeployKeys(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListDeployKeys: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<DeployKey>**](DeployKey.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListDeploymentStatuses**
> List<DeploymentStatus> reposListDeploymentStatuses(owner, repo, deploymentId, perPage, page)

List deployment statuses

Users with pull access can view deployment statuses for a deployment:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var deploymentId = 56; // int | deployment_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListDeploymentStatuses(owner, repo, deploymentId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListDeploymentStatuses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **deploymentId** | **int**| deployment_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<DeploymentStatus>**](DeploymentStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListDeployments**
> List<Deployment> reposListDeployments(owner, repo, sha, ref, task, environment, perPage, page)

List deployments

Simple filtering of deployments is available via query parameters:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var sha = sha_example; // String | The SHA recorded at creation time.
var ref = ref_example; // String | The name of the ref. This can be a branch, tag, or SHA.
var task = task_example; // String | The name of the task for the deployment (e.g., `deploy` or `deploy:migrations`).
var environment = environment_example; // String | The name of the environment that was deployed to (e.g., `staging` or `production`).
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListDeployments(owner, repo, sha, ref, task, environment, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListDeployments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **sha** | **String**| The SHA recorded at creation time. | [optional] [default to none]
 **ref** | **String**| The name of the ref. This can be a branch, tag, or SHA. | [optional] [default to none]
 **task** | **String**| The name of the task for the deployment (e.g., &#x60;deploy&#x60; or &#x60;deploy:migrations&#x60;). | [optional] [default to none]
 **environment** | **String**| The name of the environment that was deployed to (e.g., &#x60;staging&#x60; or &#x60;production&#x60;). | [optional] [default to none]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Deployment>**](Deployment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListForAuthenticatedUser**
> List<Repository> reposListForAuthenticatedUser(visibility, affiliation, type, sort, direction, perPage, page, since, before)

List repositories for the authenticated user

Lists repositories that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access.  The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var visibility = visibility_example; // String | Can be one of `all`, `public`, or `private`.
var affiliation = affiliation_example; // String | Comma-separated list of values. Can include:   \\* `owner`: Repositories that are owned by the authenticated user.   \\* `collaborator`: Repositories that the user has been added to as a collaborator.   \\* `organization_member`: Repositories that the user has access to through being a member of an organization. This includes every repository on every team that the user is on.
var type = type_example; // String | Can be one of `all`, `owner`, `public`, `private`, `member`. Default: `all`      Will cause a `422` error if used in the same request as **visibility** or **affiliation**. Will cause a `422` error if used in the same request as **visibility** or **affiliation**.
var sort = sort_example; // String | Can be one of `created`, `updated`, `pushed`, `full_name`.
var direction = direction_example; // String | Can be one of `asc` or `desc`. Default: `asc` when using `full_name`, otherwise `desc`
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var before = before_example; // String | Only show notifications updated before the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.

try {
    var result = api_instance.reposListForAuthenticatedUser(visibility, affiliation, type, sort, direction, perPage, page, since, before);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visibility** | **String**| Can be one of &#x60;all&#x60;, &#x60;public&#x60;, or &#x60;private&#x60;. | [optional] [default to all]
 **affiliation** | **String**| Comma-separated list of values. Can include:   \\* &#x60;owner&#x60;: Repositories that are owned by the authenticated user.   \\* &#x60;collaborator&#x60;: Repositories that the user has been added to as a collaborator.   \\* &#x60;organization_member&#x60;: Repositories that the user has access to through being a member of an organization. This includes every repository on every team that the user is on. | [optional] [default to owner,collaborator,organization_member]
 **type** | **String**| Can be one of &#x60;all&#x60;, &#x60;owner&#x60;, &#x60;public&#x60;, &#x60;private&#x60;, &#x60;member&#x60;. Default: &#x60;all&#x60;      Will cause a &#x60;422&#x60; error if used in the same request as **visibility** or **affiliation**. Will cause a &#x60;422&#x60; error if used in the same request as **visibility** or **affiliation**. | [optional] [default to all]
 **sort** | **String**| Can be one of &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;pushed&#x60;, &#x60;full_name&#x60;. | [optional] [default to full_name]
 **direction** | **String**| Can be one of &#x60;asc&#x60; or &#x60;desc&#x60;. Default: &#x60;asc&#x60; when using &#x60;full_name&#x60;, otherwise &#x60;desc&#x60; | [optional] 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **before** | **String**| Only show notifications updated before the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 

### Return type

[**List<Repository>**](Repository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListForOrg**
> List<MinimalRepository> reposListForOrg(org, type, sort, direction, perPage, page)

List organization repositories

Lists repositories for the specified organization.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var org = org_example; // String | 
var type = type_example; // String | Specifies the types of repositories you want returned. Can be one of `all`, `public`, `private`, `forks`, `sources`, `member`, `internal`. Default: `all`. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, `type` can also be `internal`.
var sort = sort_example; // String | Can be one of `created`, `updated`, `pushed`, `full_name`.
var direction = direction_example; // String | Can be one of `asc` or `desc`. Default: when using `full_name`: `asc`, otherwise `desc`
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListForOrg(org, type, sort, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **type** | **String**| Specifies the types of repositories you want returned. Can be one of &#x60;all&#x60;, &#x60;public&#x60;, &#x60;private&#x60;, &#x60;forks&#x60;, &#x60;sources&#x60;, &#x60;member&#x60;, &#x60;internal&#x60;. Default: &#x60;all&#x60;. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, &#x60;type&#x60; can also be &#x60;internal&#x60;. | [optional] 
 **sort** | **String**| Can be one of &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;pushed&#x60;, &#x60;full_name&#x60;. | [optional] [default to created]
 **direction** | **String**| Can be one of &#x60;asc&#x60; or &#x60;desc&#x60;. Default: when using &#x60;full_name&#x60;: &#x60;asc&#x60;, otherwise &#x60;desc&#x60; | [optional] 
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

# **reposListForUser**
> List<MinimalRepository> reposListForUser(username, type, sort, direction, perPage, page)

List repositories for a user

Lists public repositories for the specified user.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var username = username_example; // String | 
var type = type_example; // String | Can be one of `all`, `owner`, `member`.
var sort = sort_example; // String | Can be one of `created`, `updated`, `pushed`, `full_name`.
var direction = direction_example; // String | Can be one of `asc` or `desc`. Default: `asc` when using `full_name`, otherwise `desc`
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListForUser(username, type, sort, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListForUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 
 **type** | **String**| Can be one of &#x60;all&#x60;, &#x60;owner&#x60;, &#x60;member&#x60;. | [optional] [default to owner]
 **sort** | **String**| Can be one of &#x60;created&#x60;, &#x60;updated&#x60;, &#x60;pushed&#x60;, &#x60;full_name&#x60;. | [optional] [default to full_name]
 **direction** | **String**| Can be one of &#x60;asc&#x60; or &#x60;desc&#x60;. Default: &#x60;asc&#x60; when using &#x60;full_name&#x60;, otherwise &#x60;desc&#x60; | [optional] 
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

# **reposListForks**
> List<MinimalRepository> reposListForks(owner, repo, sort, perPage, page)

List forks

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var sort = sort_example; // String | The sort order. Can be either `newest`, `oldest`, or `stargazers`.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListForks(owner, repo, sort, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListForks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **sort** | **String**| The sort order. Can be either &#x60;newest&#x60;, &#x60;oldest&#x60;, or &#x60;stargazers&#x60;. | [optional] [default to newest]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<MinimalRepository>**](MinimalRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/scim+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListInvitations**
> List<RepositoryInvitation> reposListInvitations(owner, repo, perPage, page)

List repository invitations

When authenticating as a user with admin rights to a repository, this endpoint will list all currently open repository invitations.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListInvitations(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListInvitations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<RepositoryInvitation>**](RepositoryInvitation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListInvitationsForAuthenticatedUser**
> List<RepositoryInvitation> reposListInvitationsForAuthenticatedUser(perPage, page)

List repository invitations for the authenticated user

When authenticating as a user, this endpoint will list all currently open repository invitations for that user.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListInvitationsForAuthenticatedUser(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListInvitationsForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<RepositoryInvitation>**](RepositoryInvitation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListLanguages**
> Language reposListLanguages(owner, repo)

List repository languages

Lists languages for the specified repository. The value shown for each language is the number of bytes of code written in that language.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposListLanguages(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListLanguages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**Language**](Language.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListPagesBuilds**
> List<PageBuild> reposListPagesBuilds(owner, repo, perPage, page)

List GitHub Pages builds

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListPagesBuilds(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListPagesBuilds: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<PageBuild>**](PageBuild.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListPublic**
> List<MinimalRepository> reposListPublic(perPage, since, visibility)

List public repositories

Lists all public repositories in the order that they were created.  Note: Pagination is powered exclusively by the `since` parameter. Use the [Link header](https://developer.github.com/v3/#link-header) to get the URL for the next page of repositories.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var perPage = 56; // int | Results per page (max 100)
var since = since_example; // String | Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
var visibility = visibility_example; // String | 

try {
    var result = api_instance.reposListPublic(perPage, since, visibility);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListPublic: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **since** | **String**| Only show notifications updated after the given time. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] 
 **visibility** | **String**|  | [optional] 

### Return type

[**List<MinimalRepository>**](MinimalRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListPullRequestsAssociatedWithCommit**
> List<PullRequestSimple> reposListPullRequestsAssociatedWithCommit(owner, repo, commitSha, perPage, page)

List pull requests associated with a commit

Lists all pull requests containing the provided commit SHA, which can be from any point in the commit history. The results will include open and closed pull requests. Additional preview headers may be required to see certain details for associated pull requests, such as whether a pull request is in a draft state. For more information about previews that might affect this endpoint, see the [List pull requests](https://developer.github.com/v3/pulls/#list-pull-requests) endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commitSha = commitSha_example; // String | commit_sha+ parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListPullRequestsAssociatedWithCommit(owner, repo, commitSha, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListPullRequestsAssociatedWithCommit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commitSha** | **String**| commit_sha+ parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<PullRequestSimple>**](PullRequestSimple.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListReleaseAssets**
> List<ReleaseAsset> reposListReleaseAssets(owner, repo, releaseId, perPage, page)

List release assets

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var releaseId = 56; // int | release_id parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListReleaseAssets(owner, repo, releaseId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListReleaseAssets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **releaseId** | **int**| release_id parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<ReleaseAsset>**](ReleaseAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListReleases**
> List<Release> reposListReleases(owner, repo, perPage, page)

List releases

This returns a list of releases, which does not include regular Git tags that have not been associated with a release. To get a list of Git tags, use the [Repository Tags API](https://developer.github.com/v3/repos/#list-repository-tags).  Information about published releases are available to everyone. Only users with push access will receive listings for draft releases.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListReleases(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListReleases: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Release>**](Release.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListTags**
> List<Tag> reposListTags(owner, repo, perPage, page)

List repository tags

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListTags(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListTags: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Tag>**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListTeams**
> List<Team> reposListTeams(owner, repo, perPage, page)

List repository teams

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListTeams(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListTeams: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Team>**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposListWebhooks**
> List<Hook> reposListWebhooks(owner, repo, perPage, page)

List repository webhooks

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.reposListWebhooks(owner, repo, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposListWebhooks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<Hook>**](Hook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposMerge**
> Commit reposMerge(owner, repo, body)

Merge a branch

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body114(); // Body114 | 

try {
    var result = api_instance.reposMerge(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposMerge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body114**](Body114.md)|  | [optional] 

### Return type

[**Commit**](Commit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposPingWebhook**
> reposPingWebhook(owner, repo, hookId)

Ping a repository webhook

This will trigger a [ping event](https://developer.github.com/webhooks/#ping-event) to be sent to the hook.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var hookId = 56; // int | 

try {
    api_instance.reposPingWebhook(owner, repo, hookId);
} catch (e) {
    print("Exception when calling ReposApi->reposPingWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposRemoveAppAccessRestrictions**
> List<Integration> reposRemoveAppAccessRestrictions(owner, repo, branch, body)

Remove app access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Removes the ability of an app to push to this branch. Only installed GitHub Apps with `write` access to the `contents` permission can be added as authorized actors on a protected branch.  | Type    | Description                                                                                                                                                | | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | The GitHub Apps that have push access to this branch. Use the app's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposRemoveAppAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposRemoveAppAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<Integration>**](Integration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposRemoveCollaborator**
> reposRemoveCollaborator(owner, repo, username)

Remove a repository collaborator

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var username = username_example; // String | 

try {
    api_instance.reposRemoveCollaborator(owner, repo, username);
} catch (e) {
    print("Exception when calling ReposApi->reposRemoveCollaborator: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposRemoveStatusCheckContexts**
> List<String> reposRemoveStatusCheckContexts(owner, repo, branch, body)

Remove status check contexts

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposRemoveStatusCheckContexts(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposRemoveStatusCheckContexts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposRemoveStatusCheckProtection**
> reposRemoveStatusCheckProtection(owner, repo, branch)

Remove status check protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    api_instance.reposRemoveStatusCheckProtection(owner, repo, branch);
} catch (e) {
    print("Exception when calling ReposApi->reposRemoveStatusCheckProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposRemoveTeamAccessRestrictions**
> List<Team> reposRemoveTeamAccessRestrictions(owner, repo, branch, body)

Remove team access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Removes the ability of a team to push to this branch. You can also remove push access for child teams.  | Type    | Description                                                                                                                                         | | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | Teams that should no longer have push access. Use the team's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposRemoveTeamAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposRemoveTeamAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<Team>**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposRemoveUserAccessRestrictions**
> List<SimpleUser> reposRemoveUserAccessRestrictions(owner, repo, branch, body)

Remove user access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Removes the ability of a user to push to this branch.  | Type    | Description                                                                                                                                   | | ------- | --------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | Usernames of the people who should no longer have push access. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposRemoveUserAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposRemoveUserAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposReplaceAllTopics**
> Topic reposReplaceAllTopics(owner, repo, body)

Replace all repository topics

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body140(); // Body140 | 

try {
    var result = api_instance.reposReplaceAllTopics(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposReplaceAllTopics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body140**](Body140.md)|  | [optional] 

### Return type

[**Topic**](Topic.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposRequestPagesBuild**
> PageBuildStatus reposRequestPagesBuild(owner, repo)

Request a GitHub Pages build

You can request that your site be built from the latest revision on the default branch. This has the same effect as pushing a commit to your default branch, but does not require an additional commit. Manually triggering page builds can be helpful when diagnosing build warnings and failures.  Build requests are limited to one concurrent build per repository and one concurrent build per requester. If you request a build while another is still in progress, the second request will be queued until the first completes.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.reposRequestPagesBuild(owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposRequestPagesBuild: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**PageBuildStatus**](PageBuildStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposSetAdminBranchProtection**
> ProtectedBranchAdminEnforced reposSetAdminBranchProtection(owner, repo, branch)

Set admin branch protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Adding admin enforcement requires admin or owner permissions to the repository and branch protection to be enabled.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter

try {
    var result = api_instance.reposSetAdminBranchProtection(owner, repo, branch);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposSetAdminBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 

### Return type

[**ProtectedBranchAdminEnforced**](ProtectedBranchAdminEnforced.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposSetAppAccessRestrictions**
> List<Integration> reposSetAppAccessRestrictions(owner, repo, branch, body)

Set app access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Replaces the list of apps that have push access to this branch. This removes all apps that previously had push access and grants push access to the new list of apps. Only installed GitHub Apps with `write` access to the `contents` permission can be added as authorized actors on a protected branch.  | Type    | Description                                                                                                                                                | | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | The GitHub Apps that have push access to this branch. Use the app's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposSetAppAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposSetAppAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<Integration>**](Integration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposSetStatusCheckContexts**
> List<String> reposSetStatusCheckContexts(owner, repo, branch, body)

Set status check contexts

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposSetStatusCheckContexts(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposSetStatusCheckContexts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposSetTeamAccessRestrictions**
> List<Team> reposSetTeamAccessRestrictions(owner, repo, branch, body)

Set team access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Replaces the list of teams that have push access to this branch. This removes all teams that previously had push access and grants push access to the new list of teams. Team restrictions include child teams.  | Type    | Description                                                                                                                                | | ------- | ------------------------------------------------------------------------------------------------------------------------------------------ | | `array` | The teams that can have push access. Use the team's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposSetTeamAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposSetTeamAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<Team>**](Team.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposSetUserAccessRestrictions**
> List<SimpleUser> reposSetUserAccessRestrictions(owner, repo, branch, body)

Set user access restrictions

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Replaces the list of people that have push access to this branch. This removes all people that previously had push access and grants push access to the new list of people.  | Type    | Description                                                                                                                   | | ------- | ----------------------------------------------------------------------------------------------------------------------------- | | `array` | Usernames for people who can have push access. **Note**: The list of users, apps, and teams in total is limited to 100 items. |

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = [new List&lt;String&gt;()]; // List<String> | 

try {
    var result = api_instance.reposSetUserAccessRestrictions(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposSetUserAccessRestrictions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**List&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposTestPushWebhook**
> reposTestPushWebhook(owner, repo, hookId)

Test the push repository webhook

This will trigger the hook with the latest push to the current repository if the hook is subscribed to `push` events. If the hook is not subscribed to `push` events, the server will respond with 204 but no test POST will be generated.  **Note**: Previously `/repos/:owner/:repo/hooks/:hook_id/test`

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var hookId = 56; // int | 

try {
    api_instance.reposTestPushWebhook(owner, repo, hookId);
} catch (e) {
    print("Exception when calling ReposApi->reposTestPushWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **hookId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposTransfer**
> Repository reposTransfer(owner, repo, body)

Transfer a repository

A transfer request will need to be accepted by the new owner when transferring a personal repository to another user. The response will contain the original `owner`, and the transfer will continue asynchronously. For more details on the requirements to transfer personal and organization-owned repositories, see [about repository transfers](https://help.github.com/articles/about-repository-transfers/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body141(); // Body141 | 

try {
    var result = api_instance.reposTransfer(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposTransfer: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body141**](Body141.md)|  | [optional] 

### Return type

[**Repository**](Repository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdate**
> FullRepository reposUpdate(owner, repo, body)

Update a repository

**Note**: To edit a repository's topics, use the [Replace all repository topics](https://developer.github.com/v3/repos/#replace-all-repository-topics) endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body62(); // Body62 | 

try {
    var result = api_instance.reposUpdate(owner, repo, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body62**](Body62.md)|  | [optional] 

### Return type

[**FullRepository**](FullRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateBranchProtection**
> ProtectedBranch reposUpdateBranchProtection(owner, repo, branch, body)

Update branch protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Protecting a branch requires admin or owner permissions to the repository.  **Note**: Passing new arrays of `users` and `teams` replaces their previous values.  **Note**: The list of users, apps, and teams in total is limited to 100 items.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = new Body66(); // Body66 | 

try {
    var result = api_instance.reposUpdateBranchProtection(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateBranchProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**Body66**](Body66.md)|  | [optional] 

### Return type

[**ProtectedBranch**](ProtectedBranch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateCommitComment**
> CommitComment reposUpdateCommitComment(owner, repo, commentId, body)

Update a commit comment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var commentId = 56; // int | comment_id parameter
var body = new Body76(); // Body76 | 

try {
    var result = api_instance.reposUpdateCommitComment(owner, repo, commentId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateCommitComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **commentId** | **int**| comment_id parameter | 
 **body** | [**Body76**](Body76.md)|  | [optional] 

### Return type

[**CommitComment**](CommitComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateInformationAboutPagesSite**
> reposUpdateInformationAboutPagesSite(owner, repo, body)

Update information about a GitHub Pages site

Updates information for a GitHub Pages site. For more information, see \"[About GitHub Pages](/github/working-with-github-pages/about-github-pages).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body118(); // Body118 | 

try {
    api_instance.reposUpdateInformationAboutPagesSite(owner, repo, body);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateInformationAboutPagesSite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body118**](Body118.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/scim+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateInvitation**
> RepositoryInvitation reposUpdateInvitation(owner, repo, invitationId, body)

Update a repository invitation

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var invitationId = 56; // int | invitation_id parameter
var body = new Body99(); // Body99 | 

try {
    var result = api_instance.reposUpdateInvitation(owner, repo, invitationId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateInvitation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **invitationId** | **int**| invitation_id parameter | 
 **body** | [**Body99**](Body99.md)|  | [optional] 

### Return type

[**RepositoryInvitation**](RepositoryInvitation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdatePullRequestReviewProtection**
> ProtectedBranchPullRequestReview reposUpdatePullRequestReviewProtection(owner, repo, branch, body)

Update pull request review protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Updating pull request review enforcement requires admin or owner permissions to the repository and branch protection to be enabled.  **Note**: Passing new arrays of `users` and `teams` replaces their previous values.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = new Body67(); // Body67 | 

try {
    var result = api_instance.reposUpdatePullRequestReviewProtection(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdatePullRequestReviewProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**Body67**](Body67.md)|  | [optional] 

### Return type

[**ProtectedBranchPullRequestReview**](ProtectedBranchPullRequestReview.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateRelease**
> Release reposUpdateRelease(owner, repo, releaseId, body)

Update a release

Users with push access to the repository can edit a release.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var releaseId = 56; // int | release_id parameter
var body = new Body137(); // Body137 | 

try {
    var result = api_instance.reposUpdateRelease(owner, repo, releaseId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateRelease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **releaseId** | **int**| release_id parameter | 
 **body** | [**Body137**](Body137.md)|  | [optional] 

### Return type

[**Release**](Release.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateReleaseAsset**
> ReleaseAsset reposUpdateReleaseAsset(owner, repo, assetId, body)

Update a release asset

Users with push access to the repository can edit a release asset.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var assetId = 56; // int | asset_id parameter
var body = new Body136(); // Body136 | 

try {
    var result = api_instance.reposUpdateReleaseAsset(owner, repo, assetId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateReleaseAsset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **assetId** | **int**| asset_id parameter | 
 **body** | [**Body136**](Body136.md)|  | [optional] 

### Return type

[**ReleaseAsset**](ReleaseAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateStatusCheckProtection**
> StatusCheckPolicy reposUpdateStatusCheckProtection(owner, repo, branch, body)

Update status check protection

Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Updating required status checks requires admin or owner permissions to the repository and branch protection to be enabled.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var branch = branch_example; // String | branch+ parameter
var body = new Body68(); // Body68 | 

try {
    var result = api_instance.reposUpdateStatusCheckProtection(owner, repo, branch, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateStatusCheckProtection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**| branch+ parameter | 
 **body** | [**Body68**](Body68.md)|  | [optional] 

### Return type

[**StatusCheckPolicy**](StatusCheckPolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateWebhook**
> Hook reposUpdateWebhook(owner, repo, hookId, body)

Update a repository webhook

Updates a webhook configured in a repository. If you previously had a `secret` set, you must provide the same `secret` or set a new `secret` or the secret will be removed. If you are only updating individual webhook `config` properties, use \"[Update a webhook configuration for a repository](/rest/reference/repos#update-a-webhook-configuration-for-a-repository).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var hookId = 56; // int | 
var body = new Body92(); // Body92 | 

try {
    var result = api_instance.reposUpdateWebhook(owner, repo, hookId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateWebhook: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **hookId** | **int**|  | 
 **body** | [**Body92**](Body92.md)|  | [optional] 

### Return type

[**Hook**](Hook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUpdateWebhookConfigForRepo**
> WebhookConfig reposUpdateWebhookConfigForRepo(owner, repo, hookId, body)

Update a webhook configuration for a repository

Updates the webhook configuration for a repository. To update more information about the webhook, including the `active` state and `events`, use \"[Update a repository webhook](/rest/reference/orgs#update-a-repository-webhook).\"  Access tokens must have the `write:repo_hook` or `repo` scope, and GitHub Apps must have the `repository_hooks:write` permission.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var hookId = 56; // int | 
var body = new Body93(); // Body93 | 

try {
    var result = api_instance.reposUpdateWebhookConfigForRepo(owner, repo, hookId, body);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUpdateWebhookConfigForRepo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **hookId** | **int**|  | 
 **body** | [**Body93**](Body93.md)|  | [optional] 

### Return type

[**WebhookConfig**](WebhookConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reposUploadReleaseAsset**
> ReleaseAsset reposUploadReleaseAsset(owner, repo, releaseId, body, name, label)

Upload a release asset

This endpoint makes use of [a Hypermedia relation](https://developer.github.com/v3/#hypermedia) to determine which URL to access. The endpoint you call to upload release assets is specific to your release. Use the `upload_url` returned in the response of the [Create a release endpoint](https://developer.github.com/v3/repos/releases/#create-a-release) to upload a release asset.  You need to use an HTTP client which supports [SNI](http://en.wikipedia.org/wiki/Server_Name_Indication) to make calls to this endpoint.  Most libraries will set the required `Content-Length` header automatically. Use the required `Content-Type` header to provide the media type of the asset. For a list of media types, see [Media Types](https://www.iana.org/assignments/media-types/media-types.xhtml). For example:   `application/zip`  GitHub expects the asset data in its raw binary form, rather than JSON. You will send the raw binary content of the asset as the request body. Everything else about the endpoint is the same as the rest of the API. For example, you'll still need to pass your authentication to be able to upload an asset.  When an upstream failure occurs, you will receive a `502 Bad Gateway` status. This may leave an empty asset with a state of `starter`. It can be safely deleted.  **Notes:** *   GitHub renames asset filenames that have special characters, non-alphanumeric characters, and leading or trailing periods. The \"[List assets for a release](https://developer.github.com/v3/repos/releases/#list-assets-for-a-release)\" endpoint lists the renamed filenames. For more information and help, contact [GitHub Support](https://github.com/contact). *   If you upload an asset with the same filename as another uploaded asset, you'll receive an error and must delete the old file before you can re-upload the new asset.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new ReposApi();
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var releaseId = 56; // int | release_id parameter
var body = new String(); // String | 
var name = name_example; // String | 
var label = label_example; // String | 

try {
    var result = api_instance.reposUploadReleaseAsset(owner, repo, releaseId, body, name, label);
    print(result);
} catch (e) {
    print("Exception when calling ReposApi->reposUploadReleaseAsset: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **releaseId** | **int**| release_id parameter | 
 **body** | [**String**](String.md)|  | [optional] 
 **name** | **String**|  | [optional] 
 **label** | **String**|  | [optional] 

### Return type

[**ReleaseAsset**](ReleaseAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


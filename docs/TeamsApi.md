# swagger.api.TeamsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.github.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**teamsAddMemberLegacy**](TeamsApi.md#teamsAddMemberLegacy) | **PUT** /teams/{team_id}/members/{username} | Add team member (Legacy)
[**teamsAddOrUpdateMembershipForUserInOrg**](TeamsApi.md#teamsAddOrUpdateMembershipForUserInOrg) | **PUT** /orgs/{org}/teams/{team_slug}/memberships/{username} | Add or update team membership for a user
[**teamsAddOrUpdateMembershipForUserLegacy**](TeamsApi.md#teamsAddOrUpdateMembershipForUserLegacy) | **PUT** /teams/{team_id}/memberships/{username} | Add or update team membership for a user (Legacy)
[**teamsAddOrUpdateProjectPermissionsInOrg**](TeamsApi.md#teamsAddOrUpdateProjectPermissionsInOrg) | **PUT** /orgs/{org}/teams/{team_slug}/projects/{project_id} | Add or update team project permissions
[**teamsAddOrUpdateProjectPermissionsLegacy**](TeamsApi.md#teamsAddOrUpdateProjectPermissionsLegacy) | **PUT** /teams/{team_id}/projects/{project_id} | Add or update team project permissions (Legacy)
[**teamsAddOrUpdateRepoPermissionsInOrg**](TeamsApi.md#teamsAddOrUpdateRepoPermissionsInOrg) | **PUT** /orgs/{org}/teams/{team_slug}/repos/{owner}/{repo} | Add or update team repository permissions
[**teamsAddOrUpdateRepoPermissionsLegacy**](TeamsApi.md#teamsAddOrUpdateRepoPermissionsLegacy) | **PUT** /teams/{team_id}/repos/{owner}/{repo} | Add or update team repository permissions (Legacy)
[**teamsCheckPermissionsForProjectInOrg**](TeamsApi.md#teamsCheckPermissionsForProjectInOrg) | **GET** /orgs/{org}/teams/{team_slug}/projects/{project_id} | Check team permissions for a project
[**teamsCheckPermissionsForProjectLegacy**](TeamsApi.md#teamsCheckPermissionsForProjectLegacy) | **GET** /teams/{team_id}/projects/{project_id} | Check team permissions for a project (Legacy)
[**teamsCheckPermissionsForRepoInOrg**](TeamsApi.md#teamsCheckPermissionsForRepoInOrg) | **GET** /orgs/{org}/teams/{team_slug}/repos/{owner}/{repo} | Check team permissions for a repository
[**teamsCheckPermissionsForRepoLegacy**](TeamsApi.md#teamsCheckPermissionsForRepoLegacy) | **GET** /teams/{team_id}/repos/{owner}/{repo} | Check team permissions for a repository (Legacy)
[**teamsCreate**](TeamsApi.md#teamsCreate) | **POST** /orgs/{org}/teams | Create a team
[**teamsCreateDiscussionCommentInOrg**](TeamsApi.md#teamsCreateDiscussionCommentInOrg) | **POST** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments | Create a discussion comment
[**teamsCreateDiscussionCommentLegacy**](TeamsApi.md#teamsCreateDiscussionCommentLegacy) | **POST** /teams/{team_id}/discussions/{discussion_number}/comments | Create a discussion comment (Legacy)
[**teamsCreateDiscussionInOrg**](TeamsApi.md#teamsCreateDiscussionInOrg) | **POST** /orgs/{org}/teams/{team_slug}/discussions | Create a discussion
[**teamsCreateDiscussionLegacy**](TeamsApi.md#teamsCreateDiscussionLegacy) | **POST** /teams/{team_id}/discussions | Create a discussion (Legacy)
[**teamsCreateOrUpdateIdpGroupConnectionsInOrg**](TeamsApi.md#teamsCreateOrUpdateIdpGroupConnectionsInOrg) | **PATCH** /orgs/{org}/teams/{team_slug}/team-sync/group-mappings | Create or update IdP group connections
[**teamsCreateOrUpdateIdpGroupConnectionsLegacy**](TeamsApi.md#teamsCreateOrUpdateIdpGroupConnectionsLegacy) | **PATCH** /teams/{team_id}/team-sync/group-mappings | Create or update IdP group connections (Legacy)
[**teamsDeleteDiscussionCommentInOrg**](TeamsApi.md#teamsDeleteDiscussionCommentInOrg) | **DELETE** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number} | Delete a discussion comment
[**teamsDeleteDiscussionCommentLegacy**](TeamsApi.md#teamsDeleteDiscussionCommentLegacy) | **DELETE** /teams/{team_id}/discussions/{discussion_number}/comments/{comment_number} | Delete a discussion comment (Legacy)
[**teamsDeleteDiscussionInOrg**](TeamsApi.md#teamsDeleteDiscussionInOrg) | **DELETE** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number} | Delete a discussion
[**teamsDeleteDiscussionLegacy**](TeamsApi.md#teamsDeleteDiscussionLegacy) | **DELETE** /teams/{team_id}/discussions/{discussion_number} | Delete a discussion (Legacy)
[**teamsDeleteInOrg**](TeamsApi.md#teamsDeleteInOrg) | **DELETE** /orgs/{org}/teams/{team_slug} | Delete a team
[**teamsDeleteLegacy**](TeamsApi.md#teamsDeleteLegacy) | **DELETE** /teams/{team_id} | Delete a team (Legacy)
[**teamsGetByName**](TeamsApi.md#teamsGetByName) | **GET** /orgs/{org}/teams/{team_slug} | Get a team by name
[**teamsGetDiscussionCommentInOrg**](TeamsApi.md#teamsGetDiscussionCommentInOrg) | **GET** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number} | Get a discussion comment
[**teamsGetDiscussionCommentLegacy**](TeamsApi.md#teamsGetDiscussionCommentLegacy) | **GET** /teams/{team_id}/discussions/{discussion_number}/comments/{comment_number} | Get a discussion comment (Legacy)
[**teamsGetDiscussionInOrg**](TeamsApi.md#teamsGetDiscussionInOrg) | **GET** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number} | Get a discussion
[**teamsGetDiscussionLegacy**](TeamsApi.md#teamsGetDiscussionLegacy) | **GET** /teams/{team_id}/discussions/{discussion_number} | Get a discussion (Legacy)
[**teamsGetLegacy**](TeamsApi.md#teamsGetLegacy) | **GET** /teams/{team_id} | Get a team (Legacy)
[**teamsGetMemberLegacy**](TeamsApi.md#teamsGetMemberLegacy) | **GET** /teams/{team_id}/members/{username} | Get team member (Legacy)
[**teamsGetMembershipForUserInOrg**](TeamsApi.md#teamsGetMembershipForUserInOrg) | **GET** /orgs/{org}/teams/{team_slug}/memberships/{username} | Get team membership for a user
[**teamsGetMembershipForUserLegacy**](TeamsApi.md#teamsGetMembershipForUserLegacy) | **GET** /teams/{team_id}/memberships/{username} | Get team membership for a user (Legacy)
[**teamsList**](TeamsApi.md#teamsList) | **GET** /orgs/{org}/teams | List teams
[**teamsListChildInOrg**](TeamsApi.md#teamsListChildInOrg) | **GET** /orgs/{org}/teams/{team_slug}/teams | List child teams
[**teamsListChildLegacy**](TeamsApi.md#teamsListChildLegacy) | **GET** /teams/{team_id}/teams | List child teams (Legacy)
[**teamsListDiscussionCommentsInOrg**](TeamsApi.md#teamsListDiscussionCommentsInOrg) | **GET** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments | List discussion comments
[**teamsListDiscussionCommentsLegacy**](TeamsApi.md#teamsListDiscussionCommentsLegacy) | **GET** /teams/{team_id}/discussions/{discussion_number}/comments | List discussion comments (Legacy)
[**teamsListDiscussionsInOrg**](TeamsApi.md#teamsListDiscussionsInOrg) | **GET** /orgs/{org}/teams/{team_slug}/discussions | List discussions
[**teamsListDiscussionsLegacy**](TeamsApi.md#teamsListDiscussionsLegacy) | **GET** /teams/{team_id}/discussions | List discussions (Legacy)
[**teamsListForAuthenticatedUser**](TeamsApi.md#teamsListForAuthenticatedUser) | **GET** /user/teams | List teams for the authenticated user
[**teamsListIdpGroupsForLegacy**](TeamsApi.md#teamsListIdpGroupsForLegacy) | **GET** /teams/{team_id}/team-sync/group-mappings | List IdP groups for a team (Legacy)
[**teamsListIdpGroupsForOrg**](TeamsApi.md#teamsListIdpGroupsForOrg) | **GET** /orgs/{org}/team-sync/groups | List IdP groups for an organization
[**teamsListIdpGroupsInOrg**](TeamsApi.md#teamsListIdpGroupsInOrg) | **GET** /orgs/{org}/teams/{team_slug}/team-sync/group-mappings | List IdP groups for a team
[**teamsListMembersInOrg**](TeamsApi.md#teamsListMembersInOrg) | **GET** /orgs/{org}/teams/{team_slug}/members | List team members
[**teamsListMembersLegacy**](TeamsApi.md#teamsListMembersLegacy) | **GET** /teams/{team_id}/members | List team members (Legacy)
[**teamsListPendingInvitationsInOrg**](TeamsApi.md#teamsListPendingInvitationsInOrg) | **GET** /orgs/{org}/teams/{team_slug}/invitations | List pending team invitations
[**teamsListPendingInvitationsLegacy**](TeamsApi.md#teamsListPendingInvitationsLegacy) | **GET** /teams/{team_id}/invitations | List pending team invitations (Legacy)
[**teamsListProjectsInOrg**](TeamsApi.md#teamsListProjectsInOrg) | **GET** /orgs/{org}/teams/{team_slug}/projects | List team projects
[**teamsListProjectsLegacy**](TeamsApi.md#teamsListProjectsLegacy) | **GET** /teams/{team_id}/projects | List team projects (Legacy)
[**teamsListReposInOrg**](TeamsApi.md#teamsListReposInOrg) | **GET** /orgs/{org}/teams/{team_slug}/repos | List team repositories
[**teamsListReposLegacy**](TeamsApi.md#teamsListReposLegacy) | **GET** /teams/{team_id}/repos | List team repositories (Legacy)
[**teamsRemoveMemberLegacy**](TeamsApi.md#teamsRemoveMemberLegacy) | **DELETE** /teams/{team_id}/members/{username} | Remove team member (Legacy)
[**teamsRemoveMembershipForUserInOrg**](TeamsApi.md#teamsRemoveMembershipForUserInOrg) | **DELETE** /orgs/{org}/teams/{team_slug}/memberships/{username} | Remove team membership for a user
[**teamsRemoveMembershipForUserLegacy**](TeamsApi.md#teamsRemoveMembershipForUserLegacy) | **DELETE** /teams/{team_id}/memberships/{username} | Remove team membership for a user (Legacy)
[**teamsRemoveProjectInOrg**](TeamsApi.md#teamsRemoveProjectInOrg) | **DELETE** /orgs/{org}/teams/{team_slug}/projects/{project_id} | Remove a project from a team
[**teamsRemoveProjectLegacy**](TeamsApi.md#teamsRemoveProjectLegacy) | **DELETE** /teams/{team_id}/projects/{project_id} | Remove a project from a team (Legacy)
[**teamsRemoveRepoInOrg**](TeamsApi.md#teamsRemoveRepoInOrg) | **DELETE** /orgs/{org}/teams/{team_slug}/repos/{owner}/{repo} | Remove a repository from a team
[**teamsRemoveRepoLegacy**](TeamsApi.md#teamsRemoveRepoLegacy) | **DELETE** /teams/{team_id}/repos/{owner}/{repo} | Remove a repository from a team (Legacy)
[**teamsUpdateDiscussionCommentInOrg**](TeamsApi.md#teamsUpdateDiscussionCommentInOrg) | **PATCH** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number} | Update a discussion comment
[**teamsUpdateDiscussionCommentLegacy**](TeamsApi.md#teamsUpdateDiscussionCommentLegacy) | **PATCH** /teams/{team_id}/discussions/{discussion_number}/comments/{comment_number} | Update a discussion comment (Legacy)
[**teamsUpdateDiscussionInOrg**](TeamsApi.md#teamsUpdateDiscussionInOrg) | **PATCH** /orgs/{org}/teams/{team_slug}/discussions/{discussion_number} | Update a discussion
[**teamsUpdateDiscussionLegacy**](TeamsApi.md#teamsUpdateDiscussionLegacy) | **PATCH** /teams/{team_id}/discussions/{discussion_number} | Update a discussion (Legacy)
[**teamsUpdateInOrg**](TeamsApi.md#teamsUpdateInOrg) | **PATCH** /orgs/{org}/teams/{team_slug} | Update a team
[**teamsUpdateLegacy**](TeamsApi.md#teamsUpdateLegacy) | **PATCH** /teams/{team_id} | Update a team (Legacy)

# **teamsAddMemberLegacy**
> teamsAddMemberLegacy(teamId, username)

Add team member (Legacy)

The \"Add team member\" endpoint (described below) is deprecated.  We recommend using the [Add or update team membership for a user](https://developer.github.com/v3/teams/members/#add-or-update-team-membership-for-a-user) endpoint instead. It allows you to invite new organization members to your teams.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To add someone to a team, the authenticated user must be an organization owner or a team maintainer in the team they're changing. The person being added to the team must be a member of the team's organization.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"  Note that you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var username = username_example; // String | 

try {
    api_instance.teamsAddMemberLegacy(teamId, username);
} catch (e) {
    print("Exception when calling TeamsApi->teamsAddMemberLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsAddOrUpdateMembershipForUserInOrg**
> TeamMembership teamsAddOrUpdateMembershipForUserInOrg(org, teamSlug, username, body)

Add or update team membership for a user

Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Adds an organization member to a team. An authenticated organization owner or team maintainer can add organization members to a team.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"  An organization owner can add someone who is not part of the team's organization to a team. When an organization owner adds someone to a team who is not an organization member, this endpoint will send an invitation to the person via email. This newly-created membership will be in the \"pending\" state until the person accepts the invitation, at which point the membership will transition to the \"active\" state and the user will be added as a member of the team.  If the user is already a member of the team, this endpoint will update the role of the team member's role. To update the membership of a team member, the authenticated user must be an organization owner or a team maintainer.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PUT /organizations/{org_id}/team/{team_id}/memberships/{username}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var username = username_example; // String | 
var body = new Body50(); // Body50 | 

try {
    var result = api_instance.teamsAddOrUpdateMembershipForUserInOrg(org, teamSlug, username, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsAddOrUpdateMembershipForUserInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **username** | **String**|  | 
 **body** | [**Body50**](Body50.md)|  | [optional] 

### Return type

[**TeamMembership**](TeamMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsAddOrUpdateMembershipForUserLegacy**
> TeamMembership teamsAddOrUpdateMembershipForUserLegacy(teamId, username, body)

Add or update team membership for a user (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team membership for a user](https://developer.github.com/v3/teams/members/#add-or-update-team-membership-for-a-user) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  If the user is already a member of the team's organization, this endpoint will add the user to the team. To add a membership between an organization member and a team, the authenticated user must be an organization owner or a team maintainer.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"  If the user is unaffiliated with the team's organization, this endpoint will send an invitation to the user via email. This newly-created membership will be in the \"pending\" state until the user accepts the invitation, at which point the membership will transition to the \"active\" state and the user will be added as a member of the team. To add a membership between an unaffiliated user and a team, the authenticated user must be an organization owner.  If the user is already a member of the team, this endpoint will update the role of the team member's role. To update the membership of a team member, the authenticated user must be an organization owner or a team maintainer.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var username = username_example; // String | 
var body = new Body159(); // Body159 | 

try {
    var result = api_instance.teamsAddOrUpdateMembershipForUserLegacy(teamId, username, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsAddOrUpdateMembershipForUserLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **username** | **String**|  | 
 **body** | [**Body159**](Body159.md)|  | [optional] 

### Return type

[**TeamMembership**](TeamMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsAddOrUpdateProjectPermissionsInOrg**
> teamsAddOrUpdateProjectPermissionsInOrg(org, teamSlug, projectId, body)

Add or update team project permissions

Adds an organization project to a team. To add a project to a team or update the team's permission on a project, the authenticated user must have `admin` permissions for the project. The project and team must be part of the same organization.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PUT /organizations/{org_id}/team/{team_id}/projects/{project_id}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var projectId = 56; // int | 
var body = new Body51(); // Body51 | 

try {
    api_instance.teamsAddOrUpdateProjectPermissionsInOrg(org, teamSlug, projectId, body);
} catch (e) {
    print("Exception when calling TeamsApi->teamsAddOrUpdateProjectPermissionsInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **projectId** | **int**|  | 
 **body** | [**Body51**](Body51.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsAddOrUpdateProjectPermissionsLegacy**
> teamsAddOrUpdateProjectPermissionsLegacy(teamId, projectId, body)

Add or update team project permissions (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team project permissions](https://developer.github.com/v3/teams/#add-or-update-team-project-permissions) endpoint.  Adds an organization project to a team. To add a project to a team or update the team's permission on a project, the authenticated user must have `admin` permissions for the project. The project and team must be part of the same organization.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var projectId = 56; // int | 
var body = new Body160(); // Body160 | 

try {
    api_instance.teamsAddOrUpdateProjectPermissionsLegacy(teamId, projectId, body);
} catch (e) {
    print("Exception when calling TeamsApi->teamsAddOrUpdateProjectPermissionsLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **projectId** | **int**|  | 
 **body** | [**Body160**](Body160.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsAddOrUpdateRepoPermissionsInOrg**
> teamsAddOrUpdateRepoPermissionsInOrg(org, teamSlug, owner, repo, body)

Add or update team repository permissions

To add a repository to a team or update the team's permission on a repository, the authenticated user must have admin access to the repository, and must be able to see the team. The repository must be owned by the organization, or a direct fork of a repository owned by the organization. You will get a `422 Unprocessable Entity` status if you attempt to add a repository to a team that is not owned by the organization. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PUT /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}`.  For more information about the permission levels, see \"[Repository permission levels for an organization](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body52(); // Body52 | 

try {
    api_instance.teamsAddOrUpdateRepoPermissionsInOrg(org, teamSlug, owner, repo, body);
} catch (e) {
    print("Exception when calling TeamsApi->teamsAddOrUpdateRepoPermissionsInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body52**](Body52.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsAddOrUpdateRepoPermissionsLegacy**
> teamsAddOrUpdateRepoPermissionsLegacy(teamId, owner, repo, body)

Add or update team repository permissions (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Add or update team repository permissions](https://developer.github.com/v3/teams/#add-or-update-team-repository-permissions) endpoint.  To add a repository to a team or update the team's permission on a repository, the authenticated user must have admin access to the repository, and must be able to see the team. The repository must be owned by the organization, or a direct fork of a repository owned by the organization. You will get a `422 Unprocessable Entity` status if you attempt to add a repository to a team that is not owned by the organization.  Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://developer.github.com/v3/#http-verbs).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var owner = owner_example; // String | 
var repo = repo_example; // String | 
var body = new Body161(); // Body161 | 

try {
    api_instance.teamsAddOrUpdateRepoPermissionsLegacy(teamId, owner, repo, body);
} catch (e) {
    print("Exception when calling TeamsApi->teamsAddOrUpdateRepoPermissionsLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **body** | [**Body161**](Body161.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCheckPermissionsForProjectInOrg**
> TeamProject teamsCheckPermissionsForProjectInOrg(org, teamSlug, projectId)

Check team permissions for a project

Checks whether a team has `read`, `write`, or `admin` permissions for an organization project. The response includes projects inherited from a parent team.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/projects/{project_id}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var projectId = 56; // int | 

try {
    var result = api_instance.teamsCheckPermissionsForProjectInOrg(org, teamSlug, projectId);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCheckPermissionsForProjectInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **projectId** | **int**|  | 

### Return type

[**TeamProject**](TeamProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCheckPermissionsForProjectLegacy**
> TeamProject teamsCheckPermissionsForProjectLegacy(teamId, projectId)

Check team permissions for a project (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Check team permissions for a project](https://developer.github.com/v3/teams/#check-team-permissions-for-a-project) endpoint.  Checks whether a team has `read`, `write`, or `admin` permissions for an organization project. The response includes projects inherited from a parent team.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var projectId = 56; // int | 

try {
    var result = api_instance.teamsCheckPermissionsForProjectLegacy(teamId, projectId);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCheckPermissionsForProjectLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **projectId** | **int**|  | 

### Return type

[**TeamProject**](TeamProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCheckPermissionsForRepoInOrg**
> TeamRepository teamsCheckPermissionsForRepoInOrg(org, teamSlug, owner, repo)

Check team permissions for a repository

Checks whether a team has `admin`, `push`, `maintain`, `triage`, or `pull` permission for a repository. Repositories inherited through a parent team will also be checked.  You can also get information about the specified repository, including what permissions the team grants on it, by passing the following custom [media type](https://developer.github.com/v3/media/) via the `application/vnd.github.v3.repository+json` accept header.  If a team doesn't have permission for the repository, you will receive a `404 Not Found` response status.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.teamsCheckPermissionsForRepoInOrg(org, teamSlug, owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCheckPermissionsForRepoInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**TeamRepository**](TeamRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.github.v3.repository+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCheckPermissionsForRepoLegacy**
> TeamRepository teamsCheckPermissionsForRepoLegacy(teamId, owner, repo)

Check team permissions for a repository (Legacy)

**Note**: Repositories inherited through a parent team will also be checked.  **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Check team permissions for a repository](https://developer.github.com/v3/teams/#check-team-permissions-for-a-repository) endpoint.  You can also get information about the specified repository, including what permissions the team grants on it, by passing the following custom [media type](https://developer.github.com/v3/media/) via the `Accept` header:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    var result = api_instance.teamsCheckPermissionsForRepoLegacy(teamId, owner, repo);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCheckPermissionsForRepoLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

[**TeamRepository**](TeamRepository.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.github.v3.repository+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreate**
> TeamFull teamsCreate(org, body)

Create a team

To create a team, the authenticated user must be a member or owner of `{org}`. By default, organization members can create teams. Organization owners can limit team creation to organization owners. For more information, see \"[Setting team creation permissions](https://help.github.com/en/articles/setting-team-creation-permissions-in-your-organization).\"  When you create a new team, you automatically become a team maintainer without explicitly adding yourself to the optional array of `maintainers`. For more information, see \"[About teams](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/about-teams)\".

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var body = new Body42(); // Body42 | 

try {
    var result = api_instance.teamsCreate(org, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **body** | [**Body42**](Body42.md)|  | [optional] 

### Return type

[**TeamFull**](TeamFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreateDiscussionCommentInOrg**
> TeamDiscussionComment teamsCreateDiscussionCommentInOrg(org, teamSlug, discussionNumber, body)

Create a discussion comment

Creates a new comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var body = new Body46(); // Body46 | 

try {
    var result = api_instance.teamsCreateDiscussionCommentInOrg(org, teamSlug, discussionNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCreateDiscussionCommentInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **body** | [**Body46**](Body46.md)|  | [optional] 

### Return type

[**TeamDiscussionComment**](TeamDiscussionComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreateDiscussionCommentLegacy**
> TeamDiscussionComment teamsCreateDiscussionCommentLegacy(teamId, discussionNumber, body)

Create a discussion comment (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Create a discussion comment](https://developer.github.com/v3/teams/discussion_comments/#create-a-discussion-comment) endpoint.  Creates a new comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var body = new Body155(); // Body155 | 

try {
    var result = api_instance.teamsCreateDiscussionCommentLegacy(teamId, discussionNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCreateDiscussionCommentLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **body** | [**Body155**](Body155.md)|  | [optional] 

### Return type

[**TeamDiscussionComment**](TeamDiscussionComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreateDiscussionInOrg**
> TeamDiscussion teamsCreateDiscussionInOrg(org, teamSlug, body)

Create a discussion

Creates a new discussion post on a team's page. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `POST /organizations/{org_id}/team/{team_id}/discussions`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var body = new Body44(); // Body44 | 

try {
    var result = api_instance.teamsCreateDiscussionInOrg(org, teamSlug, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCreateDiscussionInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **body** | [**Body44**](Body44.md)|  | [optional] 

### Return type

[**TeamDiscussion**](TeamDiscussion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreateDiscussionLegacy**
> TeamDiscussion teamsCreateDiscussionLegacy(teamId, body)

Create a discussion (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Create a discussion`](https://developer.github.com/v3/teams/discussions/#create-a-discussion) endpoint.  Creates a new discussion post on a team's page. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  This endpoint triggers [notifications](https://help.github.com/articles/about-notifications/). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://developer.github.com/v3/#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://developer.github.com/v3/guides/best-practices-for-integrators/#dealing-with-abuse-rate-limits)\" for details.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var body = new Body153(); // Body153 | 

try {
    var result = api_instance.teamsCreateDiscussionLegacy(teamId, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCreateDiscussionLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **body** | [**Body153**](Body153.md)|  | [optional] 

### Return type

[**TeamDiscussion**](TeamDiscussion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreateOrUpdateIdpGroupConnectionsInOrg**
> GroupMapping teamsCreateOrUpdateIdpGroupConnectionsInOrg(org, teamSlug, body)

Create or update IdP group connections

Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Creates, updates, or removes a connection between a team and an IdP group. When adding groups to a team, you must include all new and existing groups to avoid replacing existing groups with the new ones. Specifying an empty `groups` array will remove all connections for a team.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}/team-sync/group-mappings`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var body = new Body53(); // Body53 | 

try {
    var result = api_instance.teamsCreateOrUpdateIdpGroupConnectionsInOrg(org, teamSlug, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCreateOrUpdateIdpGroupConnectionsInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **body** | [**Body53**](Body53.md)|  | [optional] 

### Return type

[**GroupMapping**](GroupMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsCreateOrUpdateIdpGroupConnectionsLegacy**
> GroupMapping teamsCreateOrUpdateIdpGroupConnectionsLegacy(teamId, body)

Create or update IdP group connections (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Create or update IdP group connections`](https://developer.github.com/v3/teams/team_sync/#create-or-update-idp-group-connections) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Creates, updates, or removes a connection between a team and an IdP group. When adding groups to a team, you must include all new and existing groups to avoid replacing existing groups with the new ones. Specifying an empty `groups` array will remove all connections for a team.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var body = new Body162(); // Body162 | 

try {
    var result = api_instance.teamsCreateOrUpdateIdpGroupConnectionsLegacy(teamId, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsCreateOrUpdateIdpGroupConnectionsLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **body** | [**Body162**](Body162.md)|  | [optional] 

### Return type

[**GroupMapping**](GroupMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDeleteDiscussionCommentInOrg**
> teamsDeleteDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber)

Delete a discussion comment

Deletes a comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 

try {
    api_instance.teamsDeleteDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber);
} catch (e) {
    print("Exception when calling TeamsApi->teamsDeleteDiscussionCommentInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDeleteDiscussionCommentLegacy**
> teamsDeleteDiscussionCommentLegacy(teamId, discussionNumber, commentNumber)

Delete a discussion comment (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Delete a discussion comment](https://developer.github.com/v3/teams/discussion_comments/#delete-a-discussion-comment) endpoint.  Deletes a comment on a team discussion. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 

try {
    api_instance.teamsDeleteDiscussionCommentLegacy(teamId, discussionNumber, commentNumber);
} catch (e) {
    print("Exception when calling TeamsApi->teamsDeleteDiscussionCommentLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDeleteDiscussionInOrg**
> teamsDeleteDiscussionInOrg(org, teamSlug, discussionNumber)

Delete a discussion

Delete a discussion from a team's page. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 

try {
    api_instance.teamsDeleteDiscussionInOrg(org, teamSlug, discussionNumber);
} catch (e) {
    print("Exception when calling TeamsApi->teamsDeleteDiscussionInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDeleteDiscussionLegacy**
> teamsDeleteDiscussionLegacy(teamId, discussionNumber)

Delete a discussion (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`Delete a discussion`](https://developer.github.com/v3/teams/discussions/#delete-a-discussion) endpoint.  Delete a discussion from a team's page. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 

try {
    api_instance.teamsDeleteDiscussionLegacy(teamId, discussionNumber);
} catch (e) {
    print("Exception when calling TeamsApi->teamsDeleteDiscussionLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDeleteInOrg**
> teamsDeleteInOrg(org, teamSlug)

Delete a team

To delete a team, the authenticated user must be an organization owner or team maintainer.  If you are an organization owner, deleting a parent team will delete all of its child teams as well.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter

try {
    api_instance.teamsDeleteInOrg(org, teamSlug);
} catch (e) {
    print("Exception when calling TeamsApi->teamsDeleteInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsDeleteLegacy**
> teamsDeleteLegacy(teamId)

Delete a team (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Delete a team](https://developer.github.com/v3/teams/#delete-a-team) endpoint.  To delete a team, the authenticated user must be an organization owner or team maintainer.  If you are an organization owner, deleting a parent team will delete all of its child teams as well.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 

try {
    api_instance.teamsDeleteLegacy(teamId);
} catch (e) {
    print("Exception when calling TeamsApi->teamsDeleteLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetByName**
> TeamFull teamsGetByName(org, teamSlug)

Get a team by name

Gets a team using the team's `slug`. GitHub generates the `slug` from the team `name`.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter

try {
    var result = api_instance.teamsGetByName(org, teamSlug);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetByName: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 

### Return type

[**TeamFull**](TeamFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetDiscussionCommentInOrg**
> TeamDiscussionComment teamsGetDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber)

Get a discussion comment

Get a specific comment on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 

try {
    var result = api_instance.teamsGetDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetDiscussionCommentInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 

### Return type

[**TeamDiscussionComment**](TeamDiscussionComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetDiscussionCommentLegacy**
> TeamDiscussionComment teamsGetDiscussionCommentLegacy(teamId, discussionNumber, commentNumber)

Get a discussion comment (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get a discussion comment](https://developer.github.com/v3/teams/discussion_comments/#get-a-discussion-comment) endpoint.  Get a specific comment on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 

try {
    var result = api_instance.teamsGetDiscussionCommentLegacy(teamId, discussionNumber, commentNumber);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetDiscussionCommentLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 

### Return type

[**TeamDiscussionComment**](TeamDiscussionComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetDiscussionInOrg**
> TeamDiscussion teamsGetDiscussionInOrg(org, teamSlug, discussionNumber)

Get a discussion

Get a specific discussion on a team's page. OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 

try {
    var result = api_instance.teamsGetDiscussionInOrg(org, teamSlug, discussionNumber);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetDiscussionInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 

### Return type

[**TeamDiscussion**](TeamDiscussion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetDiscussionLegacy**
> TeamDiscussion teamsGetDiscussionLegacy(teamId, discussionNumber)

Get a discussion (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get a discussion](https://developer.github.com/v3/teams/discussions/#get-a-discussion) endpoint.  Get a specific discussion on a team's page. OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 

try {
    var result = api_instance.teamsGetDiscussionLegacy(teamId, discussionNumber);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetDiscussionLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 

### Return type

[**TeamDiscussion**](TeamDiscussion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetLegacy**
> TeamFull teamsGetLegacy(teamId)

Get a team (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the [Get a team by name](https://developer.github.com/v3/teams/#get-a-team-by-name) endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 

try {
    var result = api_instance.teamsGetLegacy(teamId);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 

### Return type

[**TeamFull**](TeamFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetMemberLegacy**
> teamsGetMemberLegacy(teamId, username)

Get team member (Legacy)

The \"Get team member\" endpoint (described below) is deprecated.  We recommend using the [Get team membership for a user](https://developer.github.com/v3/teams/members/#get-team-membership-for-a-user) endpoint instead. It allows you to get both active and pending memberships.  To list members in a team, the team must be visible to the authenticated user.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var username = username_example; // String | 

try {
    api_instance.teamsGetMemberLegacy(teamId, username);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetMemberLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetMembershipForUserInOrg**
> TeamMembership teamsGetMembershipForUserInOrg(org, teamSlug, username)

Get team membership for a user

Team members will include the members of child teams.  To get a user's membership with a team, the team must be visible to the authenticated user.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/memberships/{username}`.  **Note:** The `role` for organization owners returns as `maintainer`. For more information about `maintainer` roles, see [Create a team](https://developer.github.com/v3/teams/#create-a-team).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var username = username_example; // String | 

try {
    var result = api_instance.teamsGetMembershipForUserInOrg(org, teamSlug, username);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetMembershipForUserInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **username** | **String**|  | 

### Return type

[**TeamMembership**](TeamMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsGetMembershipForUserLegacy**
> TeamMembership teamsGetMembershipForUserLegacy(teamId, username)

Get team membership for a user (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Get team membership for a user](https://developer.github.com/v3/teams/members/#get-team-membership-for-a-user) endpoint.  Team members will include the members of child teams.  To get a user's membership with a team, the team must be visible to the authenticated user.  **Note:** The `role` for organization owners returns as `maintainer`. For more information about `maintainer` roles, see [Create a team](https://developer.github.com/v3/teams/#create-a-team).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var username = username_example; // String | 

try {
    var result = api_instance.teamsGetMembershipForUserLegacy(teamId, username);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsGetMembershipForUserLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **username** | **String**|  | 

### Return type

[**TeamMembership**](TeamMembership.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsList**
> List<Team> teamsList(org, perPage, page)

List teams

Lists all teams in an organization that are visible to the authenticated user.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsList(org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
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

# **teamsListChildInOrg**
> List<Team> teamsListChildInOrg(org, teamSlug, perPage, page)

List child teams

Lists the child teams of the team specified by `{team_slug}`.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/teams`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListChildInOrg(org, teamSlug, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListChildInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
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

# **teamsListChildLegacy**
> List<Team> teamsListChildLegacy(teamId, perPage, page)

List child teams (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List child teams`](https://developer.github.com/v3/teams/#list-child-teams) endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListChildLegacy(teamId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListChildLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
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

# **teamsListDiscussionCommentsInOrg**
> List<TeamDiscussionComment> teamsListDiscussionCommentsInOrg(org, teamSlug, discussionNumber, direction, perPage, page)

List discussion comments

List all comments on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListDiscussionCommentsInOrg(org, teamSlug, discussionNumber, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListDiscussionCommentsInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<TeamDiscussionComment>**](TeamDiscussionComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListDiscussionCommentsLegacy**
> List<TeamDiscussionComment> teamsListDiscussionCommentsLegacy(teamId, discussionNumber, direction, perPage, page)

List discussion comments (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [List discussion comments](https://developer.github.com/v3/teams/discussion_comments/#list-discussion-comments) endpoint.  List all comments on a team discussion. OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListDiscussionCommentsLegacy(teamId, discussionNumber, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListDiscussionCommentsLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<TeamDiscussionComment>**](TeamDiscussionComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListDiscussionsInOrg**
> List<TeamDiscussion> teamsListDiscussionsInOrg(org, teamSlug, direction, perPage, page)

List discussions

List all discussions on a team's page. OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/discussions`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListDiscussionsInOrg(org, teamSlug, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListDiscussionsInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<TeamDiscussion>**](TeamDiscussion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListDiscussionsLegacy**
> List<TeamDiscussion> teamsListDiscussionsLegacy(teamId, direction, perPage, page)

List discussions (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List discussions`](https://developer.github.com/v3/teams/discussions/#list-discussions) endpoint.  List all discussions on a team's page. OAuth access tokens require the `read:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var direction = direction_example; // String | One of `asc` (ascending) or `desc` (descending).
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListDiscussionsLegacy(teamId, direction, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListDiscussionsLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **direction** | **String**| One of &#x60;asc&#x60; (ascending) or &#x60;desc&#x60; (descending). | [optional] [default to desc]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<TeamDiscussion>**](TeamDiscussion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListForAuthenticatedUser**
> List<TeamFull> teamsListForAuthenticatedUser(perPage, page)

List teams for the authenticated user

List all of the teams across all of the organizations to which the authenticated user belongs. This method requires `user`, `repo`, or `read:org` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/) when authenticating via [OAuth](https://developer.github.com/apps/building-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListForAuthenticatedUser(perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListForAuthenticatedUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<TeamFull>**](TeamFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListIdpGroupsForLegacy**
> GroupMapping teamsListIdpGroupsForLegacy(teamId)

List IdP groups for a team (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List IdP groups for a team`](https://developer.github.com/v3/teams/team_sync/#list-idp-groups-for-a-team) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups connected to a team on GitHub.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 

try {
    var result = api_instance.teamsListIdpGroupsForLegacy(teamId);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListIdpGroupsForLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 

### Return type

[**GroupMapping**](GroupMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListIdpGroupsForOrg**
> GroupMapping teamsListIdpGroupsForOrg(org, perPage, page)

List IdP groups for an organization

Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups available in an organization. You can limit your page results using the `per_page` parameter. GitHub generates a url-encoded `page` token using a cursor value for where the next page begins. For more information on cursor pagination, see \"[Offset and Cursor Pagination explained](https://dev.to/jackmarchant/offset-and-cursor-pagination-explained-b89).\"  The `per_page` parameter provides pagination for a list of IdP groups the authenticated user can access in an organization. For example, if the user `octocat` wants to see two groups per page in `octo-org` via cURL, it would look like this:

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListIdpGroupsForOrg(org, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListIdpGroupsForOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**GroupMapping**](GroupMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListIdpGroupsInOrg**
> GroupMapping teamsListIdpGroupsInOrg(org, teamSlug)

List IdP groups for a team

Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  List IdP groups connected to a team on GitHub.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/team-sync/group-mappings`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter

try {
    var result = api_instance.teamsListIdpGroupsInOrg(org, teamSlug);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListIdpGroupsInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 

### Return type

[**GroupMapping**](GroupMapping.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListMembersInOrg**
> List<SimpleUser> teamsListMembersInOrg(org, teamSlug, role, perPage, page)

List team members

Team members will include the members of child teams.  To list members in a team, the team must be visible to the authenticated user.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var role = role_example; // String | Filters members returned by their role in the team. Can be one of:   \\* `member` - normal members of the team.   \\* `maintainer` - team maintainers.   \\* `all` - all members of the team.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListMembersInOrg(org, teamSlug, role, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListMembersInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **role** | **String**| Filters members returned by their role in the team. Can be one of:   \\* &#x60;member&#x60; - normal members of the team.   \\* &#x60;maintainer&#x60; - team maintainers.   \\* &#x60;all&#x60; - all members of the team. | [optional] [default to all]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListMembersLegacy**
> List<SimpleUser> teamsListMembersLegacy(teamId, role, perPage, page)

List team members (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List team members`](https://developer.github.com/v3/teams/members/#list-team-members) endpoint.  Team members will include the members of child teams.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var role = role_example; // String | Filters members returned by their role in the team. Can be one of:   \\* `member` - normal members of the team.   \\* `maintainer` - team maintainers.   \\* `all` - all members of the team.
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListMembersLegacy(teamId, role, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListMembersLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **role** | **String**| Filters members returned by their role in the team. Can be one of:   \\* &#x60;member&#x60; - normal members of the team.   \\* &#x60;maintainer&#x60; - team maintainers.   \\* &#x60;all&#x60; - all members of the team. | [optional] [default to all]
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<SimpleUser>**](SimpleUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListPendingInvitationsInOrg**
> List<OrganizationInvitation> teamsListPendingInvitationsInOrg(org, teamSlug, perPage, page)

List pending team invitations

The return hash contains a `role` field which refers to the Organization Invitation role and will be one of the following values: `direct_member`, `admin`, `billing_manager`, `hiring_manager`, or `reinstate`. If the invitee is not a GitHub member, the `login` field in the return hash will be `null`.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/invitations`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListPendingInvitationsInOrg(org, teamSlug, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListPendingInvitationsInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<OrganizationInvitation>**](OrganizationInvitation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListPendingInvitationsLegacy**
> List<OrganizationInvitation> teamsListPendingInvitationsLegacy(teamId, perPage, page)

List pending team invitations (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List pending team invitations`](https://developer.github.com/v3/teams/members/#list-pending-team-invitations) endpoint.  The return hash contains a `role` field which refers to the Organization Invitation role and will be one of the following values: `direct_member`, `admin`, `billing_manager`, `hiring_manager`, or `reinstate`. If the invitee is not a GitHub member, the `login` field in the return hash will be `null`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListPendingInvitationsLegacy(teamId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListPendingInvitationsLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<OrganizationInvitation>**](OrganizationInvitation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListProjectsInOrg**
> List<TeamProject> teamsListProjectsInOrg(org, teamSlug, perPage, page)

List team projects

Lists the organization projects for a team.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/projects`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListProjectsInOrg(org, teamSlug, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListProjectsInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<TeamProject>**](TeamProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListProjectsLegacy**
> List<TeamProject> teamsListProjectsLegacy(teamId, perPage, page)

List team projects (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [`List team projects`](https://developer.github.com/v3/teams/#list-team-projects) endpoint.  Lists the organization projects for a team.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListProjectsLegacy(teamId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListProjectsLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **perPage** | **int**| Results per page (max 100) | [optional] [default to 30]
 **page** | **int**| Page number of the results to fetch. | [optional] [default to 1]

### Return type

[**List<TeamProject>**](TeamProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsListReposInOrg**
> List<MinimalRepository> teamsListReposInOrg(org, teamSlug, perPage, page)

List team repositories

Lists a team's repositories visible to the authenticated user.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `GET /organizations/{org_id}/team/{team_id}/repos`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListReposInOrg(org, teamSlug, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListReposInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
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

# **teamsListReposLegacy**
> List<MinimalRepository> teamsListReposLegacy(teamId, perPage, page)

List team repositories (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [List team repositories](https://developer.github.com/v3/teams/#list-team-repositories) endpoint.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var perPage = 56; // int | Results per page (max 100)
var page = 56; // int | Page number of the results to fetch.

try {
    var result = api_instance.teamsListReposLegacy(teamId, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsListReposLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
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

# **teamsRemoveMemberLegacy**
> teamsRemoveMemberLegacy(teamId, username)

Remove team member (Legacy)

The \"Remove team member\" endpoint (described below) is deprecated.  We recommend using the [Remove team membership for a user](https://developer.github.com/v3/teams/members/#remove-team-membership-for-a-user) endpoint instead. It allows you to remove both active and pending memberships.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a team member, the authenticated user must have 'admin' permissions to the team or be an owner of the org that the team is associated with. Removing a team member does not delete the user, it just removes them from the team.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var username = username_example; // String | 

try {
    api_instance.teamsRemoveMemberLegacy(teamId, username);
} catch (e) {
    print("Exception when calling TeamsApi->teamsRemoveMemberLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRemoveMembershipForUserInOrg**
> teamsRemoveMembershipForUserInOrg(org, teamSlug, username)

Remove team membership for a user

Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a membership between a user and a team, the authenticated user must have 'admin' permissions to the team or be an owner of the organization that the team is associated with. Removing team membership does not delete the user, it just removes their membership from the team.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/memberships/{username}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var username = username_example; // String | 

try {
    api_instance.teamsRemoveMembershipForUserInOrg(org, teamSlug, username);
} catch (e) {
    print("Exception when calling TeamsApi->teamsRemoveMembershipForUserInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRemoveMembershipForUserLegacy**
> teamsRemoveMembershipForUserLegacy(teamId, username)

Remove team membership for a user (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove team membership for a user](https://developer.github.com/v3/teams/members/#remove-team-membership-for-a-user) endpoint.  Team synchronization is available for organizations using GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  To remove a membership between a user and a team, the authenticated user must have 'admin' permissions to the team or be an owner of the organization that the team is associated with. Removing team membership does not delete the user, it just removes their membership from the team.  **Note:** When you have team synchronization set up for a team with your organization's identity provider (IdP), you will see an error if you attempt to use the API for making changes to the team's membership. If you have access to manage group membership in your IdP, you can manage GitHub team membership through your identity provider, which automatically adds and removes team members in an organization. For more information, see \"[Synchronizing teams between your identity provider and GitHub](https://help.github.com/articles/synchronizing-teams-between-your-identity-provider-and-github/).\"

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var username = username_example; // String | 

try {
    api_instance.teamsRemoveMembershipForUserLegacy(teamId, username);
} catch (e) {
    print("Exception when calling TeamsApi->teamsRemoveMembershipForUserLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **username** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRemoveProjectInOrg**
> teamsRemoveProjectInOrg(org, teamSlug, projectId)

Remove a project from a team

Removes an organization project from a team. An organization owner or a team maintainer can remove any project from the team. To remove a project from a team as an organization member, the authenticated user must have `read` access to both the team and project, or `admin` access to the team or project. This endpoint removes the project from the team, but does not delete the project.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/projects/{project_id}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var projectId = 56; // int | 

try {
    api_instance.teamsRemoveProjectInOrg(org, teamSlug, projectId);
} catch (e) {
    print("Exception when calling TeamsApi->teamsRemoveProjectInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **projectId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRemoveProjectLegacy**
> teamsRemoveProjectLegacy(teamId, projectId)

Remove a project from a team (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove a project from a team](https://developer.github.com/v3/teams/#remove-a-project-from-a-team) endpoint.  Removes an organization project from a team. An organization owner or a team maintainer can remove any project from the team. To remove a project from a team as an organization member, the authenticated user must have `read` access to both the team and project, or `admin` access to the team or project. **Note:** This endpoint removes the project from the team, but does not delete it.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var projectId = 56; // int | 

try {
    api_instance.teamsRemoveProjectLegacy(teamId, projectId);
} catch (e) {
    print("Exception when calling TeamsApi->teamsRemoveProjectLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **projectId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsRemoveRepoInOrg**
> teamsRemoveRepoInOrg(org, teamSlug, owner, repo)

Remove a repository from a team

If the authenticated user is an organization owner or a team maintainer, they can remove any repositories from the team. To remove a repository from a team as an organization member, the authenticated user must have admin access to the repository and must be able to see the team. This does not delete the repository, it just removes it from the team.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `DELETE /organizations/{org_id}/team/{team_id}/repos/{owner}/{repo}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.teamsRemoveRepoInOrg(org, teamSlug, owner, repo);
} catch (e) {
    print("Exception when calling TeamsApi->teamsRemoveRepoInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
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

# **teamsRemoveRepoLegacy**
> teamsRemoveRepoLegacy(teamId, owner, repo)

Remove a repository from a team (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Remove a repository from a team](https://developer.github.com/v3/teams/#remove-a-repository-from-a-team) endpoint.  If the authenticated user is an organization owner or a team maintainer, they can remove any repositories from the team. To remove a repository from a team as an organization member, the authenticated user must have admin access to the repository and must be able to see the team. NOTE: This does not delete the repository, it just removes it from the team.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var owner = owner_example; // String | 
var repo = repo_example; // String | 

try {
    api_instance.teamsRemoveRepoLegacy(teamId, owner, repo);
} catch (e) {
    print("Exception when calling TeamsApi->teamsRemoveRepoLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
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

# **teamsUpdateDiscussionCommentInOrg**
> TeamDiscussionComment teamsUpdateDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber, body)

Update a discussion comment

Edits the body text of a discussion comment. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}/comments/{comment_number}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 
var body = new Body47(); // Body47 | 

try {
    var result = api_instance.teamsUpdateDiscussionCommentInOrg(org, teamSlug, discussionNumber, commentNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsUpdateDiscussionCommentInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 
 **body** | [**Body47**](Body47.md)|  | [optional] 

### Return type

[**TeamDiscussionComment**](TeamDiscussionComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsUpdateDiscussionCommentLegacy**
> TeamDiscussionComment teamsUpdateDiscussionCommentLegacy(teamId, discussionNumber, commentNumber, body)

Update a discussion comment (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a discussion comment](https://developer.github.com/v3/teams/discussion_comments/#update-a-discussion-comment) endpoint.  Edits the body text of a discussion comment. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var commentNumber = 56; // int | 
var body = new Body156(); // Body156 | 

try {
    var result = api_instance.teamsUpdateDiscussionCommentLegacy(teamId, discussionNumber, commentNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsUpdateDiscussionCommentLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **commentNumber** | **int**|  | 
 **body** | [**Body156**](Body156.md)|  | [optional] 

### Return type

[**TeamDiscussionComment**](TeamDiscussionComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsUpdateDiscussionInOrg**
> TeamDiscussion teamsUpdateDiscussionInOrg(org, teamSlug, discussionNumber, body)

Update a discussion

Edits the title and body text of a discussion post. Only the parameters you provide are updated. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}/discussions/{discussion_number}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var discussionNumber = 56; // int | 
var body = new Body45(); // Body45 | 

try {
    var result = api_instance.teamsUpdateDiscussionInOrg(org, teamSlug, discussionNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsUpdateDiscussionInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **discussionNumber** | **int**|  | 
 **body** | [**Body45**](Body45.md)|  | [optional] 

### Return type

[**TeamDiscussion**](TeamDiscussion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsUpdateDiscussionLegacy**
> TeamDiscussion teamsUpdateDiscussionLegacy(teamId, discussionNumber, body)

Update a discussion (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a discussion](https://developer.github.com/v3/teams/discussions/#update-a-discussion) endpoint.  Edits the title and body text of a discussion post. Only the parameters you provide are updated. OAuth access tokens require the `write:discussion` [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var discussionNumber = 56; // int | 
var body = new Body154(); // Body154 | 

try {
    var result = api_instance.teamsUpdateDiscussionLegacy(teamId, discussionNumber, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsUpdateDiscussionLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **discussionNumber** | **int**|  | 
 **body** | [**Body154**](Body154.md)|  | [optional] 

### Return type

[**TeamDiscussion**](TeamDiscussion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsUpdateInOrg**
> TeamFull teamsUpdateInOrg(org, teamSlug, body)

Update a team

To edit a team, the authenticated user must either be an organization owner or a team maintainer.  **Note:** You can also specify a team by `org_id` and `team_id` using the route `PATCH /organizations/{org_id}/team/{team_id}`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var org = org_example; // String | 
var teamSlug = teamSlug_example; // String | team_slug parameter
var body = new Body43(); // Body43 | 

try {
    var result = api_instance.teamsUpdateInOrg(org, teamSlug, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsUpdateInOrg: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **teamSlug** | **String**| team_slug parameter | 
 **body** | [**Body43**](Body43.md)|  | [optional] 

### Return type

[**TeamFull**](TeamFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsUpdateLegacy**
> TeamFull teamsUpdateLegacy(teamId, body)

Update a team (Legacy)

**Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [Update a team](https://developer.github.com/v3/teams/#update-a-team) endpoint.  To edit a team, the authenticated user must either be an organization owner or a team maintainer.  **Note:** With nested teams, the `privacy` for parent teams cannot be `secret`.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TeamsApi();
var teamId = 56; // int | 
var body = new Body152(); // Body152 | 

try {
    var result = api_instance.teamsUpdateLegacy(teamId, body);
    print(result);
} catch (e) {
    print("Exception when calling TeamsApi->teamsUpdateLegacy: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teamId** | **int**|  | 
 **body** | [**Body152**](Body152.md)|  | [optional] 

### Return type

[**TeamFull**](TeamFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


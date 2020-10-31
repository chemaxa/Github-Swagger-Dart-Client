# swagger.model.Body24

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billingEmail** | **String** | Billing email address. This address is not publicized. | [optional] [default to null]
**company** | **String** | The company name. | [optional] [default to null]
**email** | **String** | The publicly visible email address. | [optional] [default to null]
**twitterUsername** | **String** | The Twitter username of the company. | [optional] [default to null]
**location** | **String** | The location. | [optional] [default to null]
**name** | **String** | The shorthand name of the company. | [optional] [default to null]
**description** | **String** | The description of the company. | [optional] [default to null]
**hasOrganizationProjects** | **bool** | Toggles whether an organization can use organization projects. | [optional] [default to null]
**hasRepositoryProjects** | **bool** | Toggles whether repositories that belong to the organization can use repository projects. | [optional] [default to null]
**defaultRepositoryPermission** | **String** | Default permission level members have for organization repositories:   \\* &#x60;read&#x60; - can pull, but not push to or administer this repository.   \\* &#x60;write&#x60; - can pull and push, but not administer this repository.   \\* &#x60;admin&#x60; - can pull, push, and administer this repository.   \\* &#x60;none&#x60; - no permissions granted by default. | [optional] [default to DefaultRepositoryPermissionEnum.read_]
**membersCanCreateRepositories** | **bool** | Toggles the ability of non-admin organization members to create repositories. Can be one of:   \\* &#x60;true&#x60; - all organization members can create repositories.   \\* &#x60;false&#x60; - only organization owners can create repositories.   Default: &#x60;true&#x60;   **Note:** A parameter can override this parameter. See &#x60;members_allowed_repository_creation_type&#x60; in this table for details. **Note:** A parameter can override this parameter. See &#x60;members_allowed_repository_creation_type&#x60; in this table for details. | [optional] [default to true]
**membersCanCreateInternalRepositories** | **bool** | Toggles whether organization members can create internal repositories, which are visible to all enterprise members. You can only allow members to create internal repositories if your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+. Can be one of:   \\* &#x60;true&#x60; - all organization members can create internal repositories.   \\* &#x60;false&#x60; - only organization owners can create internal repositories.   Default: &#x60;true&#x60;. For more information, see \&quot;[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\&quot; in the GitHub Help documentation. | [optional] [default to null]
**membersCanCreatePrivateRepositories** | **bool** | Toggles whether organization members can create private repositories, which are visible to organization members with permission. Can be one of:   \\* &#x60;true&#x60; - all organization members can create private repositories.   \\* &#x60;false&#x60; - only organization owners can create private repositories.   Default: &#x60;true&#x60;. For more information, see \&quot;[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\&quot; in the GitHub Help documentation. | [optional] [default to null]
**membersCanCreatePublicRepositories** | **bool** | Toggles whether organization members can create public repositories, which are visible to anyone. Can be one of:   \\* &#x60;true&#x60; - all organization members can create public repositories.   \\* &#x60;false&#x60; - only organization owners can create public repositories.   Default: &#x60;true&#x60;. For more information, see \&quot;[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\&quot; in the GitHub Help documentation. | [optional] [default to null]
**membersAllowedRepositoryCreationType** | **String** | Specifies which types of repositories non-admin organization members can create. Can be one of:   \\* &#x60;all&#x60; - all organization members can create public and private repositories.   \\* &#x60;private&#x60; - members can create private repositories. This option is only available to repositories that are part of an organization on GitHub Enterprise Cloud.   \\* &#x60;none&#x60; - only admin members can create repositories.   **Note:** This parameter is deprecated and will be removed in the future. Its return value ignores internal repositories. Using this parameter overrides values set in &#x60;members_can_create_repositories&#x60;. See [this note](https://developer.github.com/v3/orgs/#members_can_create_repositories) for details. | [optional] [default to null]
**membersCanCreatePages** | **bool** | Toggles whether organization members can create GitHub Pages sites. Can be one of:   \\* &#x60;true&#x60; - all organization members can create GitHub Pages sites.   \\* &#x60;false&#x60; - no organization members can create GitHub Pages sites. Existing published sites will not be impacted.   Default: &#x60;true&#x60;.  | [optional] [default to null]
**blog** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


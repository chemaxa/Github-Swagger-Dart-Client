part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://api.github.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ActionsBillingUsage':
          return new ActionsBillingUsage.fromJson(value);
        case 'ActionsEnabled':
          return new ActionsEnabled.fromJson(value);
        case 'ActionsEnterprisePermissions':
          return new ActionsEnterprisePermissions.fromJson(value);
        case 'ActionsOrganizationPermissions':
          return new ActionsOrganizationPermissions.fromJson(value);
        case 'ActionsPublicKey':
          return new ActionsPublicKey.fromJson(value);
        case 'ActionsRepositoryPermissions':
          return new ActionsRepositoryPermissions.fromJson(value);
        case 'ActionsSecret':
          return new ActionsSecret.fromJson(value);
        case 'ActionsbillingusageMinutesUsedBreakdown':
          return new ActionsbillingusageMinutesUsedBreakdown.fromJson(value);
        case 'Actor':
          return new Actor.fromJson(value);
        case 'AllOfapplicationGrantUser':
          return new AllOfapplicationGrantUser.fromJson(value);
        case 'AllOfauthorizationInstallation':
          return new AllOfauthorizationInstallation.fromJson(value);
        case 'AllOfauthorizationUser':
          return new AllOfauthorizationUser.fromJson(value);
        case 'AllOfbaseGistOwner':
          return new AllOfbaseGistOwner.fromJson(value);
        case 'AllOfbaseGistUser':
          return new AllOfbaseGistUser.fromJson(value);
        case 'AllOfcheckRunApp':
          return new AllOfcheckRunApp.fromJson(value);
        case 'AllOfcheckSuiteApp':
          return new AllOfcheckSuiteApp.fromJson(value);
        case 'AllOfcommitAuthor':
          return new AllOfcommitAuthor.fromJson(value);
        case 'AllOfcommitCommentUser':
          return new AllOfcommitCommentUser.fromJson(value);
        case 'AllOfcommitCommitAuthor':
          return new AllOfcommitCommitAuthor.fromJson(value);
        case 'AllOfcommitCommitCommitter':
          return new AllOfcommitCommitCommitter.fromJson(value);
        case 'AllOfcommitCommitter':
          return new AllOfcommitCommitter.fromJson(value);
        case 'AllOfcommitSearchResultItemAuthor':
          return new AllOfcommitSearchResultItemAuthor.fromJson(value);
        case 'AllOfcommitSearchResultItemCommitter':
          return new AllOfcommitSearchResultItemCommitter.fromJson(value);
        case 'AllOfcommitsearchresultitemCommitCommitter':
          return new AllOfcommitsearchresultitemCommitCommitter.fromJson(value);
        case 'AllOfcommunityprofileFilesCodeOfConduct':
          return new AllOfcommunityprofileFilesCodeOfConduct.fromJson(value);
        case 'AllOfcommunityprofileFilesContributing':
          return new AllOfcommunityprofileFilesContributing.fromJson(value);
        case 'AllOfcommunityprofileFilesIssueTemplate':
          return new AllOfcommunityprofileFilesIssueTemplate.fromJson(value);
        case 'AllOfcommunityprofileFilesLicense':
          return new AllOfcommunityprofileFilesLicense.fromJson(value);
        case 'AllOfcommunityprofileFilesPullRequestTemplate':
          return new AllOfcommunityprofileFilesPullRequestTemplate.fromJson(value);
        case 'AllOfcommunityprofileFilesReadme':
          return new AllOfcommunityprofileFilesReadme.fromJson(value);
        case 'AllOfcontributorActivityAuthor':
          return new AllOfcontributorActivityAuthor.fromJson(value);
        case 'AllOfdeploymentCreator':
          return new AllOfdeploymentCreator.fromJson(value);
        case 'AllOfdeploymentPerformedViaGithubApp':
          return new AllOfdeploymentPerformedViaGithubApp.fromJson(value);
        case 'AllOfdeploymentStatusCreator':
          return new AllOfdeploymentStatusCreator.fromJson(value);
        case 'AllOfdeploymentStatusPerformedViaGithubApp':
          return new AllOfdeploymentStatusPerformedViaGithubApp.fromJson(value);
        case 'AllOffullRepositoryLicense':
          return new AllOffullRepositoryLicense.fromJson(value);
        case 'AllOffullRepositoryOrganization':
          return new AllOffullRepositoryOrganization.fromJson(value);
        case 'AllOffullRepositoryOwner':
          return new AllOffullRepositoryOwner.fromJson(value);
        case 'AllOffullRepositoryTemplateRepository':
          return new AllOffullRepositoryTemplateRepository.fromJson(value);
        case 'AllOfgistCommentUser':
          return new AllOfgistCommentUser.fromJson(value);
        case 'AllOfgistCommitUser':
          return new AllOfgistCommitUser.fromJson(value);
        case 'AllOfinstallationSuspendedBy':
          return new AllOfinstallationSuspendedBy.fromJson(value);
        case 'AllOfissueAssignee':
          return new AllOfissueAssignee.fromJson(value);
        case 'AllOfissueClosedBy':
          return new AllOfissueClosedBy.fromJson(value);
        case 'AllOfissueCommentPerformedViaGithubApp':
          return new AllOfissueCommentPerformedViaGithubApp.fromJson(value);
        case 'AllOfissueCommentUser':
          return new AllOfissueCommentUser.fromJson(value);
        case 'AllOfissueEventActor':
          return new AllOfissueEventActor.fromJson(value);
        case 'AllOfissueEventAssignee':
          return new AllOfissueEventAssignee.fromJson(value);
        case 'AllOfissueEventAssigner':
          return new AllOfissueEventAssigner.fromJson(value);
        case 'AllOfissueEventRequestedReviewer':
          return new AllOfissueEventRequestedReviewer.fromJson(value);
        case 'AllOfissueEventReviewRequester':
          return new AllOfissueEventReviewRequester.fromJson(value);
        case 'AllOfissueMilestone':
          return new AllOfissueMilestone.fromJson(value);
        case 'AllOfissuePerformedViaGithubApp':
          return new AllOfissuePerformedViaGithubApp.fromJson(value);
        case 'AllOfissueSearchResultItemAssignee':
          return new AllOfissueSearchResultItemAssignee.fromJson(value);
        case 'AllOfissueSearchResultItemMilestone':
          return new AllOfissueSearchResultItemMilestone.fromJson(value);
        case 'AllOfissueSearchResultItemPerformedViaGithubApp':
          return new AllOfissueSearchResultItemPerformedViaGithubApp.fromJson(value);
        case 'AllOfissueSearchResultItemUser':
          return new AllOfissueSearchResultItemUser.fromJson(value);
        case 'AllOfissueSimpleAssignee':
          return new AllOfissueSimpleAssignee.fromJson(value);
        case 'AllOfissueSimpleMilestone':
          return new AllOfissueSimpleMilestone.fromJson(value);
        case 'AllOfissueSimplePerformedViaGithubApp':
          return new AllOfissueSimplePerformedViaGithubApp.fromJson(value);
        case 'AllOfissueSimpleUser':
          return new AllOfissueSimpleUser.fromJson(value);
        case 'AllOfissueUser':
          return new AllOfissueUser.fromJson(value);
        case 'AllOflicenseContentLicense':
          return new AllOflicenseContentLicense.fromJson(value);
        case 'AllOfmigrationOwner':
          return new AllOfmigrationOwner.fromJson(value);
        case 'AllOfmilestoneCreator':
          return new AllOfmilestoneCreator.fromJson(value);
        case 'AllOfminimalRepositoryOwner':
          return new AllOfminimalRepositoryOwner.fromJson(value);
        case 'AllOforgMembershipUser':
          return new AllOforgMembershipUser.fromJson(value);
        case 'AllOfpageBuildPusher':
          return new AllOfpageBuildPusher.fromJson(value);
        case 'AllOfprojectCardCreator':
          return new AllOfprojectCardCreator.fromJson(value);
        case 'AllOfprojectCreator':
          return new AllOfprojectCreator.fromJson(value);
        case 'AllOfpullRequestAssignee':
          return new AllOfpullRequestAssignee.fromJson(value);
        case 'AllOfpullRequestMergedBy':
          return new AllOfpullRequestMergedBy.fromJson(value);
        case 'AllOfpullRequestMilestone':
          return new AllOfpullRequestMilestone.fromJson(value);
        case 'AllOfpullRequestReviewUser':
          return new AllOfpullRequestReviewUser.fromJson(value);
        case 'AllOfpullRequestSimpleAssignee':
          return new AllOfpullRequestSimpleAssignee.fromJson(value);
        case 'AllOfpullRequestSimpleMilestone':
          return new AllOfpullRequestSimpleMilestone.fromJson(value);
        case 'AllOfpullRequestSimpleUser':
          return new AllOfpullRequestSimpleUser.fromJson(value);
        case 'AllOfpullRequestUser':
          return new AllOfpullRequestUser.fromJson(value);
        case 'AllOfpullrequestBaseRepoLicense':
          return new AllOfpullrequestBaseRepoLicense.fromJson(value);
        case 'AllOfpullrequestsimpleHeadUser':
          return new AllOfpullrequestsimpleHeadUser.fromJson(value);
        case 'AllOfreactionUser':
          return new AllOfreactionUser.fromJson(value);
        case 'AllOfreleaseAssetUploader':
          return new AllOfreleaseAssetUploader.fromJson(value);
        case 'AllOfrepoSearchResultItemLicense':
          return new AllOfrepoSearchResultItemLicense.fromJson(value);
        case 'AllOfrepoSearchResultItemOwner':
          return new AllOfrepoSearchResultItemOwner.fromJson(value);
        case 'AllOfrepositoryCollaboratorPermissionUser':
          return new AllOfrepositoryCollaboratorPermissionUser.fromJson(value);
        case 'AllOfrepositoryInvitationInvitee':
          return new AllOfrepositoryInvitationInvitee.fromJson(value);
        case 'AllOfrepositoryInvitationInviter':
          return new AllOfrepositoryInvitationInviter.fromJson(value);
        case 'AllOfrepositoryLicense':
          return new AllOfrepositoryLicense.fromJson(value);
        case 'AllOfrepositoryOwner':
          return new AllOfrepositoryOwner.fromJson(value);
        case 'AllOfreviewCommentUser':
          return new AllOfreviewCommentUser.fromJson(value);
        case 'AllOfstargazerUser':
          return new AllOfstargazerUser.fromJson(value);
        case 'AllOfteamDiscussionAuthor':
          return new AllOfteamDiscussionAuthor.fromJson(value);
        case 'AllOfteamDiscussionCommentAuthor':
          return new AllOfteamDiscussionCommentAuthor.fromJson(value);
        case 'AllOfteamFullParent':
          return new AllOfteamFullParent.fromJson(value);
        case 'AllOfteamParent':
          return new AllOfteamParent.fromJson(value);
        case 'AllOfteamRepositoryLicense':
          return new AllOfteamRepositoryLicense.fromJson(value);
        case 'AllOfteamRepositoryOwner':
          return new AllOfteamRepositoryOwner.fromJson(value);
        case 'AllowedActions':
           return new AllowedActions.fromJson(value);
        case 'AnyOfbody118Source':
          return new AnyOfbody118Source.fromJson(value);
        case 'AnyOfbody18':
          return new AnyOfbody18.fromJson(value);
        case 'AnyOfinstallationAccount':
          return new AnyOfinstallationAccount.fromJson(value);
        case 'ApiOverview':
          return new ApiOverview.fromJson(value);
        case 'ApioverviewSshKeyFingerprints':
          return new ApioverviewSshKeyFingerprints.fromJson(value);
        case 'AppinstallationsinstallationIdaccessTokensPermissions':
          return new AppinstallationsinstallationIdaccessTokensPermissions.fromJson(value);
        case 'ApplicationGrant':
          return new ApplicationGrant.fromJson(value);
        case 'ApplicationgrantApp':
          return new ApplicationgrantApp.fromJson(value);
        case 'Artifact':
          return new Artifact.fromJson(value);
        case 'AuthenticationToken':
          return new AuthenticationToken.fromJson(value);
        case 'Authorization':
          return new Authorization.fromJson(value);
        case 'BaseGist':
          return new BaseGist.fromJson(value);
        case 'BasegistFiles':
          return new BasegistFiles.fromJson(value);
        case 'BasicError':
          return new BasicError.fromJson(value);
        case 'Blob':
          return new Blob.fromJson(value);
        case 'Body':
          return new Body.fromJson(value);
        case 'Body1':
          return new Body1.fromJson(value);
        case 'Body10':
          return new Body10.fromJson(value);
        case 'Body100':
          return new Body100.fromJson(value);
        case 'Body101':
          return new Body101.fromJson(value);
        case 'Body102':
          return new Body102.fromJson(value);
        case 'Body103':
          return new Body103.fromJson(value);
        case 'Body104':
          return new Body104.fromJson(value);
        case 'Body105':
          return new Body105.fromJson(value);
        case 'Body106':
          return new Body106.fromJson(value);
        case 'Body107':
          return new Body107.fromJson(value);
        case 'Body108':
          return new Body108.fromJson(value);
        case 'Body109':
          return new Body109.fromJson(value);
        case 'Body11':
          return new Body11.fromJson(value);
        case 'Body110':
          return new Body110.fromJson(value);
        case 'Body111':
          return new Body111.fromJson(value);
        case 'Body112':
          return new Body112.fromJson(value);
        case 'Body113':
          return new Body113.fromJson(value);
        case 'Body114':
          return new Body114.fromJson(value);
        case 'Body115':
          return new Body115.fromJson(value);
        case 'Body116':
          return new Body116.fromJson(value);
        case 'Body117':
          return new Body117.fromJson(value);
        case 'Body118':
          return new Body118.fromJson(value);
        case 'Body119':
          return new Body119.fromJson(value);
        case 'Body12':
          return new Body12.fromJson(value);
        case 'Body120':
          return new Body120.fromJson(value);
        case 'Body121':
          return new Body121.fromJson(value);
        case 'Body122':
          return new Body122.fromJson(value);
        case 'Body123':
          return new Body123.fromJson(value);
        case 'Body124':
          return new Body124.fromJson(value);
        case 'Body125':
          return new Body125.fromJson(value);
        case 'Body126':
          return new Body126.fromJson(value);
        case 'Body127':
          return new Body127.fromJson(value);
        case 'Body128':
          return new Body128.fromJson(value);
        case 'Body129':
          return new Body129.fromJson(value);
        case 'Body13':
          return new Body13.fromJson(value);
        case 'Body130':
          return new Body130.fromJson(value);
        case 'Body131':
          return new Body131.fromJson(value);
        case 'Body132':
          return new Body132.fromJson(value);
        case 'Body133':
          return new Body133.fromJson(value);
        case 'Body134':
          return new Body134.fromJson(value);
        case 'Body135':
          return new Body135.fromJson(value);
        case 'Body136':
          return new Body136.fromJson(value);
        case 'Body137':
          return new Body137.fromJson(value);
        case 'Body138':
          return new Body138.fromJson(value);
        case 'Body139':
          return new Body139.fromJson(value);
        case 'Body14':
          return new Body14.fromJson(value);
        case 'Body140':
          return new Body140.fromJson(value);
        case 'Body141':
          return new Body141.fromJson(value);
        case 'Body142':
          return new Body142.fromJson(value);
        case 'Body143':
          return new Body143.fromJson(value);
        case 'Body144':
          return new Body144.fromJson(value);
        case 'Body145':
          return new Body145.fromJson(value);
        case 'Body146':
          return new Body146.fromJson(value);
        case 'Body147':
          return new Body147.fromJson(value);
        case 'Body148':
          return new Body148.fromJson(value);
        case 'Body149':
          return new Body149.fromJson(value);
        case 'Body15':
          return new Body15.fromJson(value);
        case 'Body150':
          return new Body150.fromJson(value);
        case 'Body151':
          return new Body151.fromJson(value);
        case 'Body152':
          return new Body152.fromJson(value);
        case 'Body153':
          return new Body153.fromJson(value);
        case 'Body154':
          return new Body154.fromJson(value);
        case 'Body155':
          return new Body155.fromJson(value);
        case 'Body156':
          return new Body156.fromJson(value);
        case 'Body157':
          return new Body157.fromJson(value);
        case 'Body158':
          return new Body158.fromJson(value);
        case 'Body159':
          return new Body159.fromJson(value);
        case 'Body16':
          return new Body16.fromJson(value);
        case 'Body160':
          return new Body160.fromJson(value);
        case 'Body161':
          return new Body161.fromJson(value);
        case 'Body162':
          return new Body162.fromJson(value);
        case 'Body163':
          return new Body163.fromJson(value);
        case 'Body164':
          return new Body164.fromJson(value);
        case 'Body165':
          return new Body165.fromJson(value);
        case 'Body166':
          return new Body166.fromJson(value);
        case 'Body167':
          return new Body167.fromJson(value);
        case 'Body168':
          return new Body168.fromJson(value);
        case 'Body169':
          return new Body169.fromJson(value);
        case 'Body17':
          return new Body17.fromJson(value);
        case 'Body170':
          return new Body170.fromJson(value);
        case 'Body171':
          return new Body171.fromJson(value);
        case 'Body172':
          return new Body172.fromJson(value);
        case 'Body18':
          return new Body18.fromJson(value);
        case 'Body19':
          return new Body19.fromJson(value);
        case 'Body2':
          return new Body2.fromJson(value);
        case 'Body20':
          return new Body20.fromJson(value);
        case 'Body21':
          return new Body21.fromJson(value);
        case 'Body22':
          return new Body22.fromJson(value);
        case 'Body23':
          return new Body23.fromJson(value);
        case 'Body24':
          return new Body24.fromJson(value);
        case 'Body25':
          return new Body25.fromJson(value);
        case 'Body26':
          return new Body26.fromJson(value);
        case 'Body27':
          return new Body27.fromJson(value);
        case 'Body28':
          return new Body28.fromJson(value);
        case 'Body29':
          return new Body29.fromJson(value);
        case 'Body3':
          return new Body3.fromJson(value);
        case 'Body30':
          return new Body30.fromJson(value);
        case 'Body31':
          return new Body31.fromJson(value);
        case 'Body32':
          return new Body32.fromJson(value);
        case 'Body33':
          return new Body33.fromJson(value);
        case 'Body34':
          return new Body34.fromJson(value);
        case 'Body35':
          return new Body35.fromJson(value);
        case 'Body36':
          return new Body36.fromJson(value);
        case 'Body37':
          return new Body37.fromJson(value);
        case 'Body38':
          return new Body38.fromJson(value);
        case 'Body39':
          return new Body39.fromJson(value);
        case 'Body4':
          return new Body4.fromJson(value);
        case 'Body40':
          return new Body40.fromJson(value);
        case 'Body41':
          return new Body41.fromJson(value);
        case 'Body42':
          return new Body42.fromJson(value);
        case 'Body43':
          return new Body43.fromJson(value);
        case 'Body44':
          return new Body44.fromJson(value);
        case 'Body45':
          return new Body45.fromJson(value);
        case 'Body46':
          return new Body46.fromJson(value);
        case 'Body47':
          return new Body47.fromJson(value);
        case 'Body48':
          return new Body48.fromJson(value);
        case 'Body49':
          return new Body49.fromJson(value);
        case 'Body5':
          return new Body5.fromJson(value);
        case 'Body50':
          return new Body50.fromJson(value);
        case 'Body51':
          return new Body51.fromJson(value);
        case 'Body52':
          return new Body52.fromJson(value);
        case 'Body53':
          return new Body53.fromJson(value);
        case 'Body54':
          return new Body54.fromJson(value);
        case 'Body55':
          return new Body55.fromJson(value);
        case 'Body56':
          return new Body56.fromJson(value);
        case 'Body57':
          return new Body57.fromJson(value);
        case 'Body58':
          return new Body58.fromJson(value);
        case 'Body59':
          return new Body59.fromJson(value);
        case 'Body6':
          return new Body6.fromJson(value);
        case 'Body60':
          return new Body60.fromJson(value);
        case 'Body61':
          return new Body61.fromJson(value);
        case 'Body62':
          return new Body62.fromJson(value);
        case 'Body63':
          return new Body63.fromJson(value);
        case 'Body64':
          return new Body64.fromJson(value);
        case 'Body65':
          return new Body65.fromJson(value);
        case 'Body66':
          return new Body66.fromJson(value);
        case 'Body67':
          return new Body67.fromJson(value);
        case 'Body68':
          return new Body68.fromJson(value);
        case 'Body69':
          return new Body69.fromJson(value);
        case 'Body7':
          return new Body7.fromJson(value);
        case 'Body70':
          return new Body70.fromJson(value);
        case 'Body71':
          return new Body71.fromJson(value);
        case 'Body72':
          return new Body72.fromJson(value);
        case 'Body73':
          return new Body73.fromJson(value);
        case 'Body74':
          return new Body74.fromJson(value);
        case 'Body75':
          return new Body75.fromJson(value);
        case 'Body76':
          return new Body76.fromJson(value);
        case 'Body77':
          return new Body77.fromJson(value);
        case 'Body78':
          return new Body78.fromJson(value);
        case 'Body79':
          return new Body79.fromJson(value);
        case 'Body8':
          return new Body8.fromJson(value);
        case 'Body80':
          return new Body80.fromJson(value);
        case 'Body81':
          return new Body81.fromJson(value);
        case 'Body82':
          return new Body82.fromJson(value);
        case 'Body83':
          return new Body83.fromJson(value);
        case 'Body84':
          return new Body84.fromJson(value);
        case 'Body85':
          return new Body85.fromJson(value);
        case 'Body86':
          return new Body86.fromJson(value);
        case 'Body87':
          return new Body87.fromJson(value);
        case 'Body88':
          return new Body88.fromJson(value);
        case 'Body89':
          return new Body89.fromJson(value);
        case 'Body9':
          return new Body9.fromJson(value);
        case 'Body90':
          return new Body90.fromJson(value);
        case 'Body91':
          return new Body91.fromJson(value);
        case 'Body92':
          return new Body92.fromJson(value);
        case 'Body93':
          return new Body93.fromJson(value);
        case 'Body94':
          return new Body94.fromJson(value);
        case 'Body95':
          return new Body95.fromJson(value);
        case 'Body96':
          return new Body96.fromJson(value);
        case 'Body97':
          return new Body97.fromJson(value);
        case 'Body98':
          return new Body98.fromJson(value);
        case 'Body99':
          return new Body99.fromJson(value);
        case 'BranchProtection':
          return new BranchProtection.fromJson(value);
        case 'BranchRestrictionPolicy':
          return new BranchRestrictionPolicy.fromJson(value);
        case 'BranchShort':
          return new BranchShort.fromJson(value);
        case 'BranchWithProtection':
          return new BranchWithProtection.fromJson(value);
        case 'BranchprotectionRequiredLinearHistory':
          return new BranchprotectionRequiredLinearHistory.fromJson(value);
        case 'BranchprotectionRequiredStatusChecks':
          return new BranchprotectionRequiredStatusChecks.fromJson(value);
        case 'BranchrestrictionpolicyApps':
          return new BranchrestrictionpolicyApps.fromJson(value);
        case 'BranchrestrictionpolicyOwner':
          return new BranchrestrictionpolicyOwner.fromJson(value);
        case 'BranchrestrictionpolicyPermissions':
          return new BranchrestrictionpolicyPermissions.fromJson(value);
        case 'BranchrestrictionpolicyTeams':
          return new BranchrestrictionpolicyTeams.fromJson(value);
        case 'BranchshortCommit':
          return new BranchshortCommit.fromJson(value);
        case 'BranchwithprotectionLinks':
          return new BranchwithprotectionLinks.fromJson(value);
        case 'CheckAnnotation':
          return new CheckAnnotation.fromJson(value);
        case 'CheckRun':
          return new CheckRun.fromJson(value);
        case 'CheckSuite':
          return new CheckSuite.fromJson(value);
        case 'CheckSuitePreference':
          return new CheckSuitePreference.fromJson(value);
        case 'CheckrunCheckSuite':
          return new CheckrunCheckSuite.fromJson(value);
        case 'CheckrunOutput':
          return new CheckrunOutput.fromJson(value);
        case 'ChecksuitepreferencePreferences':
          return new ChecksuitepreferencePreferences.fromJson(value);
        case 'ChecksuitepreferencePreferencesAutoTriggerChecks':
          return new ChecksuitepreferencePreferencesAutoTriggerChecks.fromJson(value);
        case 'CloneTraffic':
          return new CloneTraffic.fromJson(value);
        case 'CodeFrequencyStat':
          return new CodeFrequencyStat.fromJson(value);
        case 'CodeOfConduct':
          return new CodeOfConduct.fromJson(value);
        case 'CodeOfConductSimple':
          return new CodeOfConductSimple.fromJson(value);
        case 'CodeScanningAlertCodeScanningAlert':
          return new CodeScanningAlertCodeScanningAlert.fromJson(value);
        case 'CodeScanningAlertCodeScanningAlertItems':
          return new CodeScanningAlertCodeScanningAlertItems.fromJson(value);
        case 'CodeScanningAlertCreatedAt':
          return new CodeScanningAlertCreatedAt.fromJson(value);
        case 'CodeScanningAlertDismissedAt':
          return new CodeScanningAlertDismissedAt.fromJson(value);
        case 'CodeScanningAlertDismissedBy':
          return new CodeScanningAlertDismissedBy.fromJson(value);
        case 'CodeScanningAlertDismissedReason':
          return new CodeScanningAlertDismissedReason.fromJson(value);
        case 'CodeScanningAlertEnvironment':
          return new CodeScanningAlertEnvironment.fromJson(value);
        case 'CodeScanningAlertHtmlUrl':
          return new CodeScanningAlertHtmlUrl.fromJson(value);
        case 'CodeScanningAlertInstances':
          return new CodeScanningAlertInstances.fromJson(value);
        case 'CodeScanningAlertNumber':
          return new CodeScanningAlertNumber.fromJson(value);
        case 'CodeScanningAlertRef':
          return new CodeScanningAlertRef.fromJson(value);
        case 'CodeScanningAlertRule':
          return new CodeScanningAlertRule.fromJson(value);
        case 'CodeScanningAlertSetState':
           return new CodeScanningAlertSetState.fromJson(value);
        case 'CodeScanningAlertState':
           return new CodeScanningAlertState.fromJson(value);
        case 'CodeScanningAlertUrl':
          return new CodeScanningAlertUrl.fromJson(value);
        case 'CodeScanningAnalysisAnalysisKey':
          return new CodeScanningAnalysisAnalysisKey.fromJson(value);
        case 'CodeScanningAnalysisCodeScanningAnalysis':
          return new CodeScanningAnalysisCodeScanningAnalysis.fromJson(value);
        case 'CodeScanningAnalysisCommitSha':
          return new CodeScanningAnalysisCommitSha.fromJson(value);
        case 'CodeScanningAnalysisCreatedAt':
          return new CodeScanningAnalysisCreatedAt.fromJson(value);
        case 'CodeScanningAnalysisEnvironment':
          return new CodeScanningAnalysisEnvironment.fromJson(value);
        case 'CodeScanningAnalysisRef':
          return new CodeScanningAnalysisRef.fromJson(value);
        case 'CodeScanningAnalysisSarifFile':
          return new CodeScanningAnalysisSarifFile.fromJson(value);
        case 'CodeScanningAnalysisTool':
          return new CodeScanningAnalysisTool.fromJson(value);
        case 'CodeScanningAnalysisToolName':
          return new CodeScanningAnalysisToolName.fromJson(value);
        case 'CodeSearchResultItem':
          return new CodeSearchResultItem.fromJson(value);
        case 'CodescanningalertinstancesInner':
          return new CodescanningalertinstancesInner.fromJson(value);
        case 'Collaborator':
          return new Collaborator.fromJson(value);
        case 'CollaboratorPermissions':
          return new CollaboratorPermissions.fromJson(value);
        case 'CombinedBillingUsage':
          return new CombinedBillingUsage.fromJson(value);
        case 'CombinedCommitStatus':
          return new CombinedCommitStatus.fromJson(value);
        case 'Commit':
          return new Commit.fromJson(value);
        case 'CommitActivity':
          return new CommitActivity.fromJson(value);
        case 'CommitComment':
          return new CommitComment.fromJson(value);
        case 'CommitCommit':
          return new CommitCommit.fromJson(value);
        case 'CommitCommitTree':
          return new CommitCommitTree.fromJson(value);
        case 'CommitComparison':
          return new CommitComparison.fromJson(value);
        case 'CommitFiles':
          return new CommitFiles.fromJson(value);
        case 'CommitParents':
          return new CommitParents.fromJson(value);
        case 'CommitSearchResultItem':
          return new CommitSearchResultItem.fromJson(value);
        case 'CommitStats':
          return new CommitStats.fromJson(value);
        case 'CommitsearchresultitemCommit':
          return new CommitsearchresultitemCommit.fromJson(value);
        case 'CommitsearchresultitemCommitAuthor':
          return new CommitsearchresultitemCommitAuthor.fromJson(value);
        case 'CommunityHealthFile':
          return new CommunityHealthFile.fromJson(value);
        case 'CommunityProfile':
          return new CommunityProfile.fromJson(value);
        case 'CommunityprofileFiles':
          return new CommunityprofileFiles.fromJson(value);
        case 'ContentDirectory':
          return new ContentDirectory.fromJson(value);
        case 'ContentFile':
          return new ContentFile.fromJson(value);
        case 'ContentReferenceAttachment':
          return new ContentReferenceAttachment.fromJson(value);
        case 'ContentSubmodule':
          return new ContentSubmodule.fromJson(value);
        case 'ContentSymlink':
          return new ContentSymlink.fromJson(value);
        case 'ContentTraffic':
          return new ContentTraffic.fromJson(value);
        case 'ContentTree':
          return new ContentTree.fromJson(value);
        case 'ContentdirectoryInner':
          return new ContentdirectoryInner.fromJson(value);
        case 'ContenttreeEntries':
          return new ContenttreeEntries.fromJson(value);
        case 'ContenttreeLinks':
          return new ContenttreeLinks.fromJson(value);
        case 'Contributor':
          return new Contributor.fromJson(value);
        case 'ContributorActivity':
          return new ContributorActivity.fromJson(value);
        case 'ContributoractivityWeeks':
          return new ContributoractivityWeeks.fromJson(value);
        case 'CredentialAuthorization':
          return new CredentialAuthorization.fromJson(value);
        case 'DeployKey':
          return new DeployKey.fromJson(value);
        case 'Deployment':
          return new Deployment.fromJson(value);
        case 'DeploymentStatus':
          return new DeploymentStatus.fromJson(value);
        case 'DiffEntry':
          return new DiffEntry.fromJson(value);
        case 'Email':
          return new Email.fromJson(value);
        case 'EnabledOrganizations':
           return new EnabledOrganizations.fromJson(value);
        case 'EnabledRepositories':
           return new EnabledRepositories.fromJson(value);
        case 'Enterprise':
          return new Enterprise.fromJson(value);
        case 'Event':
          return new Event.fromJson(value);
        case 'EventPayload':
          return new EventPayload.fromJson(value);
        case 'EventPayloadPages':
          return new EventPayloadPages.fromJson(value);
        case 'EventRepo':
          return new EventRepo.fromJson(value);
        case 'Feed':
          return new Feed.fromJson(value);
        case 'FeedLinks':
          return new FeedLinks.fromJson(value);
        case 'FileCommit':
          return new FileCommit.fromJson(value);
        case 'FilecommitCommit':
          return new FilecommitCommit.fromJson(value);
        case 'FilecommitCommitAuthor':
          return new FilecommitCommitAuthor.fromJson(value);
        case 'FilecommitCommitParents':
          return new FilecommitCommitParents.fromJson(value);
        case 'FilecommitCommitTree':
          return new FilecommitCommitTree.fromJson(value);
        case 'FilecommitCommitVerification':
          return new FilecommitCommitVerification.fromJson(value);
        case 'FilecommitContent':
          return new FilecommitContent.fromJson(value);
        case 'FilecommitContentLinks':
          return new FilecommitContentLinks.fromJson(value);
        case 'FullRepository':
          return new FullRepository.fromJson(value);
        case 'FullrepositoryPermissions':
          return new FullrepositoryPermissions.fromJson(value);
        case 'GistComment':
          return new GistComment.fromJson(value);
        case 'GistCommit':
          return new GistCommit.fromJson(value);
        case 'GistFull':
          return new GistFull.fromJson(value);
        case 'GistSimple':
          return new GistSimple.fromJson(value);
        case 'GistcommitChangeStatus':
          return new GistcommitChangeStatus.fromJson(value);
        case 'GistfullChangeStatus':
          return new GistfullChangeStatus.fromJson(value);
        case 'GistfullForks':
          return new GistfullForks.fromJson(value);
        case 'GistfullHistory':
          return new GistfullHistory.fromJson(value);
        case 'GistsFiles':
          return new GistsFiles.fromJson(value);
        case 'GistsgistIdFiles':
          return new GistsgistIdFiles.fromJson(value);
        case 'GistsimpleFiles':
          return new GistsimpleFiles.fromJson(value);
        case 'GitCommit':
          return new GitCommit.fromJson(value);
        case 'GitRef':
          return new GitRef.fromJson(value);
        case 'GitTag':
          return new GitTag.fromJson(value);
        case 'GitTree':
          return new GitTree.fromJson(value);
        case 'GitUser':
          return new GitUser.fromJson(value);
        case 'GitcommitAuthor':
          return new GitcommitAuthor.fromJson(value);
        case 'GitcommitParents':
          return new GitcommitParents.fromJson(value);
        case 'GitcommitTree':
          return new GitcommitTree.fromJson(value);
        case 'GitignoreTemplate':
          return new GitignoreTemplate.fromJson(value);
        case 'GitrefObject':
          return new GitrefObject.fromJson(value);
        case 'GittagObject':
          return new GittagObject.fromJson(value);
        case 'GittagTagger':
          return new GittagTagger.fromJson(value);
        case 'GittreeTree':
          return new GittreeTree.fromJson(value);
        case 'GpgKey':
          return new GpgKey.fromJson(value);
        case 'GpgkeyEmails':
          return new GpgkeyEmails.fromJson(value);
        case 'GpgkeySubkeys':
          return new GpgkeySubkeys.fromJson(value);
        case 'GroupMapping':
          return new GroupMapping.fromJson(value);
        case 'GroupmappingGroups':
          return new GroupmappingGroups.fromJson(value);
        case 'Hook':
          return new Hook.fromJson(value);
        case 'HookConfig':
          return new HookConfig.fromJson(value);
        case 'HookResponse':
          return new HookResponse.fromJson(value);
        case 'Hovercard':
          return new Hovercard.fromJson(value);
        case 'HovercardContexts':
          return new HovercardContexts.fromJson(value);
        case 'ImportProjectChoices':
          return new ImportProjectChoices.fromJson(value);
        case 'InlineResponse200':
          return new InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return new InlineResponse2001.fromJson(value);
        case 'InlineResponse20010':
          return new InlineResponse20010.fromJson(value);
        case 'InlineResponse20011':
          return new InlineResponse20011.fromJson(value);
        case 'InlineResponse20012':
          return new InlineResponse20012.fromJson(value);
        case 'InlineResponse20013':
          return new InlineResponse20013.fromJson(value);
        case 'InlineResponse20014':
          return new InlineResponse20014.fromJson(value);
        case 'InlineResponse20015':
          return new InlineResponse20015.fromJson(value);
        case 'InlineResponse20016':
          return new InlineResponse20016.fromJson(value);
        case 'InlineResponse20017':
          return new InlineResponse20017.fromJson(value);
        case 'InlineResponse20018':
          return new InlineResponse20018.fromJson(value);
        case 'InlineResponse20019':
          return new InlineResponse20019.fromJson(value);
        case 'InlineResponse2002':
          return new InlineResponse2002.fromJson(value);
        case 'InlineResponse20020':
          return new InlineResponse20020.fromJson(value);
        case 'InlineResponse20021':
          return new InlineResponse20021.fromJson(value);
        case 'InlineResponse20022':
          return new InlineResponse20022.fromJson(value);
        case 'InlineResponse20023':
          return new InlineResponse20023.fromJson(value);
        case 'InlineResponse20024':
          return new InlineResponse20024.fromJson(value);
        case 'InlineResponse20025':
          return new InlineResponse20025.fromJson(value);
        case 'InlineResponse20026':
          return new InlineResponse20026.fromJson(value);
        case 'InlineResponse20027':
          return new InlineResponse20027.fromJson(value);
        case 'InlineResponse20028':
          return new InlineResponse20028.fromJson(value);
        case 'InlineResponse2003':
          return new InlineResponse2003.fromJson(value);
        case 'InlineResponse2004':
          return new InlineResponse2004.fromJson(value);
        case 'InlineResponse2005':
          return new InlineResponse2005.fromJson(value);
        case 'InlineResponse2006':
          return new InlineResponse2006.fromJson(value);
        case 'InlineResponse2007':
          return new InlineResponse2007.fromJson(value);
        case 'InlineResponse2008':
          return new InlineResponse2008.fromJson(value);
        case 'InlineResponse2009':
          return new InlineResponse2009.fromJson(value);
        case 'InlineResponse201':
          return new InlineResponse201.fromJson(value);
        case 'InlineResponse202':
          return new InlineResponse202.fromJson(value);
        case 'InlineResponse2021':
          return new InlineResponse2021.fromJson(value);
        case 'InlineResponse403':
          return new InlineResponse403.fromJson(value);
        case 'InlineResponse4031':
          return new InlineResponse4031.fromJson(value);
        case 'InlineResponse4032':
          return new InlineResponse4032.fromJson(value);
        case 'InlineResponse4033':
          return new InlineResponse4033.fromJson(value);
        case 'InlineResponse4033Errors':
          return new InlineResponse4033Errors.fromJson(value);
        case 'InlineResponse403Block':
          return new InlineResponse403Block.fromJson(value);
        case 'InlineResponse404':
          return new InlineResponse404.fromJson(value);
        case 'InlineResponse409':
          return new InlineResponse409.fromJson(value);
        case 'InlineResponse415':
          return new InlineResponse415.fromJson(value);
        case 'InlineResponse422':
          return new InlineResponse422.fromJson(value);
        case 'InlineResponse4221':
          return new InlineResponse4221.fromJson(value);
        case 'InlineResponse4221Errors':
          return new InlineResponse4221Errors.fromJson(value);
        case 'InlineResponse4222':
          return new InlineResponse4222.fromJson(value);
        case 'InlineResponse4223':
          return new InlineResponse4223.fromJson(value);
        case 'InlineResponse503':
          return new InlineResponse503.fromJson(value);
        case 'InlineResponse5031':
          return new InlineResponse5031.fromJson(value);
        case 'InlineResponse5031Errors':
          return new InlineResponse5031Errors.fromJson(value);
        case 'Installation':
          return new Installation.fromJson(value);
        case 'InstallationPermissions':
          return new InstallationPermissions.fromJson(value);
        case 'InstallationToken':
          return new InstallationToken.fromJson(value);
        case 'InstallationtokenPermissions':
          return new InstallationtokenPermissions.fromJson(value);
        case 'Integration':
          return new Integration.fromJson(value);
        case 'IntegrationPermissions':
          return new IntegrationPermissions.fromJson(value);
        case 'InteractionLimit':
          return new InteractionLimit.fromJson(value);
        case 'Issue':
          return new Issue.fromJson(value);
        case 'IssueComment':
          return new IssueComment.fromJson(value);
        case 'IssueEvent':
          return new IssueEvent.fromJson(value);
        case 'IssueEventDismissedReview':
          return new IssueEventDismissedReview.fromJson(value);
        case 'IssueEventForIssue':
          return new IssueEventForIssue.fromJson(value);
        case 'IssueEventLabel':
          return new IssueEventLabel.fromJson(value);
        case 'IssueEventMilestone':
          return new IssueEventMilestone.fromJson(value);
        case 'IssueEventProjectCard':
          return new IssueEventProjectCard.fromJson(value);
        case 'IssueEventRename':
          return new IssueEventRename.fromJson(value);
        case 'IssueSearchResultItem':
          return new IssueSearchResultItem.fromJson(value);
        case 'IssueSimple':
          return new IssueSimple.fromJson(value);
        case 'IssuesearchresultitemLabels':
          return new IssuesearchresultitemLabels.fromJson(value);
        case 'IssuesimpleLabels':
          return new IssuesimpleLabels.fromJson(value);
        case 'IssuesimplePullRequest':
          return new IssuesimplePullRequest.fromJson(value);
        case 'Job':
          return new Job.fromJson(value);
        case 'JobSteps':
          return new JobSteps.fromJson(value);
        case 'Key':
          return new Key.fromJson(value);
        case 'KeySimple':
          return new KeySimple.fromJson(value);
        case 'Label':
          return new Label.fromJson(value);
        case 'LabelSearchResultItem':
          return new LabelSearchResultItem.fromJson(value);
        case 'Language':
          return new Language.fromJson(value);
        case 'License':
          return new License.fromJson(value);
        case 'LicenseContent':
          return new LicenseContent.fromJson(value);
        case 'LicenseSimple':
          return new LicenseSimple.fromJson(value);
        case 'Link':
          return new Link.fromJson(value);
        case 'LinkWithType':
          return new LinkWithType.fromJson(value);
        case 'MarketplaceAccount':
          return new MarketplaceAccount.fromJson(value);
        case 'MarketplaceListingPlan':
          return new MarketplaceListingPlan.fromJson(value);
        case 'MarketplacePurchase':
          return new MarketplacePurchase.fromJson(value);
        case 'MarketplacepurchaseMarketplacePendingChange':
          return new MarketplacepurchaseMarketplacePendingChange.fromJson(value);
        case 'MarketplacepurchaseMarketplacePurchase':
          return new MarketplacepurchaseMarketplacePurchase.fromJson(value);
        case 'Migration':
          return new Migration.fromJson(value);
        case 'Milestone':
          return new Milestone.fromJson(value);
        case 'MinimalRepository':
          return new MinimalRepository.fromJson(value);
        case 'MinimalrepositoryLicense':
          return new MinimalrepositoryLicense.fromJson(value);
        case 'ModelImport':
          return new ModelImport.fromJson(value);
        case 'OneOfbody100LabelsItems':
          return new OneOfbody100LabelsItems.fromJson(value);
        case 'OneOfbody103LabelsItems':
          return new OneOfbody103LabelsItems.fromJson(value);
        case 'OneOfbody165':
          return new OneOfbody165.fromJson(value);
        case 'OneOfbody166':
          return new OneOfbody166.fromJson(value);
        case 'OneOfbody17Public':
          return new OneOfbody17Public.fromJson(value);
        case 'OneOfbody57':
          return new OneOfbody57.fromJson(value);
        case 'OneOfcodeScanningAlertDismissedBy':
          return new OneOfcodeScanningAlertDismissedBy.fromJson(value);
        case 'OneOfcodeScanningAlertDismissedReason':
          return new OneOfcodeScanningAlertDismissedReason.fromJson(value);
        case 'OneOfemail':
          return new OneOfemail.fromJson(value);
        case 'OneOfinlineResponse20019':
          return new OneOfinlineResponse20019.fromJson(value);
        case 'OneOfinlineResponse20027':
          return new OneOfinlineResponse20027.fromJson(value);
        case 'OneOfinlineResponse422':
          return new OneOfinlineResponse422.fromJson(value);
        case 'OneOfissueLabelsItems':
          return new OneOfissueLabelsItems.fromJson(value);
        case 'OneOfscimuserOperationsValue':
          return new OneOfscimuserOperationsValue.fromJson(value);
        case 'OneOfscimv2organizationsorgUsersscimUserIdOperationsValue':
          return new OneOfscimv2organizationsorgUsersscimUserIdOperationsValue.fromJson(value);
        case 'OneOfvalidationerrorErrorsValue':
          return new OneOfvalidationerrorErrorsValue.fromJson(value);
        case 'OneOfworkflowId':
          return new OneOfworkflowId.fromJson(value);
        case 'OrgHook':
          return new OrgHook.fromJson(value);
        case 'OrgMembership':
          return new OrgMembership.fromJson(value);
        case 'OrganizationActionsSecret':
          return new OrganizationActionsSecret.fromJson(value);
        case 'OrganizationFull':
          return new OrganizationFull.fromJson(value);
        case 'OrganizationInvitation':
          return new OrganizationInvitation.fromJson(value);
        case 'OrganizationSimple':
          return new OrganizationSimple.fromJson(value);
        case 'OrganizationfullPlan':
          return new OrganizationfullPlan.fromJson(value);
        case 'OrghookConfig':
          return new OrghookConfig.fromJson(value);
        case 'OrgmembershipPermissions':
          return new OrgmembershipPermissions.fromJson(value);
        case 'OrgsorghooksConfig':
          return new OrgsorghooksConfig.fromJson(value);
        case 'OrgsorghookshookIdConfig':
          return new OrgsorghookshookIdConfig.fromJson(value);
        case 'OrgsorgteamsteamSlugteamsyncgroupmappingsGroups':
          return new OrgsorgteamsteamSlugteamsyncgroupmappingsGroups.fromJson(value);
        case 'PackagesBillingUsage':
          return new PackagesBillingUsage.fromJson(value);
        case 'Page':
          return new Page.fromJson(value);
        case 'PageBuild':
          return new PageBuild.fromJson(value);
        case 'PageBuildStatus':
          return new PageBuildStatus.fromJson(value);
        case 'PagebuildError':
          return new PagebuildError.fromJson(value);
        case 'PagesSourceHash':
          return new PagesSourceHash.fromJson(value);
        case 'ParticipationStats':
          return new ParticipationStats.fromJson(value);
        case 'PorterAuthor':
          return new PorterAuthor.fromJson(value);
        case 'PorterLargeFile':
          return new PorterLargeFile.fromJson(value);
        case 'PrivateUser':
          return new PrivateUser.fromJson(value);
        case 'PrivateuserPlan':
          return new PrivateuserPlan.fromJson(value);
        case 'Project':
          return new Project.fromJson(value);
        case 'ProjectCard':
          return new ProjectCard.fromJson(value);
        case 'ProjectColumn':
          return new ProjectColumn.fromJson(value);
        case 'ProjectPermissions':
          return new ProjectPermissions.fromJson(value);
        case 'ProtectedBranch':
          return new ProtectedBranch.fromJson(value);
        case 'ProtectedBranchAdminEnforced':
          return new ProtectedBranchAdminEnforced.fromJson(value);
        case 'ProtectedBranchPullRequestReview':
          return new ProtectedBranchPullRequestReview.fromJson(value);
        case 'ProtectedbranchEnforceAdmins':
          return new ProtectedbranchEnforceAdmins.fromJson(value);
        case 'ProtectedbranchRequiredLinearHistory':
          return new ProtectedbranchRequiredLinearHistory.fromJson(value);
        case 'ProtectedbranchRequiredPullRequestReviews':
          return new ProtectedbranchRequiredPullRequestReviews.fromJson(value);
        case 'ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions':
          return new ProtectedbranchRequiredPullRequestReviewsDismissalRestrictions.fromJson(value);
        case 'ProtectedbranchRequiredSignatures':
          return new ProtectedbranchRequiredSignatures.fromJson(value);
        case 'ProtectedbranchpullrequestreviewDismissalRestrictions':
          return new ProtectedbranchpullrequestreviewDismissalRestrictions.fromJson(value);
        case 'PublicUser':
          return new PublicUser.fromJson(value);
        case 'PullRequest':
          return new PullRequest.fromJson(value);
        case 'PullRequestMergeResult':
          return new PullRequestMergeResult.fromJson(value);
        case 'PullRequestMinimal':
          return new PullRequestMinimal.fromJson(value);
        case 'PullRequestReview':
          return new PullRequestReview.fromJson(value);
        case 'PullRequestReviewComment':
          return new PullRequestReviewComment.fromJson(value);
        case 'PullRequestReviewRequest':
          return new PullRequestReviewRequest.fromJson(value);
        case 'PullRequestSimple':
          return new PullRequestSimple.fromJson(value);
        case 'PullrequestBase':
          return new PullrequestBase.fromJson(value);
        case 'PullrequestBaseRepo':
          return new PullrequestBaseRepo.fromJson(value);
        case 'PullrequestHead':
          return new PullrequestHead.fromJson(value);
        case 'PullrequestHeadRepo':
          return new PullrequestHeadRepo.fromJson(value);
        case 'PullrequestHeadRepoLicense':
          return new PullrequestHeadRepoLicense.fromJson(value);
        case 'PullrequestHeadRepoOwner':
          return new PullrequestHeadRepoOwner.fromJson(value);
        case 'PullrequestminimalHead':
          return new PullrequestminimalHead.fromJson(value);
        case 'PullrequestminimalHeadRepo':
          return new PullrequestminimalHeadRepo.fromJson(value);
        case 'PullrequestreviewLinks':
          return new PullrequestreviewLinks.fromJson(value);
        case 'PullrequestreviewLinksHtml':
          return new PullrequestreviewLinksHtml.fromJson(value);
        case 'PullrequestreviewcommentLinks':
          return new PullrequestreviewcommentLinks.fromJson(value);
        case 'PullrequestreviewcommentLinksHtml':
          return new PullrequestreviewcommentLinksHtml.fromJson(value);
        case 'PullrequestreviewcommentLinksPullRequest':
          return new PullrequestreviewcommentLinksPullRequest.fromJson(value);
        case 'PullrequestreviewcommentLinksSelf':
          return new PullrequestreviewcommentLinksSelf.fromJson(value);
        case 'PullrequestsimpleHead':
          return new PullrequestsimpleHead.fromJson(value);
        case 'PullrequestsimpleLabels':
          return new PullrequestsimpleLabels.fromJson(value);
        case 'PullrequestsimpleLinks':
          return new PullrequestsimpleLinks.fromJson(value);
        case 'RateLimit':
          return new RateLimit.fromJson(value);
        case 'RateLimitOverview':
          return new RateLimitOverview.fromJson(value);
        case 'RatelimitoverviewResources':
          return new RatelimitoverviewResources.fromJson(value);
        case 'Reaction':
          return new Reaction.fromJson(value);
        case 'ReactionRollup':
          return new ReactionRollup.fromJson(value);
        case 'ReferrerTraffic':
          return new ReferrerTraffic.fromJson(value);
        case 'Release':
          return new Release.fromJson(value);
        case 'ReleaseAsset':
          return new ReleaseAsset.fromJson(value);
        case 'RepoSearchResultItem':
          return new RepoSearchResultItem.fromJson(value);
        case 'Repository':
          return new Repository.fromJson(value);
        case 'RepositoryCollaboratorPermission':
          return new RepositoryCollaboratorPermission.fromJson(value);
        case 'RepositoryInvitation':
          return new RepositoryInvitation.fromJson(value);
        case 'RepositoryPermissions':
          return new RepositoryPermissions.fromJson(value);
        case 'RepositorySubscription':
          return new RepositorySubscription.fromJson(value);
        case 'RepositoryTemplateRepository':
          return new RepositoryTemplateRepository.fromJson(value);
        case 'RepositoryTemplateRepositoryOwner':
          return new RepositoryTemplateRepositoryOwner.fromJson(value);
        case 'RepositoryTemplateRepositoryPermissions':
          return new RepositoryTemplateRepositoryPermissions.fromJson(value);
        case 'ReposownerrepobranchesbranchprotectionRequiredPullRequestReviews':
          return new ReposownerrepobranchesbranchprotectionRequiredPullRequestReviews.fromJson(value);
        case 'ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions':
          return new ReposownerrepobranchesbranchprotectionRequiredPullRequestReviewsDismissalRestrictions.fromJson(value);
        case 'ReposownerrepobranchesbranchprotectionRequiredStatusChecks':
          return new ReposownerrepobranchesbranchprotectionRequiredStatusChecks.fromJson(value);
        case 'ReposownerrepobranchesbranchprotectionRestrictions':
          return new ReposownerrepobranchesbranchprotectionRestrictions.fromJson(value);
        case 'ReposownerrepocheckrunsActions':
          return new ReposownerrepocheckrunsActions.fromJson(value);
        case 'ReposownerrepocheckrunsOutput':
          return new ReposownerrepocheckrunsOutput.fromJson(value);
        case 'ReposownerrepocheckrunsOutputAnnotations':
          return new ReposownerrepocheckrunsOutputAnnotations.fromJson(value);
        case 'ReposownerrepocheckrunsOutputImages':
          return new ReposownerrepocheckrunsOutputImages.fromJson(value);
        case 'ReposownerrepocheckrunscheckRunIdOutput':
          return new ReposownerrepocheckrunscheckRunIdOutput.fromJson(value);
        case 'ReposownerrepochecksuitespreferencesAutoTriggerChecks':
          return new ReposownerrepochecksuitespreferencesAutoTriggerChecks.fromJson(value);
        case 'ReposownerrepocontentspathAuthor':
          return new ReposownerrepocontentspathAuthor.fromJson(value);
        case 'ReposownerrepocontentspathAuthor1':
          return new ReposownerrepocontentspathAuthor1.fromJson(value);
        case 'ReposownerrepocontentspathCommitter':
          return new ReposownerrepocontentspathCommitter.fromJson(value);
        case 'ReposownerrepocontentspathCommitter1':
          return new ReposownerrepocontentspathCommitter1.fromJson(value);
        case 'ReposownerrepogitcommitsAuthor':
          return new ReposownerrepogitcommitsAuthor.fromJson(value);
        case 'ReposownerrepogitcommitsCommitter':
          return new ReposownerrepogitcommitsCommitter.fromJson(value);
        case 'ReposownerrepogittagsTagger':
          return new ReposownerrepogittagsTagger.fromJson(value);
        case 'ReposownerrepogittreesTree':
          return new ReposownerrepogittreesTree.fromJson(value);
        case 'ReposownerrepohooksConfig':
          return new ReposownerrepohooksConfig.fromJson(value);
        case 'ReposownerrepohookshookIdConfig':
          return new ReposownerrepohookshookIdConfig.fromJson(value);
        case 'ReposownerrepopagesSource':
          return new ReposownerrepopagesSource.fromJson(value);
        case 'ReposownerrepopullspullNumberreviewsComments':
          return new ReposownerrepopullspullNumberreviewsComments.fromJson(value);
        case 'ReviewComment':
          return new ReviewComment.fromJson(value);
        case 'ReviewcommentLinks':
          return new ReviewcommentLinks.fromJson(value);
        case 'Runner':
          return new Runner.fromJson(value);
        case 'RunnerApplication':
          return new RunnerApplication.fromJson(value);
        case 'RunnerGroupsEnterprise':
          return new RunnerGroupsEnterprise.fromJson(value);
        case 'RunnerGroupsOrg':
          return new RunnerGroupsOrg.fromJson(value);
        case 'RunnerLabels':
          return new RunnerLabels.fromJson(value);
        case 'ScimEnterpriseGroup':
          return new ScimEnterpriseGroup.fromJson(value);
        case 'ScimEnterpriseUser':
          return new ScimEnterpriseUser.fromJson(value);
        case 'ScimError':
          return new ScimError.fromJson(value);
        case 'ScimGroupListEnterprise':
          return new ScimGroupListEnterprise.fromJson(value);
        case 'ScimUser':
          return new ScimUser.fromJson(value);
        case 'ScimUserList':
          return new ScimUserList.fromJson(value);
        case 'ScimUserListEnterprise':
          return new ScimUserListEnterprise.fromJson(value);
        case 'ScimenterpriseuserEmails':
          return new ScimenterpriseuserEmails.fromJson(value);
        case 'ScimgrouplistenterpriseMembers':
          return new ScimgrouplistenterpriseMembers.fromJson(value);
        case 'ScimgrouplistenterpriseMeta':
          return new ScimgrouplistenterpriseMeta.fromJson(value);
        case 'ScimgrouplistenterpriseResources':
          return new ScimgrouplistenterpriseResources.fromJson(value);
        case 'ScimuserEmails':
          return new ScimuserEmails.fromJson(value);
        case 'ScimuserGroups':
          return new ScimuserGroups.fromJson(value);
        case 'ScimuserMeta':
          return new ScimuserMeta.fromJson(value);
        case 'ScimuserName':
          return new ScimuserName.fromJson(value);
        case 'ScimuserOperations':
          return new ScimuserOperations.fromJson(value);
        case 'ScimuserlistenterpriseEmails':
          return new ScimuserlistenterpriseEmails.fromJson(value);
        case 'ScimuserlistenterpriseName':
          return new ScimuserlistenterpriseName.fromJson(value);
        case 'ScimuserlistenterpriseResources':
          return new ScimuserlistenterpriseResources.fromJson(value);
        case 'Scimv2enterprisesenterpriseGroupsMembers':
          return new Scimv2enterprisesenterpriseGroupsMembers.fromJson(value);
        case 'Scimv2enterprisesenterpriseUsersEmails':
          return new Scimv2enterprisesenterpriseUsersEmails.fromJson(value);
        case 'Scimv2enterprisesenterpriseUsersGroups':
          return new Scimv2enterprisesenterpriseUsersGroups.fromJson(value);
        case 'Scimv2enterprisesenterpriseUsersName':
          return new Scimv2enterprisesenterpriseUsersName.fromJson(value);
        case 'Scimv2organizationsorgUsersEmails':
          return new Scimv2organizationsorgUsersEmails.fromJson(value);
        case 'Scimv2organizationsorgUsersName':
          return new Scimv2organizationsorgUsersName.fromJson(value);
        case 'Scimv2organizationsorgUsersscimUserIdEmails':
          return new Scimv2organizationsorgUsersscimUserIdEmails.fromJson(value);
        case 'Scimv2organizationsorgUsersscimUserIdOperations':
          return new Scimv2organizationsorgUsersscimUserIdOperations.fromJson(value);
        case 'ScopedInstallation':
          return new ScopedInstallation.fromJson(value);
        case 'SearchResultTextMatches':
          return new SearchResultTextMatches.fromJson(value);
        case 'SearchresulttextmatchesInner':
          return new SearchresulttextmatchesInner.fromJson(value);
        case 'SelectedActions':
          return new SelectedActions.fromJson(value);
        case 'SelectedActionsUrl':
          return new SelectedActionsUrl.fromJson(value);
        case 'ShortBlob':
          return new ShortBlob.fromJson(value);
        case 'ShortBranch':
          return new ShortBranch.fromJson(value);
        case 'ShortbranchCommit':
          return new ShortbranchCommit.fromJson(value);
        case 'SimpleCommit':
          return new SimpleCommit.fromJson(value);
        case 'SimpleCommitStatus':
          return new SimpleCommitStatus.fromJson(value);
        case 'SimpleUser':
          return new SimpleUser.fromJson(value);
        case 'SimplecommitAuthor':
          return new SimplecommitAuthor.fromJson(value);
        case 'Stargazer':
          return new Stargazer.fromJson(value);
        case 'StarredRepository':
          return new StarredRepository.fromJson(value);
        case 'Status':
          return new Status.fromJson(value);
        case 'StatusCheckPolicy':
          return new StatusCheckPolicy.fromJson(value);
        case 'Tag':
          return new Tag.fromJson(value);
        case 'Team':
          return new Team.fromJson(value);
        case 'TeamDiscussion':
          return new TeamDiscussion.fromJson(value);
        case 'TeamDiscussionComment':
          return new TeamDiscussionComment.fromJson(value);
        case 'TeamFull':
          return new TeamFull.fromJson(value);
        case 'TeamMembership':
          return new TeamMembership.fromJson(value);
        case 'TeamProject':
          return new TeamProject.fromJson(value);
        case 'TeamRepository':
          return new TeamRepository.fromJson(value);
        case 'TeamSimple':
          return new TeamSimple.fromJson(value);
        case 'TeamprojectPermissions':
          return new TeamprojectPermissions.fromJson(value);
        case 'TeamsteamIdteamsyncgroupmappingsGroups':
          return new TeamsteamIdteamsyncgroupmappingsGroups.fromJson(value);
        case 'Thread':
          return new Thread.fromJson(value);
        case 'ThreadSubject':
          return new ThreadSubject.fromJson(value);
        case 'ThreadSubscription':
          return new ThreadSubscription.fromJson(value);
        case 'Topic':
          return new Topic.fromJson(value);
        case 'TopicSearchResultItem':
          return new TopicSearchResultItem.fromJson(value);
        case 'TopicsearchresultitemRelated':
          return new TopicsearchresultitemRelated.fromJson(value);
        case 'TopicsearchresultitemTopicRelation':
          return new TopicsearchresultitemTopicRelation.fromJson(value);
        case 'Traffic':
          return new Traffic.fromJson(value);
        case 'UserMarketplacePurchase':
          return new UserMarketplacePurchase.fromJson(value);
        case 'UserSearchResultItem':
          return new UserSearchResultItem.fromJson(value);
        case 'ValidationError':
          return new ValidationError.fromJson(value);
        case 'ValidationErrorSimple':
          return new ValidationErrorSimple.fromJson(value);
        case 'ValidationerrorErrors':
          return new ValidationerrorErrors.fromJson(value);
        case 'Verification':
          return new Verification.fromJson(value);
        case 'ViewTraffic':
          return new ViewTraffic.fromJson(value);
        case 'WebhookConfig':
          return new WebhookConfig.fromJson(value);
        case 'WebhookConfigContentType':
          return new WebhookConfigContentType.fromJson(value);
        case 'WebhookConfigInsecureSsl':
          return new WebhookConfigInsecureSsl.fromJson(value);
        case 'WebhookConfigSecret':
          return new WebhookConfigSecret.fromJson(value);
        case 'WebhookConfigUrl':
          return new WebhookConfigUrl.fromJson(value);
        case 'Workflow':
          return new Workflow.fromJson(value);
        case 'WorkflowId':
          return new WorkflowId.fromJson(value);
        case 'WorkflowRun':
          return new WorkflowRun.fromJson(value);
        case 'WorkflowRunUsage':
          return new WorkflowRunUsage.fromJson(value);
        case 'WorkflowUsage':
          return new WorkflowUsage.fromJson(value);
        case 'WorkflowrunusageBillable':
          return new WorkflowrunusageBillable.fromJson(value);
        case 'WorkflowrunusageBillableUBUNTU':
          return new WorkflowrunusageBillableUBUNTU.fromJson(value);
        case 'WorkflowusageBillable':
          return new WorkflowusageBillable.fromJson(value);
        case 'WorkflowusageBillableUBUNTU':
          return new WorkflowusageBillableUBUNTU.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}

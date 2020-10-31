part of swagger.api;

class ModelImport {
  
  String vcs = null;

  String useLfs = null;
/* The URL of the originating repository. */
  String vcsUrl = null;

  String svcRoot = null;

  String tfvcProject = null;

  String status = null;
  //enum statusEnum {  auth,  error,  none,  detecting,  choose,  auth_failed,  importing,  mapping,  waiting_to_push,  pushing,  complete,  setup,  unknown,  detection_found_multiple,  detection_found_nothing,  detection_needs_auth,  };

  String statusText = null;

  String failedStep = null;

  String errorMessage = null;

  int importPercent = null;

  int commitCount = null;

  int pushPercent = null;

  bool hasLargeFiles = null;

  int largeFilesSize = null;

  int largeFilesCount = null;

  List<ImportProjectChoices> projectChoices = [];

  String message = null;

  int authorsCount = null;

  String url = null;

  String htmlUrl = null;

  String authorsUrl = null;

  String repositoryUrl = null;

  String svnRoot = null;

  ModelImport();

  @override
  String toString() {
    return 'ModelImport[vcs=$vcs, useLfs=$useLfs, vcsUrl=$vcsUrl, svcRoot=$svcRoot, tfvcProject=$tfvcProject, status=$status, statusText=$statusText, failedStep=$failedStep, errorMessage=$errorMessage, importPercent=$importPercent, commitCount=$commitCount, pushPercent=$pushPercent, hasLargeFiles=$hasLargeFiles, largeFilesSize=$largeFilesSize, largeFilesCount=$largeFilesCount, projectChoices=$projectChoices, message=$message, authorsCount=$authorsCount, url=$url, htmlUrl=$htmlUrl, authorsUrl=$authorsUrl, repositoryUrl=$repositoryUrl, svnRoot=$svnRoot, ]';
  }

  ModelImport.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vcs = json['vcs'];
    useLfs = json['use_lfs'];
    vcsUrl = json['vcs_url'];
    svcRoot = json['svc_root'];
    tfvcProject = json['tfvc_project'];
    status = json['status'];
    statusText = json['status_text'];
    failedStep = json['failed_step'];
    errorMessage = json['error_message'];
    importPercent = json['import_percent'];
    commitCount = json['commit_count'];
    pushPercent = json['push_percent'];
    hasLargeFiles = json['has_large_files'];
    largeFilesSize = json['large_files_size'];
    largeFilesCount = json['large_files_count'];
    projectChoices = ImportProjectChoices.listFromJson(json['project_choices']);
    message = json['message'];
    authorsCount = json['authors_count'];
    url = json['url'];
    htmlUrl = json['html_url'];
    authorsUrl = json['authors_url'];
    repositoryUrl = json['repository_url'];
    svnRoot = json['svn_root'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vcs': vcs,
      'use_lfs': useLfs,
      'vcs_url': vcsUrl,
      'svc_root': svcRoot,
      'tfvc_project': tfvcProject,
      'status': status,
      'status_text': statusText,
      'failed_step': failedStep,
      'error_message': errorMessage,
      'import_percent': importPercent,
      'commit_count': commitCount,
      'push_percent': pushPercent,
      'has_large_files': hasLargeFiles,
      'large_files_size': largeFilesSize,
      'large_files_count': largeFilesCount,
      'project_choices': projectChoices,
      'message': message,
      'authors_count': authorsCount,
      'url': url,
      'html_url': htmlUrl,
      'authors_url': authorsUrl,
      'repository_url': repositoryUrl,
      'svn_root': svnRoot
     };
  }

  static List<ModelImport> listFromJson(List<dynamic> json) {
    return json == null ? new List<ModelImport>() : json.map((value) => new ModelImport.fromJson(value)).toList();
  }

  static Map<String, ModelImport> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ModelImport>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ModelImport.fromJson(value));
    }
    return map;
  }
}

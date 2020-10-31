part of swagger.api;

class CommunityprofileFiles {
  
  AllOfcommunityprofileFilesCodeOfConduct codeOfConduct = null;

  AllOfcommunityprofileFilesLicense license = null;

  AllOfcommunityprofileFilesContributing contributing = null;

  AllOfcommunityprofileFilesReadme readme = null;

  AllOfcommunityprofileFilesIssueTemplate issueTemplate = null;

  AllOfcommunityprofileFilesPullRequestTemplate pullRequestTemplate = null;

  CommunityprofileFiles();

  @override
  String toString() {
    return 'CommunityprofileFiles[codeOfConduct=$codeOfConduct, license=$license, contributing=$contributing, readme=$readme, issueTemplate=$issueTemplate, pullRequestTemplate=$pullRequestTemplate, ]';
  }

  CommunityprofileFiles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    codeOfConduct = new AllOfcommunityprofileFilesCodeOfConduct.fromJson(json['code_of_conduct']);
    license = new AllOfcommunityprofileFilesLicense.fromJson(json['license']);
    contributing = new AllOfcommunityprofileFilesContributing.fromJson(json['contributing']);
    readme = new AllOfcommunityprofileFilesReadme.fromJson(json['readme']);
    issueTemplate = new AllOfcommunityprofileFilesIssueTemplate.fromJson(json['issue_template']);
    pullRequestTemplate = new AllOfcommunityprofileFilesPullRequestTemplate.fromJson(json['pull_request_template']);
  }

  Map<String, dynamic> toJson() {
    return {
      'code_of_conduct': codeOfConduct,
      'license': license,
      'contributing': contributing,
      'readme': readme,
      'issue_template': issueTemplate,
      'pull_request_template': pullRequestTemplate
     };
  }

  static List<CommunityprofileFiles> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommunityprofileFiles>() : json.map((value) => new CommunityprofileFiles.fromJson(value)).toList();
  }

  static Map<String, CommunityprofileFiles> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommunityprofileFiles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommunityprofileFiles.fromJson(value));
    }
    return map;
  }
}

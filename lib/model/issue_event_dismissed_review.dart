part of swagger.api;

class IssueEventDismissedReview {
  
  String state = null;

  int reviewId = null;

  String dismissalMessage = null;

  String dismissalCommitId = null;

  IssueEventDismissedReview();

  @override
  String toString() {
    return 'IssueEventDismissedReview[state=$state, reviewId=$reviewId, dismissalMessage=$dismissalMessage, dismissalCommitId=$dismissalCommitId, ]';
  }

  IssueEventDismissedReview.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['state'];
    reviewId = json['review_id'];
    dismissalMessage = json['dismissal_message'];
    dismissalCommitId = json['dismissal_commit_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'review_id': reviewId,
      'dismissal_message': dismissalMessage,
      'dismissal_commit_id': dismissalCommitId
     };
  }

  static List<IssueEventDismissedReview> listFromJson(List<dynamic> json) {
    return json == null ? new List<IssueEventDismissedReview>() : json.map((value) => new IssueEventDismissedReview.fromJson(value)).toList();
  }

  static Map<String, IssueEventDismissedReview> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IssueEventDismissedReview>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IssueEventDismissedReview.fromJson(value));
    }
    return map;
  }
}

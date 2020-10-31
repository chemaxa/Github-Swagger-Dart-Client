part of swagger.api;

class ReposownerrepocheckrunscheckRunIdOutput {
  /* **Required**. */
  String title = null;
/* Can contain Markdown. */
  String summary = null;
/* Can contain Markdown. */
  String text = null;
/* Adds information from your analysis to specific lines of code. Annotations are visible in GitHub's pull request UI. Annotations are visible in GitHub's pull request UI. The Checks API limits the number of annotations to a maximum of 50 per API request. To create more than 50 annotations, you have to make multiple requests to the [Update a check run](https://developer.github.com/v3/checks/runs/#update-a-check-run) endpoint. Each time you update the check run, annotations are appended to the list of annotations that already exist for the check run. For details about annotations in the UI, see \"[About status checks](https://help.github.com/articles/about-status-checks#checks)\". See the [`annotations` object](https://developer.github.com/v3/checks/runs/#annotations-object-1) description for details. */
  List<ReposownerrepocheckrunsOutputAnnotations> annotations = [];
/* Adds images to the output displayed in the GitHub pull request UI. See the [`images` object](https://developer.github.com/v3/checks/runs/#annotations-object-1) description for details. */
  List<ReposownerrepocheckrunsOutputImages> images = [];

  ReposownerrepocheckrunscheckRunIdOutput();

  @override
  String toString() {
    return 'ReposownerrepocheckrunscheckRunIdOutput[title=$title, summary=$summary, text=$text, annotations=$annotations, images=$images, ]';
  }

  ReposownerrepocheckrunscheckRunIdOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    summary = json['summary'];
    text = json['text'];
    annotations = ReposownerrepocheckrunsOutputAnnotations.listFromJson(json['annotations']);
    images = ReposownerrepocheckrunsOutputImages.listFromJson(json['images']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'summary': summary,
      'text': text,
      'annotations': annotations,
      'images': images
     };
  }

  static List<ReposownerrepocheckrunscheckRunIdOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocheckrunscheckRunIdOutput>() : json.map((value) => new ReposownerrepocheckrunscheckRunIdOutput.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocheckrunscheckRunIdOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocheckrunscheckRunIdOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocheckrunscheckRunIdOutput.fromJson(value));
    }
    return map;
  }
}

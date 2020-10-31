part of swagger.api;

class ReposownerrepocheckrunsOutput {
  /* The title of the check run. */
  String title = null;
/* The summary of the check run. This parameter supports Markdown. */
  String summary = null;
/* The details of the check run. This parameter supports Markdown. */
  String text = null;
/* Adds information from your analysis to specific lines of code. Annotations are visible on GitHub in the **Checks** and **Files changed** tab of the pull request. The Checks API limits the number of annotations to a maximum of 50 per API request. To create more than 50 annotations, you have to make multiple requests to the [Update a check run](https://developer.github.com/v3/checks/runs/#update-a-check-run) endpoint. Each time you update the check run, annotations are appended to the list of annotations that already exist for the check run. For details about how you can view annotations on GitHub, see \"[About status checks](https://help.github.com/articles/about-status-checks#checks)\". See the [`annotations` object](https://developer.github.com/v3/checks/runs/#annotations-object) description for details about how to use this parameter. */
  List<ReposownerrepocheckrunsOutputAnnotations> annotations = [];
/* Adds images to the output displayed in the GitHub pull request UI. See the [`images` object](https://developer.github.com/v3/checks/runs/#images-object) description for details. */
  List<ReposownerrepocheckrunsOutputImages> images = [];

  ReposownerrepocheckrunsOutput();

  @override
  String toString() {
    return 'ReposownerrepocheckrunsOutput[title=$title, summary=$summary, text=$text, annotations=$annotations, images=$images, ]';
  }

  ReposownerrepocheckrunsOutput.fromJson(Map<String, dynamic> json) {
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

  static List<ReposownerrepocheckrunsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReposownerrepocheckrunsOutput>() : json.map((value) => new ReposownerrepocheckrunsOutput.fromJson(value)).toList();
  }

  static Map<String, ReposownerrepocheckrunsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReposownerrepocheckrunsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReposownerrepocheckrunsOutput.fromJson(value));
    }
    return map;
  }
}
